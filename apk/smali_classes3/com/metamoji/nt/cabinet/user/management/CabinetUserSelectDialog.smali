.class public Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "CabinetUserSelectDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;
    }
.end annotation


# static fields
.field public static final DICKEY_GROUP_NAME:Ljava/lang/String; = "group"

.field public static final DICKEY_GROUP_PATH:Ljava/lang/String; = "path"

.field public static final DICKEY_GROUP_USERLIST:Ljava/lang/String; = "userList"

.field public static final DICKEY_USER_CLASSNUMBER:Ljava/lang/String; = "classNumber"

.field public static final DICKEY_USER_ISTEACHER:Ljava/lang/String; = "isTeacher"

.field public static final DICKEY_USER_LOGIN_NAME:Ljava/lang/String; = "loginName"

.field public static final DICKEY_USER_NICKNAME:Ljava/lang/String; = "nickname"

.field public static final DICKEY_USER_USERID:Ljava/lang/String; = "userId"


# instance fields
.field public afterAction:Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;

.field public alreadyAddedUserIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected groupDicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_currentGroupIndex:I

.field m_displayOnlyStudentsSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_doneBtn:Landroid/view/View;

.field m_groupDicListInitialized:Z

.field m_groupSelectBtn:Lcom/metamoji/ui/common/UiButton;

.field m_groupSelectBtnDisableCounter:I

.field m_indicator:Landroid/view/View;

.field m_listAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

.field m_searchTextTimer:Ljava/util/Timer;

.field m_searchedText:Ljava/lang/String;

.field m_selectAllBtn:Lcom/metamoji/ui/common/UiButton;

.field m_selectAllClearBtn:Lcom/metamoji/ui/common/UiButton;

.field m_selectedItemDicList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public multiSelect:Z

.field public selectDriveId:Ljava/lang/String;

.field public selectGroupId:Ljava/lang/String;

.field public studentOnly:Z

.field protected subClassed:Z

.field public titleResId:I


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 228
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    .line 217
    sget v0, Lcom/metamoji/noteanytime/R$string;->DcUserSelectDlg_Title:I

    iput v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->titleResId:I

    const/4 v0, 0x0

    .line 222
    iput-boolean v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->studentOnly:Z

    const/4 v1, 0x1

    .line 223
    iput-boolean v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->multiSelect:Z

    const/4 v2, 0x0

    .line 224
    iput-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectGroupId:Ljava/lang/String;

    .line 225
    iput-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectDriveId:Ljava/lang/String;

    .line 246
    iput-boolean v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->subClassed:Z

    .line 229
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    .line 231
    iput-boolean v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupDicListInitialized:Z

    .line 232
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    .line 233
    sget v3, Lcom/metamoji/noteanytime/R$string;->DcUserSelectDlg_Group_AllUser:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {p0, v3, v4}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 234
    iput v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_currentGroupIndex:I

    .line 235
    iput-object v4, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    .line 236
    iput-boolean v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->mV4Compatible:Z

    return-void
.end method


# virtual methods
.method addListData(Ljava/util/Map;)V
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

    .line 666
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    return-void
.end method

.method public changeSelectGroup(I)V
    .locals 2

    if-ltz p1, :cond_3

    .line 461
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt v0, p1, :cond_0

    goto :goto_0

    .line 466
    :cond_0
    iget v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_currentGroupIndex:I

    if-eq v0, p1, :cond_1

    .line 467
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    .line 469
    :cond_1
    iput p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_currentGroupIndex:I

    .line 472
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    .line 473
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupSelectBtn:Lcom/metamoji/ui/common/UiButton;

    const-string v1, "group"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 474
    const-string/jumbo v0, "userList"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    .line 478
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->clearListData()V

    .line 481
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateSelectButtonEnable()V

    .line 484
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->getUserList(Ljava/util/Map;)V

    return-void

    .line 489
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateList()V

    :cond_3
    :goto_0
    return-void
.end method

