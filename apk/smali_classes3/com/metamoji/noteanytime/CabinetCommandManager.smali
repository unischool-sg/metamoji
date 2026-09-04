.class public Lcom/metamoji/noteanytime/CabinetCommandManager;
.super Ljava/lang/Object;
.source "CabinetCommandManager.java"

# interfaces
.implements Lcom/metamoji/nt/ICommandProcessor;


# static fields
.field static final TAG_LIBRARY_VIEW_DIALOG:Ljava/lang/String; = "NoteListViewFragment#showLibraryViewDialog"


# instance fields
.field _activity:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method

.method private isEditableFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)Z
    .locals 2

    .line 679
    sget-object v0, Lcom/metamoji/noteanytime/CabinetCommandManager$3;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0xf

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 700
    :pswitch_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    .line 704
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    .line 705
    sget-object v0, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1

    :cond_2
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private isEnableMakeClassBox()Z
    .locals 4

    .line 531
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->CreateClassBox:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 535
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 539
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 540
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 542
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-eq v0, v2, :cond_2

    return v1

    .line 546
    :cond_2
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 547
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 548
    iget v2, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    goto :goto_0

    .line 552
    :cond_3
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isAdmin:Z

    if-nez v0, :cond_4

    return v1

    :cond_4
    const/4 v0, 0x1

    return v0

    :cond_5
    :goto_0
    return v1
.end method

