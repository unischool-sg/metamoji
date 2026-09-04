.class public Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "DriveMemberAdminDialog.java"

# interfaces
.implements Lcom/metamoji/nt/cabinet/user/management/IUserManagementCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;
    }
.end annotation


# instance fields
.field m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

.field m_deleteItemArray:Ljava/util/ArrayList;
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

.field public m_driveId:Ljava/lang/String;

.field m_groupId:Ljava/lang/String;

.field m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

.field m_studentCount:I

.field m_studentCountText:Landroid/widget/TextView;

.field m_teacherCount:I

.field m_teacherCountText:Landroid/widget/TextView;

.field m_userManage:Lcom/metamoji/nt/cabinet/user/management/UserManagement;


# direct methods
.method static bridge synthetic -$$Nest$mhandleAddMemberButtonTap(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->handleAddMemberButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleDeleteButtonTap(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->handleDeleteButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleMemberListViewSelectionChanged(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->handleMemberListViewSelectionChanged()V

    return-void
.end method

.method static bridge synthetic -$$Nest$minviteToDriveWithUserIdList(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->inviteToDriveWithUserIdList(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 265
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    .line 258
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    .line 266
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSd_DriveMember_DgTitle_Text:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->mTitleId:I

    .line 267
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/UserManagement;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_userManage:Lcom/metamoji/nt/cabinet/user/management/UserManagement;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 276
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    .line 258
    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    .line 278
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSd_DriveMember_DgTitle_Text:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->mTitleId:I

    .line 279
    new-instance v0, Lcom/metamoji/nt/cabinet/user/management/UserManagement;

    invoke-direct {v0}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_userManage:Lcom/metamoji/nt/cabinet/user/management/UserManagement;

    .line 280
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_driveId:Ljava/lang/String;

    .line 281
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    .line 283
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_groupId:Ljava/lang/String;

    return-void
.end method

.method static ctrlIdToRole(I)I
    .locals 1

    .line 235
    sget v0, Lcom/metamoji/noteanytime/R$id;->typeRadioGroup_Admin:I

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handleAddMemberButtonTap()V
    .locals 6

    .line 523
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 524
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 526
    iget-object v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 527
    const-string/jumbo v4, "status"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 529
    const-string v4, "id"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 533
    :cond_1
    new-instance v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;

    invoke-direct {v1}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;-><init>()V

    .line 534
    iput-object v0, v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->alreadyAddedUserIdList:Ljava/util/ArrayList;

    .line 535
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$5;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$5;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V

    iput-object v0, v1, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->afterAction:Lcom/metamoji/nt/cabinet/user/management/ICabinetUserSelectDialogAfterAction;

    .line 541
    const-string v0, "CabinetUserSlectDialog"

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/cabinet/user/management/CabinetUserSelectDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleDeleteButtonTap()V
    .locals 4

    .line 450
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 452
    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_SdAddMemberDlgCancelInviteMsgConfirm:I

    .line 453
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 454
    const-string/jumbo v3, "status"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 455
    sget v0, Lcom/metamoji/noteanytime/R$string;->CabinetSd_DriveMember_DgMsg_RemoveFromMemberConfirm:I

    .line 459
    :cond_1
    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$4;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    :cond_2
    return-void
.end method

.method private handleMemberListViewSelectionChanged()V
    .locals 2

    .line 442
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteItemArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method private inviteToDriveWithUserIdList(Ljava/util/List;)V
    .locals 2
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

    if-eqz p1, :cond_1

    .line 565
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 571
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 574
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$6;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method static roleToCtrlId(I)I
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 230
    sget p0, Lcom/metamoji/noteanytime/R$id;->typeRadioGroup_Editor:I

    return p0

    .line 227
    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$id;->typeRadioGroup_Admin:I

    return p0
.end method


# virtual methods
.method public OnDone_UserManagementCallBack(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 3
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

    .line 682
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 688
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_userManage:Lcom/metamoji/nt/cabinet/user/management/UserManagement;

    const-string v2, ""

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/nt/cabinet/user/management/UserManagement;->addUserManagementHistory(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 692
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$8;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Ljava/util/ArrayList;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->runOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method handleRoleChanged(Landroid/widget/RadioGroup;ILjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RadioGroup;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 625
    const-string/jumbo v0, "type"

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 626
    invoke-static {p2}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->ctrlIdToRole(I)I

    move-result v1

    if-ne v1, v0, :cond_0

    return-void

    .line 631
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->invokeWaitScreenNow()V

    .line 634
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;

    invoke-direct {v1, p0, p3, p2, p1}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$7;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Ljava/util/Map;ILandroid/widget/RadioGroup;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    const/4 v0, 0x0

    .line 291
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->mDone:Z

    const/4 v1, 0x1

    .line 292
    iput-boolean v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->mClose:Z

    .line 293
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->mCancel:Z

    .line 294
    iput-boolean v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->mBack:Z

    .line 296
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_drive_member_admin:I

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->mViewId:I

    .line 297
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    return-object p1

    .line 306
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 307
    sget p2, Lcom/metamoji/noteanytime/R$id;->containerLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 308
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p3

    const/high16 v0, 0x44160000    # 600.0f

    .line 309
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v0, 0x44098000    # 550.0f

    .line 310
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 312
    sget v0, Lcom/metamoji/noteanytime/R$id;->dlgHeaderLayout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 314
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 315
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 316
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->pxToDip(F)F

    move-result v1

    float-to-int v1, v1

    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    int-to-float v0, v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    sub-int/2addr v1, v0

    .line 317
    iget v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 319
    :cond_1
    invoke-virtual {p2, p3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 323
    :cond_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->addMemberBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    .line 326
    sget p3, Lcom/metamoji/noteanytime/R$string;->ForBiz_Add_Shared_Drive_Member:I

    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setMainTitle(Ljava/lang/CharSequence;)V

    .line 328
    new-instance p3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$1;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    sget p2, Lcom/metamoji/noteanytime/R$id;->deleteBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_deleteBtn:Lcom/metamoji/ui/common/UiButton;

    .line 335
    new-instance p3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$2;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 343
    sget p2, Lcom/metamoji/noteanytime/R$id;->teacherCount:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCountText:Landroid/widget/TextView;

    .line 344
    sget p2, Lcom/metamoji/noteanytime/R$id;->studentCount:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    iput-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCountText:Landroid/widget/TextView;

    .line 347
    sget p2, Lcom/metamoji/noteanytime/R$id;->memberList:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    .line 348
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    if-nez p3, :cond_3

    .line 349
    new-instance p3, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    .line 351
    :cond_3
    iget-object p3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_memberListDataAdapter:Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$MemberListAdapter;

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 354
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->refreshMemberList()V

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 0

    .line 675
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->dismiss()V

    return-void
.end method

.method refreshMemberList()V
    .locals 3

    .line 368
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog$3;-><init>(Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

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

    .line 743
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 744
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 745
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 748
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 749
    const-string v5, "isOwner"

    invoke-static {v4, v5}, Lcom/metamoji/cm/CmUtils;->getAsBool(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v5

    .line 750
    const-string v6, "isTeacher"

    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 752
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v6, :cond_0

    .line 753
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 754
    iget v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    goto :goto_0

    .line 756
    :cond_0
    iget v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    goto :goto_0

    :cond_1
    if-eqz v6, :cond_2

    .line 759
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 760
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 761
    iget v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    goto :goto_0

    .line 763
    :cond_2
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 764
    iget v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    add-int/2addr v4, v7

    iput v4, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    goto :goto_0

    .line 769
    :cond_3
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 772
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    .line 773
    const-string v3, "MMJAppMonitorSortOrder"

    const-string/jumbo v4, "userid"

    invoke-static {v3, v4}, Lcom/metamoji/nt/NtFeatureManager;->getCustomizeSettingString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 774
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 780
    new-instance v3, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;

    invoke-direct {v3}, Lcom/metamoji/forSchool/ScSchoolUtils$LoginNameComparator3;-><init>()V

    .line 781
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 782
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_1

    .line 785
    :cond_4
    new-instance v3, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;

    const-string v4, "name"

    invoke-direct {v3, v4}, Lcom/metamoji/forSchool/ScSchoolUtils$UserNameComparator2;-><init>(Ljava/lang/String;)V

    .line 786
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 787
    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 791
    :goto_1
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 793
    invoke-interface {p1, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 795
    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method updateUserCount()V
    .locals 4

    .line 429
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCountText:Landroid/widget/TextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->ShareBar_Participants_Count:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_teacherCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 431
    iget-object v1, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCountText:Landroid/widget/TextView;

    sget v2, Lcom/metamoji/noteanytime/R$string;->ShareBar_Participants_Count:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget v2, p0, Lcom/metamoji/ui/cabinet/user/management/DriveMemberAdminDialog;->m_studentCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
