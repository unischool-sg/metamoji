.class public Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "NsCollaboMemberSettingsDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;,
        Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;,
        Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;,
        Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;
    }
.end annotation


# instance fields
.field m_addUserBtn:Lcom/metamoji/ui/common/UiButton;

.field public m_afterActionForSchool:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;

.field public m_alreadyClassNameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_changeClassBtn:Lcom/metamoji/ui/common/UiButton;

.field m_classNameText:Landroid/widget/EditText;

.field public m_companyId:Ljava/lang/String;

.field public m_createCollaboDlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

.field m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

.field m_deleteItemArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;",
            ">;"
        }
    .end annotation
.end field

.field public m_documentSettingsDlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

.field public m_driveId:Ljava/lang/String;

.field public m_email:Ljava/lang/String;

.field m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_groupIdSpinnerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$GroupItemData;",
            ">;"
        }
    .end annotation
.end field

.field public m_groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_groupingBtn:Lcom/metamoji/ui/common/UiButton;

.field m_importClassBtn:Lcom/metamoji/ui/common/UiButton;

.field m_manageGroupBtn:Lcom/metamoji/ui/common/UiButton;

.field m_memberCountLabel:Landroid/widget/TextView;

.field m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

.field m_memberListView:Landroid/widget/ListView;

.field public m_myAddress:Ljava/lang/String;

.field public m_myUserId:Ljava/lang/String;

.field public m_ownerLoginName:Ljava/lang/String;

.field public m_ownerNickName:Ljava/lang/String;

.field public m_ownerUserId:Ljava/lang/String;

.field public m_password:Ljava/lang/String;

.field public m_presenterArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public m_prevClassName:Ljava/lang/String;

.field m_processOnCreate:Z

.field public m_qwd:Ljava/lang/String;

.field public m_roomId:Ljava/lang/String;

.field public m_roomType:Ljava/lang/String;

.field public m_speakerArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public m_userClassNumberAndLoginNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field m_userManage:Lcom/metamoji/nt/cabinet/user/management/UserManagement;

