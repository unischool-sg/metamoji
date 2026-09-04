.class public Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DriveMemberDialog.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;
    }
.end annotation


# instance fields
.field _adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

.field _driveId:Ljava/lang/String;

.field _groupId:Ljava/lang/String;

.field _studentCount:I

.field _teacherCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_groupId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_teacherCount:I

    .line 75
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_studentCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 73
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_groupId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 74
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_teacherCount:I

    .line 75
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_studentCount:I

    .line 83
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSd_DriveMember_DgTitle_Text:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->mTitleId:I

    .line 84
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_driveId:Ljava/lang/String;

    .line 86
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_groupId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public OnDone_UserManagementCallBack(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 378
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$4;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;Ljava/util/ArrayList;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 101
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_cabinet_drive_member:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->mViewId:I

    const/4 v0, 0x0

    .line 102
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->mDone:Z

    const/4 v1, 0x1

    .line 103
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->mClose:Z

    .line 104
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->mCancel:Z

    .line 105
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->mBack:Z

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_5

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 113
    :cond_0
    sget p2, Lcom/metamoji/noteanytime/R$id;->memberList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 114
    sget p3, Lcom/metamoji/noteanytime/R$id;->inviteBlock:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 115
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_driveId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 116
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getOwner()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 119
    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getDriveId()Ljava/lang/String;

    move-result-object v2

    .line 120
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    move v3, v0

    :cond_2
    if-eqz v3, :cond_3

    .line 129
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 132
    sget p3, Lcom/metamoji/noteanytime/R$id;->inviteButton:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    .line 133
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    sget p3, Lcom/metamoji/noteanytime/R$id;->deleteButton:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiButton;

    .line 146
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$2;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;)V

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_3
    const/16 v0, 0x8

    .line 201
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 205
    :goto_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->updateUserCount(Landroid/view/View;)V

    .line 209
    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 210
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    if-nez p3, :cond_4

    .line 211
    new-instance p3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0, v3}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;Landroid/content/Context;Z)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    .line 213
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$3;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;Landroid/view/View;Landroid/widget/ListView;)V

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    .line 258
    :cond_4
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_adapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog$DriveMemberListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_5
    :goto_2
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 271
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 265
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method sortMemberArray(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 422
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 423
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 426
    iput v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_teacherCount:I

    .line 427
    iput v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_studentCount:I

    .line 428
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 429
    const-string v5, "isOwner"

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->getAsBool(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v5

    .line 430
    const-string v6, "isTeacher"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 432
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_0

    .line 433
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 434
    iget v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_teacherCount:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_teacherCount:I

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 438
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 439
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 440
    iget v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_teacherCount:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_teacherCount:I

    goto :goto_0

    .line 442
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    iget v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_studentCount:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_studentCount:I

    goto :goto_0

    .line 448
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 451
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 452
    const-string v3, "MMJAppMonitorSortOrder"

    const-string/jumbo v4, "userid"

    invoke-static {v3, v4}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 453
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 459
    new-instance v3, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;

    invoke-direct {v3}, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;-><init>()V

    .line 460
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 461
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 464
    :cond_4
    new-instance v3, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;

    const-string v4, "name"

    invoke-direct {v3, v4}, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 466
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 470
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 472
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 474
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method updateUserCount(Landroid/view/View;)V
    .locals 4

    .line 479
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 480
    sget v1, Lcom/metamoji/noteanytime/R$id;->teacherCount:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 481
    sget v2, Lcom/metamoji/noteanytime/R$string;->ShareBar_Participants_Count:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_teacherCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    sget v1, Lcom/metamoji/noteanytime/R$id;->studentCount:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 483
    sget v1, Lcom/metamoji/noteanytime/R$string;->ShareBar_Participants_Count:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberDialog;->_studentCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