.method public static isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
    .locals 3

    .line 591
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 592
    sget-object v1, Lcom/metamoji/noteanytime/CabinetCommandManager$3;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    return v2

    .line 600
    :pswitch_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 604
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    return v2

    .line 609
    :cond_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 612
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p0

    sget-object v0, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v2

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isEnableMakeSdDrive()Z
    .locals 3

    .line 564
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 565
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    .line 567
    sget-object v2, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->SHARED_DRIVE_PARENT:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v1, v2, :cond_0

    .line 568
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isEnableMoveFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;)Z
    .locals 2

    .line 639
    sget-object v0, Lcom/metamoji/noteanytime/CabinetCommandManager$3;->$SwitchMap$com$metamoji$ui$cabinet$CabinetTreeItem$Type:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return v1

    .line 647
    :pswitch_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p0

    if-eqz p0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 655
    :cond_1
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getGroupIdFromDriveId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    .line 658
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p0

    sget-object p1, Lcom/metamoji/nt/NtFeature;->AppStudentEditClassboxNote:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isEnableMoveFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z
    .locals 1

    .line 633
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 634
    invoke-virtual {p0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p0

    .line 635
    invoke-static {v0, p0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMoveFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static showLibraryViewDialog(Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 503
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_NEW_DOCUMENT:Lcom/metamoji/nt/NtCommand;

    invoke-static {p0, v0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->showLibraryViewDialog(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/nt/NtCommand;)V

    return-void
.end method

.method private static showLibraryViewDialog(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/nt/NtCommand;)V
    .locals 2

    .line 506
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 510
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 511
    const-string v0, "NoteListViewFragment#showLibraryViewDialog"

    invoke-virtual {p0, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_1

    :goto_0
    return-void

    .line 515
    :cond_1
    new-instance v1, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;

    invoke-direct {v1}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;-><init>()V

    .line 516
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->setCommand(Lcom/metamoji/nt/NtCommand;)V

    const/4 p1, 0x0

    .line 517
    invoke-virtual {v1, p1}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->setCmContext(Lcom/metamoji/cm/CmContext;)V

    .line 518
    invoke-virtual {v1, p0, v0}, Lcom/metamoji/ui/library/note/LibraryNoteViewDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 4

    .line 45
    sget-object v0, Lcom/metamoji/noteanytime/CabinetCommandManager$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 211
    :pswitch_0
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, p2}, Lcom/metamoji/nt/mv/MvDebug;->showMenu(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/cm/CmContext;)V

    goto/16 :goto_1

    .line 195
    :pswitch_1
    new-instance p1, Lcom/metamoji/noteanytime/CabinetCommandManager$2;

    invoke-direct {p1, p0}, Lcom/metamoji/noteanytime/CabinetCommandManager$2;-><init>(Lcom/metamoji/noteanytime/CabinetCommandManager;)V

    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAttentionEnd(Lcom/metamoji/ns/INsCollaboAction;)V

    goto/16 :goto_1

    .line 173
    :pswitch_2
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 175
    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object v1

    .line 177
    :cond_0
    sget-object p2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_ATTENTION_CHANGE:Lcom/metamoji/nt/NtCommand;

    if-ne p1, p2, :cond_1

    move p1, v3

    goto :goto_0

    :cond_1
    move p1, v2

    .line 178
    :goto_0
    new-instance p2, Lcom/metamoji/noteanytime/CabinetCommandManager$1;

    invoke-direct {p2, p0}, Lcom/metamoji/noteanytime/CabinetCommandManager$1;-><init>(Lcom/metamoji/noteanytime/CabinetCommandManager;)V

    invoke-static {v3, p1, v1, p2}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolAttentionStart(ZZLjava/lang/String;Lcom/metamoji/ns/INsCollaboAction;)V

    goto/16 :goto_1

    .line 160
    :pswitch_3
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    instance-of p2, p1, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz p2, :cond_2

    .line 161
    check-cast p1, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/MainActivity;->getFxManager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v1

    :cond_2
    if-eqz v1, :cond_5

    .line 164
    sget-object p1, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_ALL:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/flexible/FxManager;->launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    goto/16 :goto_1

    .line 156
    :pswitch_4
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->importFromAlbum(Landroidx/fragment/app/FragmentActivity;)V

    goto/16 :goto_1

    .line 153
    :pswitch_5
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->importFromCamera()V

    goto/16 :goto_1

    .line 149
    :pswitch_6
    invoke-static {}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->openShareCordinator()V

    goto/16 :goto_1

    .line 146
    :pswitch_7
    invoke-static {}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->openAdminWeb()V

    goto/16 :goto_1

    .line 138
    :pswitch_8
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_3

    .line 140
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getActiveGroupId()Ljava/lang/String;

    move-result-object p1

    .line 142
    :cond_3
    iget-object p2, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2, p1}, Lcom/metamoji/noteanytime/MainActivity;->driveDisplaySettings(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 135
    :pswitch_9
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->handleSchoolManageClassList()V

    goto/16 :goto_1

    .line 131
    :pswitch_a
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/nt/NtSupportLog;->handleEndSupportLog(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 128
    :pswitch_b
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/nt/NtSupportLog;->handleStartSupportLog(Landroid/app/Activity;)V

    goto/16 :goto_1

    .line 125
    :pswitch_c
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->handleLogout(Landroidx/fragment/app/FragmentActivity;)V

    goto/16 :goto_1

    .line 122
    :pswitch_d
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->showUserAccountBiz(Landroidx/fragment/app/FragmentActivity;)V

    goto/16 :goto_1

    .line 119
    :pswitch_e
    invoke-static {}, Lcom/metamoji/ui/cabinet/CabinetUtils;->showOpenResourceUrlDialog()V

    goto/16 :goto_1

    .line 116
    :pswitch_f
    invoke-static {v2}, Lcom/metamoji/media/MediaUtil;->openMediaListDialog(Z)V

    goto/16 :goto_1

    .line 113
    :pswitch_10
    invoke-static {}, Lcom/metamoji/ns/NsCollaboCommand;->handleCollaboBrowseOwnerSite()V

    goto/16 :goto_1

    .line 110
    :pswitch_11
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->showSystemOption(Landroidx/fragment/app/FragmentActivity;)V

    goto/16 :goto_1

    .line 107
    :pswitch_12
    invoke-static {p1}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->handleCommandExec(Lcom/metamoji/nt/NtCommand;)V

    goto/16 :goto_1

    .line 98
    :pswitch_13
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 101
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p2

    invoke-virtual {p2}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getGroupId()Ljava/lang/String;

    move-result-object p2

    .line 102
    iget-object v0, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, p1, p2}, Lcom/metamoji/noteanytime/MainActivity;->showDriveMember(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 95
    :pswitch_14
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->handleInputParticipationCode(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_1

    .line 91
    :pswitch_15
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->makeClassBox(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_1

    .line 87
    :pswitch_16
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->createDrive(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_1

    .line 80
    :pswitch_17
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->canMakeFolder()Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    .line 83
    :cond_4
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 84
    iget-object p2, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    move-object v0, p2

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p2, p1, v0}, Lcom/metamoji/noteanytime/MainActivity;->createNewFolder(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/CabinetTreeItem;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    goto :goto_1

    .line 77
    :pswitch_18
    iget-object p2, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p2, p1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->showLibraryViewDialog(Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/nt/NtCommand;)V

    goto :goto_1

    .line 73
    :pswitch_19
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->showLibraryViewDialog(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_1

    .line 70
    :pswitch_1a
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->importWebDAV(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_1

    .line 67
    :pswitch_1b
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v3}, Lcom/metamoji/noteanytime/MainActivity;->importAudioFile(Landroidx/fragment/app/FragmentActivity;Z)V

    goto :goto_1

    .line 59
    :pswitch_1c
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v3}, Lcom/metamoji/noteanytime/MainActivity;->importPdfFile(Landroidx/fragment/app/FragmentActivity;Z)V

    goto :goto_1

    .line 56
    :pswitch_1d
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1, v3}, Lcom/metamoji/noteanytime/MainActivity;->importHayabusaDoc(Landroidx/fragment/app/FragmentActivity;Z)V

    goto :goto_1

    .line 53
    :pswitch_1e
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    iget-object p2, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    move-object v0, p2

    check-cast v0, Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;

    invoke-static {p1, p2, v0}, Lcom/metamoji/noteanytime/MainActivity;->showSortListDialog(Landroidx/fragment/app/FragmentManager;Landroidx/fragment/app/FragmentActivity;Lcom/metamoji/ui/cabinet/FolderTreeChangeEventListener;)V

    goto :goto_1

    .line 50
    :pswitch_1f
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->liftSearchCondition(Landroidx/fragment/app/FragmentActivity;)V

    goto :goto_1

    .line 47
    :pswitch_20
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->refinementString(Landroidx/fragment/app/FragmentActivity;)V

    :cond_5
    :goto_1
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 3

    .line 234
    sget-object v0, Lcom/metamoji/noteanytime/CabinetCommandManager$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_3

    goto :goto_2

    .line 237
    :cond_0
    iget-object v0, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    move v0, v2

    goto :goto_1

    .line 241
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableWebDAV:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEditableFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    return v0

    .line 253
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 262
    :cond_4
    :goto_2
    sget-object v0, Lcom/metamoji/noteanytime/CabinetCommandManager$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x19

    if-eq v0, v1, :cond_a

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_8

    packed-switch v0, :pswitch_data_0

    goto :goto_3

    .line 305
    :pswitch_0
    sget-boolean v0, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-nez v0, :cond_b

    return v2

    .line 298
    :pswitch_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 299
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_5
    return v2

    .line 289
    :pswitch_2
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 290
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 291
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-nez v0, :cond_b

    :cond_6
    return v2

    .line 280
    :pswitch_3
    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->isNetworkAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 281
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 282
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolCommand;->isAttentionMode()Z

    move-result v0

    if-eqz v0, :cond_b

    :cond_7
    return v2

    .line 269
    :cond_8
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_9

    return v2

    .line 272
    :cond_9
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    .line 273
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;->CRBOX_OLD:Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    if-ne v0, v1, :cond_b

    return v2

    .line 264
    :cond_a
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_b

    return v2

    .line 309
    :cond_b
    :goto_3
    sget-boolean v0, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-nez v0, :cond_c

    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->isCalendarMode()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 310
    :cond_c
    sget-object v0, Lcom/metamoji/noteanytime/CabinetCommandManager$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    if-eq v0, v2, :cond_20

    const/4 v1, 0x2

    if-eq v0, v1, :cond_20

    const/4 v1, 0x3

    if-eq v0, v1, :cond_20

    .line 321
    :cond_d
    sget-object v0, Lcom/metamoji/noteanytime/CabinetCommandManager$3;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    :pswitch_4
    goto/16 :goto_5

    .line 473
    :pswitch_5
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1f

    return v2

    .line 488
    :pswitch_6
    invoke-static {p1}, Lcom/metamoji/nt/NtSupportLog;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v2

    .line 347
    :pswitch_7
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result p1

    if-eqz p1, :cond_e

    return v2

    .line 350
    :cond_e
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->processInhibitMediaServerUploadedFiles()Z

    move-result p1

    return p1

    .line 341
    :pswitch_8
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1f

    return v2

    .line 327
    :pswitch_9
    const-string p1, "manual"

    invoke-static {p1}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->menuEnabled(Ljava/lang/String;)Z

    move-result p1

    xor-int/2addr p1, v2

    .line 329
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_f

    return v2

    :cond_f
    return p1

    .line 421
    :pswitch_a
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 422
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->isSharedDrive()Z

    move-result p1

    if-nez p1, :cond_10

    return v2

    .line 425
    :cond_10
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    .line 426
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveById(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDriveBean;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 427
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->isAdmin()Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_4

    .line 431
    :cond_11
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->getGroupId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1f

    :cond_12
    :goto_4
    return v2

    .line 480
    :pswitch_b
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtFeature;->EditClassBoxMember:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v2

    .line 409
    :pswitch_c
    invoke-direct {p0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeClassBox()Z

    move-result p1

    if-nez p1, :cond_1f

    return v2

    .line 415
    :pswitch_d
    invoke-direct {p0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeSdDrive()Z

    move-result p1

    if-eqz p1, :cond_13

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1f

    :cond_13
    return v2

    .line 400
    :pswitch_e
    invoke-static {}, Lcom/metamoji/noteanytime/MainActivity;->canMakeFolder()Z

    move-result p1

    xor-int/2addr p1, v2

    .line 403
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEnableMakeFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem;)Z

    move-result v0

    if-nez v0, :cond_14

    return v2

    :cond_14
    return p1

    .line 388
    :pswitch_f
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p1

    if-nez p1, :cond_15

    return v2

    .line 392
    :cond_15
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object v0

    .line 394
    invoke-direct {p0, v0}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEditableFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getDriveId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_16

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_1f

    :cond_16
    return v2

    .line 376
    :pswitch_10
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p1

    if-nez p1, :cond_17

    return v2

    .line 380
    :cond_17
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    .line 381
    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEditableFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)Z

    move-result p1

    xor-int/2addr p1, v2

    return p1

    .line 460
    :pswitch_11
    sget-boolean p1, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-eqz p1, :cond_18

    return v2

    .line 462
    :cond_18
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p1

    if-nez p1, :cond_19

    return v2

    .line 465
    :cond_19
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEditableFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)Z

    move-result p1

    if-nez p1, :cond_1a

    return v2

    .line 467
    :cond_1a
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result p1

    if-eqz p1, :cond_1f

    return v2

    .line 450
    :pswitch_12
    sget-boolean p1, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-eqz p1, :cond_1b

    return v2

    .line 452
    :cond_1b
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p1

    if-nez p1, :cond_1c

    return v2

    .line 455
    :cond_1c
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEditableFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v2

    .line 440
    :pswitch_13
    sget-boolean p1, Lcom/metamoji/noteanytime/MainActivity;->_IsShareViewMode:Z

    if-eqz p1, :cond_1d

    return v2

    .line 442
    :cond_1d
    iget-object p1, p0, Lcom/metamoji/noteanytime/CabinetCommandManager;->_activity:Landroidx/fragment/app/FragmentActivity;

    invoke-static {p1}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object p1

    if-nez p1, :cond_1e

    return v2

    .line 445
    :cond_1e
    invoke-static {}, Lcom/metamoji/ui/cabinet/FolderTreeViewFragment;->getCurrentFolder()Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;->getType()Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/metamoji/noteanytime/CabinetCommandManager;->isEditableFolder(Lcom/metamoji/ui/cabinet/CabinetTreeItem$Type;)Z

    move-result p1

    if-nez p1, :cond_1f

    return v2

    :cond_1f
    :goto_5
    const/4 p1, 0x0

    return p1

    :cond_20
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x20
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x4
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_4
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_7
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_8
        :pswitch_8
        :pswitch_10
        :pswitch_10
        :pswitch_5
    .end packed-switch
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