.field public m_visitorArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$EmDnTMcHlWhMsBA6zA-Y91REqTc(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Lcom/metamoji/forSchool/ui/ScGroupingDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->lambda$handleGroupingButtonTap$1(Lcom/metamoji/forSchool/ui/ScGroupingDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetClassNumber(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getClassNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetLoginName(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getLoginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleAddMemberButtonTap(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleAddMemberButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangeClassButtonTap(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleChangeClassButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleChangedGroup(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleChangedGroup(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDeleteButtonTap(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleDeleteButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleGroupingButtonTap(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleGroupingButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleImportClassButtonTap(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleImportClassButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleManageGroupButtonTap(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleManageGroupButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMemberListViewSelectionChanged(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleMemberListViewSelectionChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msortUserForGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->sortUserForGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 387
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 377
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_processOnCreate:Z

    const/4 v0, 0x0

    .line 379
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    .line 380
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_driveId:Ljava/lang/String;

    .line 389
    const-string v0, "casual"

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomType:Ljava/lang/String;

    .line 393
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    return-void
.end method

.method private getBelogGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)I
    .locals 3

    .line 1228
    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    const-string v1, "TEACHER"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x1

    return p1

    .line 1231
    :cond_0
    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    .line 1232
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1233
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1235
    const-string v2, "group-id"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 1236
    iget-object v2, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const p1, 0x7fffffff

    return p1
.end method

.method private getBelongGroupId(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 940
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 941
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 942
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 944
    const-string/jumbo v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 946
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 947
    check-cast v3, Ljava/util/Map;

    .line 948
    const-string/jumbo v4, "user-id"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 949
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 950
    const-string p1, "group-id"

    invoke-static {v1, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 957
    :cond_2
    const-string p1, ""

    return-object p1
.end method

.method private getClassNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 962
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 965
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 966
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 967
    const-string v1, "classNumber"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 975
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 976
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 977
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 979
    const-string/jumbo v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 981
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 982
    check-cast v2, Ljava/util/Map;

    .line 983
    const-string/jumbo v3, "user-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 984
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 985
    const-string p1, "class-number"

    invoke-static {v2, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 992
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private getLoginName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 998
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1001
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 1003
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1005
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_userClassNumberAndLoginNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 1006
    const-string v1, "loginName"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetStringValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 1018
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1020
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1023
    const-string/jumbo v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_1

    .line 1026
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1028
    check-cast v2, Ljava/util/Map;

    .line 1029
    const-string/jumbo v3, "user-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 1030
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1032
    const-string p1, "login-name"

    invoke-static {v2, p1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 1039
    :cond_3
    const-string p1, ""

    return-object p1
.end method

.method private handleAddMemberButtonTap()V
    .locals 4

    .line 721
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 724
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 725
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 726
    iget-boolean v3, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isDcUser:Z

    .line 727
    iget-object v2, v2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->userId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 728
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 729
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 733
    :cond_1
    new-instance v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-direct {v1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;-><init>()V

    .line 734
    iput-object v0, v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->alreadyAddedUserIdList:Ljava/util/ArrayList;

    .line 735
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$8;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    iput-object v0, v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->afterAction:Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;

    .line 778
    const-string v0, "CabinetUserSlectDialog"

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleChangeClassButtonTap()V
    .locals 7

    .line 1360
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassListDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog;-><init>()V

    .line 1361
    sget-object v1, Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;->SelectMode:Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;

    new-instance v6, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;

    invoke-direct {v6, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$11;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->initDialog(Lcom/metamoji/forSchool/ui/ScClassListDialog$Mode;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/forSchool/ui/ScClassListDialog$IScClassListDialogAfterAction;)V

    .line 1426
    const-string v1, "ScClassListDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScClassListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleChangedGroup(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1342
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 1343
    iput-object p2, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    .line 1345
    invoke-direct {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->sortUserForGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V

    goto :goto_0

    .line 1347
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    goto :goto_1

    .line 1349
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1351
    :goto_1
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleDeleteButtonTap()V
    .locals 3

    .line 704
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 705
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 707
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 709
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->handleMemberListViewSelectionChanged()V

    .line 712
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateUserCount()V

    return-void
.end method

.method private handleGroupingButtonTap()V
    .locals 2

    .line 1248
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateLocalData()Ljava/util/ArrayList;

    .line 1250
    new-instance v0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;-><init>()V

    .line 1251
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    .line 1252
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 1289
    const-string v1, "ScGroupingDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleImportClassButtonTap()V
    .locals 2

    .line 1431
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateLocalData()Ljava/util/ArrayList;

    .line 1433
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScClassImportDialog;-><init>()V

    .line 1434
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$12;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$12;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScClassImportDialog$IScClassImportDialogAfterAction;

    .line 1445
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_prevClassName:Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_prevClassName:Ljava/lang/String;

    .line 1446
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->m_groupList:Ljava/util/List;

    .line 1448
    const-string v1, "ScClassImportDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScClassImportDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleManageGroupButtonTap()V
    .locals 2

    .line 1297
    new-instance v0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;-><init>()V

    const/4 v1, 0x1

    .line 1298
    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->initDialog(Z)V

    .line 1299
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_groupList:Ljava/util/List;

    .line 1300
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;

    invoke-direct {v1, p0, v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$10;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Lcom/metamoji/forSchool/ui/ScGroupListDialog;)V

    iput-object v1, v0, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->m_afterAction:Lcom/metamoji/forSchool/ui/ScGroupListDialog$IScGroupListDialogAfterAction;

    .line 1338
    const-string v1, "ScGroupListDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/forSchool/ui/ScGroupListDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleMemberListViewSelectionChanged()V
    .locals 2

    .line 696
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 697
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private synthetic lambda$handleGroupingButtonTap$1(Lcom/metamoji/forSchool/ui/ScGroupingDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    .line 1254
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_1

    .line 1255
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p3, p2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 1256
    iget-boolean p4, p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isOwner:Z

    if-nez p4, :cond_0

    .line 1258
    iget-object p4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p4, p3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->remove(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 1263
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateUserCount()V

    .line 1265
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    .line 1266
    iget-object p1, p1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1267
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 1268
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 1271
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerUserId:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/metamoji/forSchool/ScSchoolUtils;->getMemberDicListFromGroupList(Ljava/util/List;Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    .line 1272
    const-string/jumbo p2, "teacher"

    invoke-static {p1, p2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 1273
    const-string p3, "member"

    invoke-static {p1, p3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 1275
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 1276
    invoke-virtual {p0, p3, p4}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemWithDic(Ljava/util/Map;I)V

    goto :goto_1

    .line 1279
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map;

    const/4 p3, 0x2

    .line 1280
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemWithDic(Ljava/util/Map;I)V

    goto :goto_2

    .line 1284
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListView:Landroid/widget/ListView;

    invoke-virtual {p1, p4}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    .line 1286
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 460
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "actionId = "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " event = "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    if-nez p2, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    move-object p1, p2

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "onEditorAction"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz p2, :cond_1

    .line 461
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    const/16 p1, 0x42

    if-ne p0, p1, :cond_1

    .line 462
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private sortUserForGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V
    .locals 14

    .line 1046
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v0

    .line 1047
    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getBelogGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)I

    move-result v1

    .line 1048
    iget-object v2, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->nickName:Ljava/lang/String;

    .line 1049
    iget-object v3, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->classNumber:Ljava/lang/String;

    .line 1050
    iget-object v4, p1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->loginName:Ljava/lang/String;

    .line 1052
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 1053
    const-string v5, "MMJAppMonitorSortOrder"

    const-string/jumbo v6, "userid"

    invoke-static {v5, v6}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1054
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    move v6, v0

    :goto_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-lez v6, :cond_d

    .line 1059
    iget-object v9, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    add-int/lit8 v10, v6, -0x1

    invoke-virtual {v9, v10}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 1060
    invoke-direct {p0, v9}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getBelogGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)I

    move-result v10

    if-ge v10, v1, :cond_0

    goto/16 :goto_5

    :cond_0
    if-ne v10, v1, :cond_c

    .line 1065
    iget-object v10, v9, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->nickName:Ljava/lang/String;

    .line 1066
    iget-object v11, v9, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->classNumber:Ljava/lang/String;

    .line 1067
    iget-object v9, v9, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->loginName:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 1069
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1

    goto :goto_1

    .line 1095
    :cond_1
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    if-eqz v11, :cond_c

    .line 1098
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_2

    goto :goto_4

    .line 1102
    :cond_2
    invoke-static {v11}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 1104
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-static {v11}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    if-lez v9, :cond_c

    goto :goto_5

    :cond_3
    if-eqz v11, :cond_c

    .line 1114
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_4

    goto :goto_4

    .line 1118
    :cond_4
    invoke-static {v11}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_5

    .line 1122
    :cond_5
    invoke-virtual {v3, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_c

    goto :goto_5

    :cond_6
    :goto_1
    if-eqz v11, :cond_7

    .line 1071
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_d

    :cond_7
    if-eqz v9, :cond_9

    .line 1073
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_8

    goto :goto_2

    :cond_8
    move v11, v8

    goto :goto_3

    :cond_9
    :goto_2
    move v11, v7

    :goto_3
    if-nez v5, :cond_a

    move v11, v7

    :cond_a
    if-eqz v11, :cond_b

    .line 1082
    invoke-virtual {v4, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_c

    goto :goto_5

    .line 1086
    :cond_b
    invoke-virtual {v2, v10}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_c

    goto :goto_5

    :cond_c
    :goto_4
    add-int/lit8 v6, v6, -0x1

    goto/16 :goto_0

    :cond_d
    :goto_5
    if-ne v6, v0, :cond_1b

    .line 1134
    :goto_6
    iget-object v9, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v9}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result v9

    sub-int/2addr v9, v8

    if-ge v6, v9, :cond_1b

    .line 1135
    iget-object v9, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v9, v10}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 1136
    invoke-direct {p0, v9}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getBelogGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)I

    move-result v11

    if-ge v1, v11, :cond_e

    goto/16 :goto_b

    :cond_e
    if-ne v1, v11, :cond_1a

    .line 1141
    iget-object v11, v9, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->nickName:Ljava/lang/String;

    .line 1142
    iget-object v12, v9, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->classNumber:Ljava/lang/String;

    .line 1143
    iget-object v9, v9, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->loginName:Ljava/lang/String;

    if-eqz v3, :cond_14

    .line 1145
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_f

    goto :goto_7

    .line 1170
    :cond_f
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_11

    if-eqz v12, :cond_1b

    .line 1173
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_10

    goto/16 :goto_b

    .line 1178
    :cond_10
    invoke-static {v12}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1b

    .line 1180
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-static {v12}, Lcom/metamoji/forSchool/ScSchoolUtils;->getBigDecimal(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/math/BigDecimal;->compareTo(Ljava/math/BigDecimal;)I

    move-result v9

    if-gez v9, :cond_1a

    goto :goto_b

    :cond_11
    if-eqz v12, :cond_1b

    .line 1191
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_12

    goto :goto_b

    .line 1196
    :cond_12
    invoke-static {v12}, Lcom/metamoji/forSchool/ScSchoolUtils;->isBigDecimal(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_13

    goto :goto_a

    .line 1200
    :cond_13
    invoke-virtual {v3, v12}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_1a

    goto :goto_b

    :cond_14
    :goto_7
    if-eqz v12, :cond_15

    .line 1147
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_1a

    :cond_15
    if-eqz v4, :cond_17

    .line 1149
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_16

    goto :goto_8

    :cond_16
    move v12, v8

    goto :goto_9

    :cond_17
    :goto_8
    move v12, v7

    :goto_9
    if-nez v5, :cond_18

    move v12, v7

    :cond_18
    if-eqz v12, :cond_19

    .line 1158
    invoke-virtual {v4, v9}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_1a

    goto :goto_b

    .line 1162
    :cond_19
    invoke-virtual {v2, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_1a

    goto :goto_b

    :cond_1a
    :goto_a
    move v6, v10

    goto/16 :goto_6

    :cond_1b
    :goto_b
    if-eq v0, v6, :cond_1c

    .line 1213
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->remove(Ljava/lang/Object;)V

    .line 1214
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v0, p1, v6}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->insert(Ljava/lang/Object;I)V

    .line 1215
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_processOnCreate:Z

    if-nez p1, :cond_1c

    .line 1217
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListView:Landroid/widget/ListView;

    invoke-virtual {p1, v6}, Landroid/widget/ListView;->smoothScrollToPosition(I)V

    :cond_1c
    return-void
.end method


# virtual methods
.method addMemberItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 636
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    .line 639
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    move-object v0, p3

    goto :goto_0

    :cond_0
    sget v1, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdMemberNoNickname:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 643
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerUserId:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 644
    sget v1, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Address_User_Format:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 646
    const-string v1, "%@"

    const-string v2, "%s"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 647
    filled-new-array {p5}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    move-object v0, p5

    :goto_0
    if-nez p6, :cond_3

    .line 657
    const-string p9, "TEACHER"

    goto :goto_1

    :cond_3
    if-nez p9, :cond_4

    .line 662
    const-string p9, ""

    .line 666
    :cond_4
    :goto_1
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    .line 667
    iput-object v0, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->labelText:Ljava/lang/String;

    .line 668
    iput-boolean p1, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isDcUser:Z

    .line 669
    iput-object p5, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->address:Ljava/lang/String;

    .line 670
    iput p6, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->role:I

    .line 671
    iput-object p2, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->userId:Ljava/lang/String;

    .line 672
    iput-object p3, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->nickName:Ljava/lang/String;

    .line 673
    iput-boolean p7, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isOwner:Z

    .line 674
    iput-boolean p8, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isMyself:Z

    .line 675
    iput-object p9, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    .line 676
    iput-object p10, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->classNumber:Ljava/lang/String;

    if-eqz p4, :cond_5

    goto :goto_2

    .line 677
    :cond_5
    invoke-direct {p0, p2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getLoginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    :goto_2
    iput-object p4, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->loginName:Ljava/lang/String;

    .line 678
    iput-object p0, v1, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->parentDlg:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;

    .line 679
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p1, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->add(Ljava/lang/Object;)V

    .line 682
    invoke-direct {p0, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->sortUserForGroupNo(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;)V

    .line 685
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateUserCount()V

    return-void
.end method

.method addMemberItemByAddress(Ljava/lang/String;IZZ)V
    .locals 12

    if-eqz p1, :cond_1

    .line 627
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    .line 630
    const-string v11, ""

    const/4 v2, 0x0

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    move-object v1, p0

    move-object v6, p1

    move v7, p2

    move v8, p3

    move/from16 v9, p4

    invoke-virtual/range {v1 .. v11}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method addMemberItemByUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V
    .locals 9

    const/4 v7, 0x0

    .line 616
    const-string v8, ""

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v8}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemByUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method addMemberItemByUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .locals 11

    if-eqz p1, :cond_2

    .line 620
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p2, :cond_1

    goto :goto_0

    .line 623
    :cond_1
    const-string p2, ""

    :goto_0
    move-object v3, p2

    const-string v5, ""

    const/4 v1, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v4, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItem(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method addMemberItemWithDic(Ljava/util/Map;I)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;I)V"
        }
    .end annotation

    .line 568
    const-string/jumbo v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 570
    const-string v1, "dcUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    .line 573
    const-string/jumbo v0, "userId"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/lang/String;

    if-nez p2, :cond_1

    .line 576
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myUserId:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v10, v2

    goto :goto_1

    :cond_1
    move v10, v3

    .line 578
    :goto_1
    const-string v0, "nickname"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Ljava/lang/String;

    if-nez p2, :cond_2

    .line 580
    const-string p1, "TEACHER"

    goto :goto_2

    :cond_2
    invoke-direct {p0, v5}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getBelongGroupId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_2
    move-object v11, p1

    .line 581
    invoke-direct {p0, v5}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getClassNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 582
    invoke-direct {p0, v5}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getLoginName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x0

    move-object v4, p0

    move v8, p2

    .line 583
    invoke-virtual/range {v4 .. v12}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemByUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3
    move-object v4, p0

    move v8, p2

    .line 585
    const-string p2, "mailUser"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 588
    const-string p2, "address"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-nez v8, :cond_4

    .line 591
    iget-object p2, v4, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myAddress:Ljava/lang/String;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    .line 593
    :goto_3
    invoke-virtual {p0, p1, v8, v3, v2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemByAddress(Ljava/lang/String;IZZ)V

    :cond_5
    return-void
.end method

.method public getIndexForGroupId(Ljava/lang/String;)I
    .locals 6

    .line 1454
    const-string v0, "TEACHER"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    return v2

    .line 1458
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    return v2

    .line 1464
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1465
    check-cast v4, Ljava/util/Map;

    .line 1466
    const-string v5, "group-id"

    invoke-static {v4, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1467
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    .line 1468
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    goto :goto_0

    .line 1471
    :cond_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v3

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 400
    iget v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->mViewId:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    if-eqz p3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 405
    :goto_0
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_processOnCreate:Z

    .line 407
    invoke-virtual {p0, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->setModal(Z)V

    .line 409
    sget v4, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_member_settings:I

    iput v4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->mViewId:I

    .line 411
    sget v4, Lcom/metamoji/noteanytime/R$string;->ManageParticipantsDlg_Role_Title:I

    iput v4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->mTitleId:I

    .line 413
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_afterActionForSchool:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;

    if-eqz v4, :cond_2

    .line 414
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_prevClassName:Ljava/lang/String;

    if-nez v4, :cond_1

    sget v4, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Add_ClassInfo:I

    goto :goto_1

    :cond_1
    sget v4, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Edit_ClassInfo:I

    :goto_1
    iput v4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->mTitleId:I

    .line 417
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->mV4Compatible:Z

    .line 418
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez v0, :cond_12

    if-nez p1, :cond_3

    goto/16 :goto_a

    .line 427
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 428
    sget p2, Lcom/metamoji/noteanytime/R$id;->containerLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 429
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/high16 v0, 0x44160000    # 600.0f

    .line 430
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/high16 v0, 0x43e10000    # 450.0f

    .line 432
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v0, 0x44098000    # 550.0f

    .line 433
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 435
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlgHeaderLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 437
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 438
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 439
    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->pxToDip(F)F

    move-result v3

    float-to-int v3, v3

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v3, v0

    .line 440
    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v3, v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 442
    :cond_4
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 444
    :cond_5
    sget p2, Lcom/metamoji/noteanytime/R$id;->containerLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 445
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    .line 446
    iput v3, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 447
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 451
    :goto_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->schoolClassNamePanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 452
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_afterActionForSchool:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;

    const/16 v0, 0x8

    if-eqz p3, :cond_6

    move p3, v2

    goto :goto_3

    :cond_6
    move p3, v0

    :goto_3
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 453
    sget p2, Lcom/metamoji/noteanytime/R$id;->schoolHeaderButtonPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 454
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 455
    sget p2, Lcom/metamoji/noteanytime/R$id;->schoolFooterButtonPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 456
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_afterActionForSchool:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;

    if-nez p3, :cond_7

    move v0, v2

    :cond_7
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 458
    sget p2, Lcom/metamoji/noteanytime/R$id;->classNameText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_classNameText:Landroid/widget/EditText;

    .line 459
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {p3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 469
    sget p2, Lcom/metamoji/noteanytime/R$id;->addMemberBtnForSchool:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_addUserBtn:Lcom/metamoji/ui/common/UiButton;

    .line 470
    sget p2, Lcom/metamoji/noteanytime/R$id;->deleteBtnForSchool:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

    .line 471
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupingBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupingBtn:Lcom/metamoji/ui/common/UiButton;

    .line 472
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    sget p2, Lcom/metamoji/noteanytime/R$id;->manageGroupBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_manageGroupBtn:Lcom/metamoji/ui/common/UiButton;

    .line 479
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 485
    sget p2, Lcom/metamoji/noteanytime/R$id;->changeClassBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_changeClassBtn:Lcom/metamoji/ui/common/UiButton;

    .line 486
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    sget p2, Lcom/metamoji/noteanytime/R$id;->importClassBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_importClassBtn:Lcom/metamoji/ui/common/UiButton;

    .line 493
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$4;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$4;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 500
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;

    if-nez p2, :cond_8

    .line 501
    new-instance p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$5;

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    const v0, 0x1090008

    invoke-direct {p2, p0, p3, v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$5;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerAdapter:Landroid/widget/ArrayAdapter;

    .line 511
    sget p3, Lcom/metamoji/noteanytime/R$layout;->school_spinner_drop_down_item:I

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 513
    :cond_8
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    if-nez p2, :cond_9

    .line 514
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupIdSpinnerList:Ljava/util/List;

    .line 517
    :cond_9
    sget p2, Lcom/metamoji/noteanytime/R$id;->memberList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListView:Landroid/widget/ListView;

    .line 518
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    if-nez p2, :cond_a

    .line 519
    new-instance p2, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    .line 521
    :cond_a
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListView:Landroid/widget/ListView;

    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 523
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_addUserBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$6;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$6;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 529
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$7;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$7;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 535
    sget p2, Lcom/metamoji/noteanytime/R$id;->memberCountLabel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberCountLabel:Landroid/widget/TextView;

    .line 537
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {p2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result p2

    if-lez p2, :cond_b

    .line 539
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateUserCount()V

    move-object v3, p0

    goto :goto_9

    .line 543
    :cond_b
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerUserId:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 544
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerNickName:Ljava/lang/String;

    iget-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_ownerLoginName:Ljava/lang/String;

    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_myUserId:Ljava/lang/String;

    if-eqz p2, :cond_c

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    move v9, v1

    goto :goto_4

    :cond_c
    move v9, v2

    :goto_4
    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    invoke-virtual/range {v3 .. v9}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemByUserId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZ)V

    goto :goto_5

    :cond_d
    move-object v3, p0

    .line 547
    :goto_5
    iget-object p2, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 548
    invoke-virtual {p0, p3, v2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemWithDic(Ljava/util/Map;I)V

    goto :goto_6

    .line 550
    :cond_e
    iget-object p2, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_f

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 551
    invoke-virtual {p0, p3, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemWithDic(Ljava/util/Map;I)V

    goto :goto_7

    .line 553
    :cond_f
    iget-object p2, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_8
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_10

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    const/4 v0, 0x2

    .line 554
    invoke-virtual {p0, p3, v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->addMemberItemWithDic(Ljava/util/Map;I)V

    goto :goto_8

    .line 559
    :cond_10
    :goto_9
    iget-object p2, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_prevClassName:Ljava/lang/String;

    if-eqz p2, :cond_11

    .line 560
    iget-object p3, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_classNameText:Landroid/widget/EditText;

    invoke-virtual {p3, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 563
    :cond_11
    iput-boolean v2, v3, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_processOnCreate:Z

    return-object p1

    :cond_12
    :goto_a
    move-object v3, p0

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 4

    .line 787
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->updateLocalData()Ljava/util/ArrayList;

    .line 790
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_afterActionForSchool:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;

    if-eqz p1, :cond_4

    .line 792
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_classNameText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 793
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 798
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_alreadyClassNameList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 799
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 800
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    sget p1, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Msg_Error_Exist_ClassName:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 807
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->dismiss()V

    .line 808
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_afterActionForSchool:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v0, p1, v1}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$INsCollaboMemberSettingsDialogAfterActionForSchool;->action(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 794
    :cond_3
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Msg_Error_No_ClassName:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 810
    :cond_4
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_createCollaboDlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    if-eqz p1, :cond_5

    .line 812
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomType:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_roomType:Ljava/lang/String;

    .line 814
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_createCollaboDlg:Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/ns/ui/NsCreateCollaboDocumentDialogEx;->m_groupList:Ljava/util/List;

    .line 815
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->dismiss()V

    return-void

    .line 816
    :cond_5
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_documentSettingsDlg:Lcom/metamoji/ui/dialog/DocumentSettings2;

    if-eqz p1, :cond_6

    .line 818
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomType:Ljava/lang/String;

    .line 820
    const-string v1, "formal"

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomType:Ljava/lang/String;

    .line 821
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/metamoji/ui/dialog/DocumentSettings2;->setShareTempateSetting(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 822
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->dismiss()V

    return-void

    .line 825
    :cond_6
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 826
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->roomId:Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_email:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->email:Ljava/lang/String;

    .line 828
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_password:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->password:Ljava/lang/String;

    .line 829
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_qwd:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->qwd:Ljava/lang/String;

    .line 830
    invoke-virtual {p1, p0}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->setDialog(Lcom/metamoji/lib/dialog/UtDialog;)V

    .line 831
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_roomType:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->roomType:Ljava/lang/String;

    .line 832
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalPresenterArray:Ljava/util/List;

    .line 833
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalSpeakerArray:Ljava/util/List;

    .line 834
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->formalVisitorArray:Ljava/util/List;

    .line 836
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_companyId:Ljava/lang/String;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->companyId:Ljava/lang/String;

    .line 838
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->groupList:Ljava/util/List;

    .line 839
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomInfo;->doInBackground()V

    return-void
.end method

.method protected updateLocalData()Ljava/util/ArrayList;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 850
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const-string v8, "group-id"

    const-string/jumbo v9, "user-list"

    const/4 v10, 0x1

    if-eqz v4, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 851
    check-cast v4, Ljava/util/Map;

    .line 852
    invoke-static {v4, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_1

    .line 854
    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 857
    :cond_1
    invoke-static {v4, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 858
    const-string v5, "TEACHER"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v10

    goto :goto_0

    :cond_2
    if-nez v3, :cond_3

    .line 863
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDicForTeacher()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 867
    :cond_3
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 868
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 869
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 870
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    move v12, v2

    .line 871
    :goto_1
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result v0

    if-ge v12, v0, :cond_b

    .line 872
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v0, v12}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;

    .line 874
    iget-object v2, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->groupId:Ljava/lang/String;

    .line 875
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 876
    check-cast v4, Ljava/util/Map;

    .line 877
    invoke-static {v4, v8}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 878
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 879
    invoke-static {v4, v9}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-eqz v4, :cond_4

    .line 881
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 882
    const-string/jumbo v3, "user-id"

    iget-object v5, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->userId:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 883
    const-string/jumbo v3, "user-name"

    iget-object v5, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->nickName:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 884
    const-string v3, "class-number"

    iget-object v5, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->classNumber:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const-string v3, "login-name"

    iget-object v5, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->loginName:Ljava/lang/String;

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 891
    :cond_5
    iget-boolean v2, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isDcUser:Z

    .line 892
    iget-object v3, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->address:Ljava/lang/String;

    .line 893
    iget-object v4, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->userId:Ljava/lang/String;

    .line 894
    iget-object v5, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->nickName:Ljava/lang/String;

    .line 895
    iget-object v6, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->classNumber:Ljava/lang/String;

    .line 896
    iget-object v7, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->loginName:Ljava/lang/String;

    .line 897
    iget v13, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->role:I

    .line 898
    iget-boolean v0, v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberItemData;->isOwner:Z

    if-eqz v0, :cond_6

    goto :goto_2

    .line 905
    :cond_6
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$9;-><init>(Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_7

    if-eqz v3, :cond_7

    .line 914
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_7

    .line 915
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v13, :cond_a

    if-eq v13, v10, :cond_9

    const/4 v2, 0x2

    if-eq v13, v2, :cond_8

    goto :goto_2

    .line 928
    :cond_8
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_visitorArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 924
    :cond_9
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_speakerArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 920
    :cond_a
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_presenterArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_b
    return-object v11
.end method

.method updateUserCount()V
    .locals 3

    .line 603
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$string;->ShareBar_Participants_Count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 604
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberCountLabel:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog;->m_memberListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboMemberSettingsDialog$MemberListAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