.method changeSelectGroupButtonDisable(Z)V
    .locals 3

    .line 448
    iget v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupSelectBtnDisableCounter:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    add-int/2addr v0, v2

    .line 445
    iput v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupSelectBtnDisableCounter:I

    .line 446
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupSelectBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void

    :cond_0
    sub-int/2addr v0, v2

    .line 448
    iput v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupSelectBtnDisableCounter:I

    if-gtz v0, :cond_1

    .line 450
    iput v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupSelectBtnDisableCounter:I

    .line 451
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupSelectBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p1, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method clearListData()V
    .locals 1

    .line 651
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 391
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$6;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method createUserDic(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 400
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$7;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$7;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string p1, "isTeacher"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 406
    const-string p1, "loginName"

    invoke-interface {v0, p1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method getGroupList()V
    .locals 5

    const/4 v0, 0x1

    .line 940
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->changeSelectGroupButtonDisable(Z)V

    .line 942
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$10;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V

    .line 1002
    new-instance v1, Lcom/metamoji/cs/dc/params/CsGetAllGroupsParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsGetAllGroupsParam;-><init>()V

    .line 1003
    sget-object v2, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    .line 1004
    new-instance v3, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;

    const-string v4, "executeGetAllGroupsWithParams"

    invoke-direct {v3, v4, v1, v2, v0}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;-><init>(Ljava/lang/String;Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 1005
    invoke-virtual {v3}, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader;->forceLoad()V

    return-void
.end method

.method getSelectedUserIds()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 419
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 420
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 421
    const-string/jumbo v3, "userId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 423
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method getUserList(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 829
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_indicator:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    .line 832
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->changeSelectGroupButtonDisable(Z)V

    .line 834
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$9;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;Ljava/util/Map;)V

    .line 928
    invoke-static {}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->getInstance()Lcom/metamoji/nt/cabinet/user/CabinetUserManager;

    move-result-object p1

    .line 929
    sget-object v1, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithLoginDialogIfRegisterd:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/nt/cabinet/user/CabinetUserManager;->UpdateUserInfoCacheAsync(Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;)V

    return-void
.end method

.method handleGroupSelectButtonTap()V
    .locals 2

    .line 711
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;-><init>()V

    .line 712
    iput-object p0, v0, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->userSelectDlg:Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    .line 713
    const-string v1, "CabinetGroupSlectDialog"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/cabinet/user/management/CabinetGroupSelectDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method handleSelectAllButtonTap()V
    .locals 1

    const/4 v0, 0x1

    .line 752
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectAllButtonTapInner(Z)V

    return-void
.end method

.method handleSelectAllClearButtonTap()V
    .locals 1

    const/4 v0, 0x0

    .line 759
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->selectAllButtonTapInner(Z)V

    return-void
.end method

.method isSelectedUserDic(Ljava/util/HashSet;Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 430
    const-string/jumbo v0, "userId"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 431
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method isSelectedUserDic(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 415
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 435
    invoke-virtual {p1, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 251
    iget-boolean v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->subClassed:Z

    if-eqz v0, :cond_0

    .line 253
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 257
    :cond_0
    iget v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->mViewId:I

    const/4 v1, -0x1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p3, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 263
    :goto_0
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->setModal(Z)V

    .line 265
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_user_select:I

    iput v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->mViewId:I

    if-eqz p3, :cond_2

    .line 268
    const-string/jumbo v1, "titleResId"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->titleResId:I

    .line 269
    const-string/jumbo v1, "studentOnly"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->studentOnly:Z

    .line 270
    const-string v1, "multiSelect"

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->multiSelect:Z

    .line 272
    :cond_2
    iget v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->titleResId:I

    iput v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->mTitleId:I

    .line 274
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz v0, :cond_3

    return-object p1

    .line 282
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 285
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_doneBtn:Landroid/view/View;

    .line 288
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupSelectBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_groupSelectBtn:Lcom/metamoji/ui/common/UiButton;

    .line 289
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$1;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$1;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    sget p2, Lcom/metamoji/noteanytime/R$id;->searchText:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

    if-eqz p3, :cond_4

    .line 300
    const-string/jumbo v0, "saveSearchText"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 302
    :cond_4
    iget-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

    new-instance p3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$2;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 316
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 317
    iget-object p3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    if-nez p3, :cond_5

    .line 318
    new-instance p3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$UserListAdapter;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    .line 320
    :cond_5
    iget-object p3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 323
    sget p2, Lcom/metamoji/noteanytime/R$id;->indicator:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_indicator:Landroid/view/View;

    .line 326
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_displayOnlyStudents:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_displayOnlyStudentsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 327
    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 328
    iget-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_displayOnlyStudentsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance p3, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$3;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 339
    iget-boolean p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->studentOnly:Z

    const/16 p3, 0x8

    if-eqz p2, :cond_6

    .line 340
    sget p2, Lcom/metamoji/noteanytime/R$id;->displayOnlyStudents:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 341
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 345
    :cond_6
    sget p2, Lcom/metamoji/noteanytime/R$id;->selectAllBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectAllBtn:Lcom/metamoji/ui/common/UiButton;

    .line 346
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$4;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$4;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    sget p2, Lcom/metamoji/noteanytime/R$id;->selectAllClearBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectAllClearBtn:Lcom/metamoji/ui/common/UiButton;

    .line 353
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$5;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$5;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    iget-boolean p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->multiSelect:Z

    if-nez p2, :cond_7

    .line 360
    sget p2, Lcom/metamoji/noteanytime/R$id;->selectBtnLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 361
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 365
    :cond_7
    iget p2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_currentGroupIndex:I

    invoke-virtual {p0, p2}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->changeSelectGroup(I)V

    .line 368
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateDoneBtnVisible()V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 808
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->dismiss()V

    .line 809
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->afterAction:Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;

    if-eqz p1, :cond_1

    .line 812
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    iget v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_currentGroupIndex:I

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_0

    .line 814
    const-string v0, "path"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 817
    :goto_0
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->afterAction:Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;

    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-interface {v0, v1, p1}, Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;->action(Ljava/util/List;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 378
    const-string/jumbo v0, "titleResId"

    iget v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->titleResId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 379
    const-string/jumbo v0, "studentOnly"

    iget-boolean v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->studentOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 380
    const-string v0, "multiSelect"

    iget-boolean v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->multiSelect:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 381
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "saveSearchText"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method removeListData(I)V
    .locals 1

    .line 658
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    return-void
.end method

.method selectAllButtonTapInner(Z)V
    .locals 7

    .line 769
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->getSelectedUserIds()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 770
    :goto_0
    iget-object v3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 771
    iget-object v3, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 773
    const-string/jumbo v4, "userId"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 774
    iget-object v5, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->alreadyAddedUserIdList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    :cond_0
    const/4 v5, 0x1

    if-eqz p1, :cond_1

    .line 779
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 780
    iget-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 781
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 785
    :cond_1
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 786
    iget-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 787
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    move v2, v5

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    .line 793
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 797
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateDoneBtnVisible()V

    .line 800
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateSelectButtonEnable()V

    return-void
.end method

.method setSerchTimer()V
    .locals 4

    .line 674
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 675
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 676
    iput-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    .line 680
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    .line 681
    new-instance v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog$8;-><init>(Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method updateDispUserDicList(Ljava/lang/String;)V
    .locals 14

    .line 517
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->groupDicList:Ljava/util/ArrayList;

    iget v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_currentGroupIndex:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_19

    .line 519
    const-string/jumbo v1, "userList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_19

    .line 521
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 522
    const-string v1, "MMJAppMonitorSortOrder"

    const-string/jumbo v2, "userid"

    invoke-static {v1, v2}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez p1, :cond_0

    .line 527
    iget-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextField:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 530
    :cond_0
    const-string v2, "isTeacher"

    const/4 v3, 0x0

    const-string v4, "nickname"

    if-eqz p1, :cond_11

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_5

    .line 569
    :cond_1
    iget-object v5, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto/16 :goto_a

    .line 571
    :cond_2
    iget-object v5, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    const/4 v6, 0x0

    const-string v7, "loginName"

    if-eqz v5, :cond_6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    iget-object v8, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-ltz v5, :cond_6

    .line 573
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_18

    .line 575
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    .line 576
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_18

    .line 577
    iget-object v2, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 578
    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 579
    invoke-interface {v2, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_3

    move-object v2, v6

    :cond_3
    if-eqz v3, :cond_4

    .line 583
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_5

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_5

    .line 584
    :cond_4
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->removeListData(I)V

    :cond_5
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 591
    :cond_6
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v5

    .line 592
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->clearListData()V

    .line 593
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 594
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 595
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 596
    invoke-interface {v10, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 597
    invoke-interface {v10, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    if-nez v5, :cond_8

    move-object v12, v6

    :cond_8
    if-eqz v11, :cond_9

    .line 601
    invoke-virtual {v11}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-gez v11, :cond_a

    :cond_9
    if-eqz v12, :cond_7

    .line 602
    invoke-virtual {v12}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-ltz v11, :cond_7

    .line 605
    :cond_a
    invoke-static {v10, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Boolean;

    if-eqz v11, :cond_b

    .line 607
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    goto :goto_2

    :cond_b
    move v11, v3

    :goto_2
    if-eqz v11, :cond_c

    .line 610
    invoke-interface {v8, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 612
    :cond_c
    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_d
    if-eqz v1, :cond_e

    .line 622
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;-><init>()V

    goto :goto_3

    .line 624
    :cond_e
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;

    invoke-direct {v0, v4}, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;-><init>(Ljava/lang/String;)V

    .line 626
    :goto_3
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_displayOnlyStudentsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_10

    iget-boolean v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->studentOnly:Z

    if-eqz v1, :cond_f

    goto :goto_4

    .line 628
    :cond_f
    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 629
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v8}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 631
    :cond_10
    :goto_4
    invoke-static {v9, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 632
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    goto :goto_a

    .line 533
    :cond_11
    :goto_5
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->clearListData()V

    .line 534
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 535
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 536
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    .line 538
    invoke-static {v7, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    if-eqz v8, :cond_12

    .line 540
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    goto :goto_7

    :cond_12
    move v8, v3

    :goto_7
    if-eqz v8, :cond_13

    .line 543
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 545
    :cond_13
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_14
    if-eqz v1, :cond_15

    .line 555
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;-><init>()V

    goto :goto_8

    .line 557
    :cond_15
    new-instance v0, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;

    invoke-direct {v0, v4}, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;-><init>(Ljava/lang/String;)V

    .line 559
    :goto_8
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_displayOnlyStudentsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v1

    if-nez v1, :cond_17

    iget-boolean v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->studentOnly:Z

    if-eqz v1, :cond_16

    goto :goto_9

    .line 561
    :cond_16
    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 562
    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v5}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 564
    :cond_17
    :goto_9
    invoke-static {v6, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 565
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v6}, Landroid/widget/ArrayAdapter;->addAll(Ljava/util/Collection;)V

    .line 638
    :cond_18
    :goto_a
    iput-object p1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchedText:Ljava/lang/String;

    .line 643
    :cond_19
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateSelectButtonEnable()V

    return-void
.end method

.method updateDoneBtnVisible()V
    .locals 2

    .line 704
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_doneBtn:Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectedItemDicList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method updateList()V
    .locals 1

    const/4 v0, 0x0

    .line 498
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateUserList(Ljava/lang/String;)V

    return-void
.end method

.method updateSelectButtonEnable()V
    .locals 6

    .line 724
    invoke-virtual {p0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->getSelectedUserIds()Ljava/util/HashSet;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 725
    :goto_0
    iget-object v4, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 726
    iget-object v4, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_listAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 728
    const-string/jumbo v5, "userId"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 729
    iget-object v5, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->alreadyAddedUserIdList:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_2

    .line 732
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->isSelectedUserId(Ljava/util/HashSet;Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    move v2, v5

    goto :goto_1

    :cond_1
    move v3, v5

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 744
    :cond_3
    :goto_3
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectAllBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 745
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_selectAllClearBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method updateUserList(Ljava/lang/String;)V
    .locals 1

    .line 502
    iget-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 503
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->m_searchTextTimer:Ljava/util/Timer;

    .line 508
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->updateDispUserDicList(Ljava/lang/String;)V

    return-void
.end method
