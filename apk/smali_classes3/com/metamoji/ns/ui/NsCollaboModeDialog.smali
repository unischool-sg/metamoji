.class public Lcom/metamoji/ns/ui/NsCollaboModeDialog;
.super Lcom/metamoji/ns/ui/NsCollaboModeViewBase;
.source "NsCollaboModeDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;
    }
.end annotation


# instance fields
.field private m_msgFormat:Ljava/lang/String;

.field m_openCollaboStatusView:Z

.field m_schoolEveryoneAnswerBtnBar:Landroid/view/View;

.field m_schoolStatusBtnBar:Landroid/view/View;

.field m_schoolTeacherBtnBar:Landroid/view/View;

.field m_schoolTeacherModeBtnBar:Landroid/view/View;

.field private m_userCountLabel:Landroid/widget/TextView;

.field m_userLabelLayout:Landroid/widget/RelativeLayout;

.field private m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

.field private m_userListGroup:Landroid/widget/LinearLayout;

.field m_userListLabel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 110
    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;-><init>()V

    const/4 v0, 0x0

    .line 563
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_msgFormat:Ljava/lang/String;

    const/4 v0, 0x0

    .line 845
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_openCollaboStatusView:Z

    .line 111
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->setRetainInstance(Z)V

    return-void
.end method

.method private schoolBtnVisibleChange(Lcom/metamoji/nt/NtCommandManager;Z)V
    .locals 5

    if-nez p2, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->dismissUserContextMenu()V

    .line 1213
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_3

    if-eqz p2, :cond_3

    .line 1216
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeBtnBar:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 1217
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1219
    :cond_1
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherBtnBar:Landroid/view/View;

    if-eqz v3, :cond_2

    .line 1220
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    :cond_2
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolTeacherModeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v3

    .line 1224
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1225
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1227
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v3}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto :goto_0

    .line 1230
    :cond_3
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeBtnBar:Landroid/view/View;

    if-eqz v3, :cond_4

    .line 1231
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1233
    :cond_4
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherBtnBar:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 1234
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_5
    :goto_0
    if-nez v0, :cond_7

    if-eqz p2, :cond_7

    .line 1239
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusBtnBar:Landroid/view/View;

    if-eqz p2, :cond_6

    .line 1240
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1242
    :cond_6
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtnBar:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 1243
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1246
    :cond_7
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusBtnBar:Landroid/view/View;

    if-eqz p2, :cond_8

    .line 1247
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1249
    :cond_8
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtnBar:Landroid/view/View;

    if-eqz p2, :cond_9

    .line 1250
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1254
    :cond_9
    :goto_1
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolEveryoneAnswerCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result p1

    if-eqz p1, :cond_a

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_a
    const/high16 p1, 0x3f000000    # 0.5f

    .line 1257
    :goto_2
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method


# virtual methods
.method public appendUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->insert(Ljava/lang/Object;I)V

    .line 616
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateUserCount()V

    .line 619
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSubMemberIcon()V

    .line 622
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboUserInfo;->clone()Lcom/metamoji/ns/NsCollaboUserInfo;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->appendUserInfoForSchool(Lcom/metamoji/forSchool/ui/ScUserListAdapter;Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 625
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->reloadUserList()V

    return-void
.end method

.method public closeView()V
    .locals 3

    .line 881
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 882
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 884
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 885
    const-string v2, "CollaboModeBar"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->hide(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 888
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 v0, 0x0

    .line 889
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_openCollaboStatusView:Z

    .line 892
    :cond_0
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->getFocusedTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 894
    invoke-virtual {v0}, Lcom/metamoji/un/text/UnTextUnit;->focusToViewForSoftInputAndShowSoftInput()V

    :cond_1
    return-void
.end method

.method public initForGuidanceMode()V
    .locals 2

    const/4 v0, 0x1

    .line 453
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_isInitialized:Z

    .line 455
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_isGuidanceMode:Z

    .line 456
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_mainContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 457
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_mainContainerForGuidance:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 461
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->resetSchoolUserList()V

    .line 463
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSchoolBtn()V

    return-void
.end method

.method public initForShareNoteMode()V
    .locals 2

    const/4 v0, 0x1

    .line 430
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_isInitialized:Z

    const/4 v0, 0x0

    .line 432
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_isGuidanceMode:Z

    .line 433
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_mainContainer:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 434
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_mainContainer:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_mainContainerForGuidance:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 437
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_mainContainerForGuidance:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 440
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSchoolBtn()V

    .line 443
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->initializePanel()V

    return-void
.end method

.method public initializePanel()V
    .locals 3

    .line 480
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userCountLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    const-string v2, ""

    if-eqz v0, :cond_0

    .line 481
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 482
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userCountLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 487
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusCountBar:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusCountBar:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 492
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherNumLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    .line 493
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 496
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 498
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 499
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 501
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 502
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateUserCount()V

    return-void
.end method

.method public isShow()Z
    .locals 1

    .line 876
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_openCollaboStatusView:Z

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 8

    .line 126
    invoke-super {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->getView()Landroid/view/View;

    move-result-object v0

    .line 129
    invoke-static {}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getInstance()Lcom/metamoji/noteanytime/NoteAnytimeApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/noteanytime/NoteAnytimeApplication;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 132
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    if-nez v2, :cond_0

    .line 133
    new-instance v2, Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-direct {v2, v1, p0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;-><init>(Landroid/content/Context;Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    .line 136
    :cond_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    if-nez v2, :cond_1

    .line 137
    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-direct {v2, p0, v1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    .line 140
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    const/4 v3, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v3

    .line 141
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    check-cast v2, Lcom/metamoji/noteanytime/EditorActivity;

    .line 144
    sget v4, Lcom/metamoji/noteanytime/R$id;->mainContainerForGuidanceForSchool:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_mainContainerForGuidance:Landroid/view/View;

    .line 145
    sget v4, Lcom/metamoji/noteanytime/R$id;->collaboStartBtnForSchool:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_collaboStartBtn:Landroid/widget/LinearLayout;

    .line 147
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    .line 148
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnImageForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

    .line 149
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnTextForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    .line 151
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    .line 152
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnImageForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

    .line 153
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnTextForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnTextForGuidance:Landroid/widget/TextView;

    .line 155
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnForGuidance:Landroid/widget/LinearLayout;

    .line 156
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnImageForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

    .line 157
    sget v4, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnTextForGuidance:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

    .line 159
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeDialog$1;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 165
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 167
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeDialog$2;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnForGuidance:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 176
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeDialog$3;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_collaboStartBtn:Landroid/widget/LinearLayout;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeDialog$4;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$4;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 190
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_collaboStartBtn:Landroid/widget/LinearLayout;

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    sget-object v7, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/metamoji/noteanytime/EditorActivity;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 194
    sget v2, Lcom/metamoji/noteanytime/R$id;->mainContainerForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_mainContainer:Landroid/view/View;

    .line 195
    sget v2, Lcom/metamoji/noteanytime/R$id;->userLabelLayoutForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userLabelLayout:Landroid/widget/RelativeLayout;

    .line 196
    sget v2, Lcom/metamoji/noteanytime/R$id;->userListLabelForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListLabel:Landroid/widget/TextView;

    .line 197
    sget v2, Lcom/metamoji/noteanytime/R$id;->userCountLabelForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userCountLabel:Landroid/widget/TextView;

    .line 198
    sget v2, Lcom/metamoji/noteanytime/R$id;->userListGroupForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListGroup:Landroid/widget/LinearLayout;

    .line 199
    sget v2, Lcom/metamoji/noteanytime/R$id;->userListForSchool:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userList:Landroid/widget/ListView;

    .line 201
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    .line 202
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnImage:Landroid/widget/ImageView;

    .line 203
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPageTypeBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnText:Landroid/widget/TextView;

    .line 204
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolStatusDoItBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    .line 205
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolStatusHelpBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    .line 206
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEveryoneAnswerBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    .line 207
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModeBtnBar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeBtnBar:Landroid/view/View;

    .line 208
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEveryoneAnswerBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    .line 210
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModePresenterBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    .line 211
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModePresenterBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtnImage:Landroid/widget/ImageView;

    .line 212
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModePresenterBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtnText:Landroid/widget/TextView;

    .line 213
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModeLockBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    .line 214
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModeLockBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtnImage:Landroid/widget/ImageView;

    .line 215
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherModeLockBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtnText:Landroid/widget/TextView;

    .line 218
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    .line 219
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnImage:Landroid/widget/ImageView;

    .line 220
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolPersonalModeTypeBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnText:Landroid/widget/TextView;

    .line 222
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherBtnBar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherBtnBar:Landroid/view/View;

    .line 223
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherMonitoringBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

    .line 224
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtn:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    .line 225
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnImage:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnImage:Landroid/widget/ImageView;

    .line 226
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEditLayerBtnText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnText:Landroid/widget/TextView;

    .line 227
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolStatusBtnBar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusBtnBar:Landroid/view/View;

    .line 228
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolEveryoneAnswerBtnBar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtnBar:Landroid/view/View;

    .line 229
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolStatusCountBar:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusCountBar:Landroid/view/View;

    .line 230
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolTeacherNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherNumLabel:Landroid/widget/TextView;

    .line 231
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolDoItNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    .line 233
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    new-instance v4, Lcom/metamoji/ns/ui/NsCollaboModeDialog$5;

    invoke-direct {v4, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$5;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 239
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolNotYetNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    .line 241
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    new-instance v4, Lcom/metamoji/ns/ui/NsCollaboModeDialog$6;

    invoke-direct {v4, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$6;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    sget v2, Lcom/metamoji/noteanytime/R$id;->schoolHelpNumText:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    .line 249
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    new-instance v4, Lcom/metamoji/ns/ui/NsCollaboModeDialog$7;

    invoke-direct {v4, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$7;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 256
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userList:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v2, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 258
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListGroup:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 260
    sget v2, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    .line 261
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 262
    sget v2, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    .line 263
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    if-eqz v1, :cond_3

    .line 265
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/metamoji/noteanytime/R$color;->school_doit_color_jp:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    .line 267
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/metamoji/noteanytime/R$color;->school_doit_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$8;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$8;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 277
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/metamoji/noteanytime/R$color;->school_help_color:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 280
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$9;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$9;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 287
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$10;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$10;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 293
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 296
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$11;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$11;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 304
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$12;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$12;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherMonitoringBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 311
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$13;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$13;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 319
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$14;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$14;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 325
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusDoItBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 326
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$15;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$15;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusHelpBtn:Landroid/widget/TextView;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 334
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$16;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$16;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 342
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtn:Landroid/widget/LinearLayout;

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;

    invoke-direct {v2, p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase$ButtonHighlighter;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeViewBase;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    sget v1, Lcom/metamoji/noteanytime/R$id;->button_back:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/common/UiButton;

    .line 346
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeDialog$17;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$17;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 354
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userList:Landroid/widget/ListView;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboModeDialog$18;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$18;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    if-eqz p1, :cond_5

    .line 368
    iput-boolean v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_isInitialized:Z

    .line 369
    const-string v0, "m_isShow"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_openCollaboStatusView:Z

    .line 370
    const-string v0, "m_isGuidanceMode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_isGuidanceMode:Z

    .line 372
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 375
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->clear()V

    .line 376
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSchoolUserList()V

    .line 378
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->clear()V

    .line 379
    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 381
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 382
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_2

    .line 387
    :cond_4
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_openCollaboStatusView:Z

    if-nez p1, :cond_5

    .line 388
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->closeView()V

    .line 391
    :cond_5
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_isGuidanceMode:Z

    if-eqz p1, :cond_6

    .line 392
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->initForGuidanceMode()V

    goto :goto_3

    .line 394
    :cond_6
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->initForShareNoteMode()V

    .line 398
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->dismissUserContextMenu()V

    return-void
.end method

.method public onBackKeyDown()V
    .locals 0

    .line 900
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->closeView()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 119
    sget p3, Lcom/metamoji/noteanytime/R$layout;->collabo_mode_bar_phone:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 403
    invoke-super {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->onDestroyView()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 413
    const-string v0, "m_isShow"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_openCollaboStatusView:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 414
    const-string v0, "m_isGuidanceMode"

    iget-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_isGuidanceMode:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 416
    invoke-super {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public openDialog()V
    .locals 3

    .line 852
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 853
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 857
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    .line 858
    const-string v2, "CollaboModeBar"

    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 861
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    const/4 v0, 0x1

    .line 862
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_openCollaboStatusView:Z

    .line 866
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->clear()V

    .line 867
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSchoolUserList()V

    .line 868
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->notifyDataSetChanged()V

    .line 869
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSchoolBtn()V

    return-void
.end method

.method public reloadUserList()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    if-eqz v0, :cond_0

    .line 599
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->updateIndexPathList()V

    .line 602
    :cond_0
    invoke-super {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->reloadUserList()V

    return-void
.end method

.method reloadUserListItem(I)V
    .locals 3

    .line 686
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userList:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    if-ltz p1, :cond_0

    .line 687
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userList:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    .line 688
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userList:Landroid/widget/ListView;

    sub-int v0, p1, v0

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 692
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userList:Landroid/widget/ListView;

    invoke-virtual {v1, p1, v0, v2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method public removeUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;I)V
    .locals 1

    .line 662
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ns/NsCollaboUserInfo;

    if-eqz p2, :cond_0

    .line 664
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->remove(Ljava/lang/Object;)V

    .line 668
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateUserCount()V

    .line 671
    invoke-virtual {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->removeUserInfoForSchool(Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 674
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSubMemberIcon()V

    .line 677
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->reloadUserList()V

    return-void
.end method

.method showUserListContextMenu(Landroid/view/View;I)V
    .locals 6

    .line 771
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->dismissUserContextMenu()V

    .line 777
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 781
    :cond_0
    instance-of v1, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    if-eqz v1, :cond_1

    .line 782
    check-cast v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;

    .line 783
    iget-object v1, v0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userInfo:Lcom/metamoji/ns/NsCollaboUserInfo;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    move-object v1, v0

    .line 792
    :goto_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 799
    :cond_2
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userContextMenuTargetUserDic:Lcom/metamoji/forSchool/ui/ScUserListItemData;

    const/4 v0, 0x1

    if-eqz v1, :cond_3

    .line 800
    iget v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userContextMenuTargetIsPresenter:Z

    .line 803
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 805
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->dismissUserContextMenu()V

    .line 806
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p2

    .line 808
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_4

    .line 809
    invoke-virtual {p2}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p2

    if-nez p2, :cond_4

    .line 811
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 812
    new-instance v1, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v1}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 813
    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MenuKind;->NORMAL:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 814
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_FORBID_BROWSING_AMONG_STUDENTS:I

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 815
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    .line 818
    invoke-interface {v1}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v1

    .line 819
    sget-object v2, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {v1, p2, p1, v2, v0}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;Z)V

    :cond_4
    :goto_2
    return-void

    .line 825
    :cond_5
    invoke-virtual {p0, p2}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->reloadUserListItem(I)V

    .line 828
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    .line 829
    invoke-interface {p2}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    .line 830
    sget-object p2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 832
    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 834
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeDialog$21;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$21;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V

    return-void
.end method

.method showUserListContextMenuOnSection(Landroid/view/View;I)V
    .locals 6

    .line 722
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->dismissUserContextMenu()V

    .line 724
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {v0, p2}, Lcom/metamoji/forSchool/ui/ScUserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    instance-of v0, p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    if-eqz v0, :cond_1

    .line 731
    check-cast p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    .line 732
    iget-object v0, p2, Lcom/metamoji/forSchool/ui/ScUserListSectionData;->groupId:Ljava/lang/String;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 737
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 738
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_0

    .line 743
    :cond_3
    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userContextMenuTargetGroupDic:Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    .line 746
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 748
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->clearUserContextMenuTargetUserId()V

    return-void

    .line 753
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p2

    .line 754
    invoke-interface {p2}, Lcom/metamoji/nt/INtEditor;->getFxmanager()Lcom/metamoji/ui/flexible/FxManager;

    move-result-object v0

    .line 755
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    new-instance v5, Lcom/metamoji/ns/ui/NsCollaboModeDialog$20;

    invoke-direct {v5, p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$20;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;)V

    const/4 v3, 0x0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public terminatePanel()V
    .locals 0

    return-void
.end method

.method public updateGuidanceCommandState()V
    .locals 0

    return-void
.end method

.method public updateModeArea()V
    .locals 0

    .line 534
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSubMemberIcon()V

    .line 537
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSchoolTeacherModeBtn()V

    .line 539
    invoke-super {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->updateModeArea()V

    return-void
.end method

.method public updateSchoolEditLayerBtn()V
    .locals 3

    .line 967
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnText:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 979
    :cond_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 983
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 984
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 988
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    .line 993
    :cond_3
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerImage(Lcom/metamoji/nt/NtPageController;)I

    move-result v1

    .line 994
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getCurrentLayerText(Lcom/metamoji/nt/NtPageController;)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 995
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 996
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnText:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 997
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 998
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1002
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isPresenter()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 1006
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1007
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void

    .line 1003
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1004
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEditLayerBtn:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_6
    :goto_1
    return-void
.end method

.method public updateSchoolPageTypeBtn(Lcom/metamoji/nt/NtPageController;)V
    .locals 5

    .line 1016
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 1021
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1023
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$22;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$22;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;Lcom/metamoji/nt/INtEditor;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    .line 1032
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 1033
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v1

    .line 1035
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1036
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v2

    .line 1037
    invoke-virtual {p1}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p1

    .line 1043
    sget-object v3, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 1045
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeBtnImage(I)I

    move-result v0

    .line 1046
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeBtnTitle(I)I

    move-result p1

    .line 1047
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolPageTypeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v1

    goto :goto_2

    .line 1052
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 1054
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->collabo_status_offline:I

    .line 1056
    sget-object v0, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->OFFLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v1, v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    move v0, p1

    move p1, v3

    move v1, v4

    goto :goto_1

    .line 1059
    :cond_4
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeBtnImage(I)I

    move-result v0

    .line 1060
    invoke-static {p1}, Lcom/metamoji/forSchool/ScSchoolUtils;->getSchoolPageTypeBtnTitle(I)I

    move-result p1

    .line 1061
    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->isSchoolPageTypeCommandSurelyEnabled(Lcom/metamoji/nt/NtCommandManager;)Z

    move-result v1

    :goto_1
    move v4, v3

    .line 1067
    :goto_2
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1068
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    if-nez p1, :cond_5

    .line 1070
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnText:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1071
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 1073
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnText:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_3
    if-eqz v1, :cond_6

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_4

    :cond_6
    const/high16 p1, 0x3f000000    # 0.5f

    .line 1078
    :goto_4
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1079
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1080
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1081
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPageTypeBtnForGuidance:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 1084
    invoke-direct {p0, v2, v4}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->schoolBtnVisibleChange(Lcom/metamoji/nt/NtCommandManager;Z)V

    :cond_7
    :goto_5
    return-void
.end method

.method public updateSchoolPersonalModeTypeBtn()V
    .locals 5

    .line 1170
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnImage:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1175
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->personalModeTypeImage()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1176
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->personalModeTypeText()I

    move-result v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    .line 1178
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 1179
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v3

    .line 1180
    invoke-static {v3}, Lcom/metamoji/forSchool/ScSchoolUtils;->getEveryoneAnswerImage(Lcom/metamoji/nt/NtNoteController;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 1182
    iget-object v4, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolEveryoneAnswerBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1183
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1184
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnText:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnImageForGuidance:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1186
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnTextForGuidance:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1188
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1190
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 1191
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_PERSONAL_MODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1195
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1196
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtn:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 1197
    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 1198
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolPersonalModeTypeBtnForGuidance:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_2
    :goto_1
    return-void
.end method

.method public updateSchoolStatusBtn(Ljava/lang/String;)V
    .locals 4

    .line 1139
    const-string v0, "doit"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1143
    :cond_0
    const-string v0, "help"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v3, v2

    move v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1152
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;

    invoke-direct {v0, p0, v1, v2}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$23;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;ZZ)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    return-void
.end method

.method public updateSchoolTeacherModeBtn()V
    .locals 7

    .line 1093
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->connectStatus()Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    move-result-object v0

    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;->ONLINE:Lcom/metamoji/ns/NsCollaboManager$ConnectStatus;

    if-ne v0, v1, :cond_3

    .line 1094
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 1098
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1099
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    const/16 v0, 0xff

    const/16 v1, 0x45

    const/16 v2, 0x4b

    const/16 v3, 0x54

    .line 1101
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    .line 1102
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    .line 1103
    sget v1, Lcom/metamoji/noteanytime/R$string;->TeacherMode_Presenter:I

    .line 1104
    sget v2, Lcom/metamoji/noteanytime/R$string;->TeacherMode_Lock:I

    .line 1105
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v3

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 1107
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1110
    sget v2, Lcom/metamoji/noteanytime/R$string;->SCHOOL_RELEASE_FOCUS:I

    move v0, v5

    goto :goto_0

    .line 1111
    :cond_1
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->existPresenter()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1113
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtn:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setSelected(Z)V

    .line 1116
    sget v1, Lcom/metamoji/noteanytime/R$string;->LEAVE_PRESENTER_TEACHER:I

    move v4, v5

    .line 1118
    :cond_2
    :goto_0
    invoke-static {}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->sharedInstance()Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;

    move-result-object v3

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/forSchool/ScSchoolManager;->isScreenLock()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/metamoji/forSchool/monitoring/ScMonitoringManager;->screenLockChanged(Z)V

    const/high16 v3, 0x42200000    # 40.0f

    .line 1121
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v3

    float-to-int v3, v3

    .line 1122
    sget v5, Lcom/metamoji/noteanytime/R$drawable;->school_mode_presenter:I

    new-instance v6, Lcom/metamoji/cm/Size;

    invoke-direct {v6, v3, v3}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v5, v4, v6}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 1123
    iget-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v6, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1124
    iget-object v5, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtnText:Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1125
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModePresenterBtnText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1126
    sget v1, Lcom/metamoji/noteanytime/R$drawable;->school_mode_lock:I

    new-instance v4, Lcom/metamoji/cm/Size;

    invoke-direct {v4, v3, v3}, Lcom/metamoji/cm/Size;-><init>(II)V

    invoke-static {v1, v0, v4}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1127
    iget-object v3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtnImage:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 1128
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtnText:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1129
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherModeLockBtnText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    :goto_1
    return-void
.end method

.method public updateStatusBtn()V
    .locals 0

    .line 520
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSubMemberIcon()V

    return-void
.end method

.method updateSubMemberIcon()V
    .locals 3

    .line 581
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 583
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/ns/ui/NsCollaboModeDialog$19;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$19;-><init>(Lcom/metamoji/ns/ui/NsCollaboModeDialog;Lcom/metamoji/nt/INtEditor;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->runOnUIThreadAsync(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method updateUserCount()V
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_msgFormat:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 567
    sget v0, Lcom/metamoji/noteanytime/R$string;->ShareBar_Participants_Count:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_msgFormat:Ljava/lang/String;

    .line 569
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userCountLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 570
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_msgFormat:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->getCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 573
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateUserCountForSchool()V

    return-void
.end method

.method public updateUserCountForSchool()V
    .locals 8

    .line 910
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 911
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 917
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 919
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userCountLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 920
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusCountBar:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 923
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolStatusCountBar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 930
    :cond_3
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 932
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 933
    iget v6, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v6, v6, 0x40

    if-eqz v6, :cond_4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 936
    :cond_4
    const-string v6, "doit"

    iget-object v7, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 939
    :cond_5
    const-string v6, "help"

    iget-object v5, v5, Lcom/metamoji/ns/NsCollaboUserInfo;->schoolPersonalStatus:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    move v2, v1

    move v3, v2

    move v4, v3

    .line 948
    :cond_8
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherNumLabel:Landroid/widget/TextView;

    const-string v5, "%d"

    if-eqz v0, :cond_9

    .line 949
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolTeacherNumLabel:Landroid/widget/TextView;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 952
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolDoItNumLabel:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 954
    :cond_a
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 955
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolNotYetNumLabel:Landroid/widget/TextView;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 957
    :cond_b
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_c

    .line 958
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_schoolHelpNumLabel:Landroid/widget/TextView;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_c
    :goto_1
    return-void
.end method

.method public updateUserInfo(Lcom/metamoji/ns/NsCollaboUserInfo;II)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {v0, p3}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ns/NsCollaboUserInfo;

    if-eqz p3, :cond_0

    .line 640
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {v0, p3}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->remove(Ljava/lang/Object;)V

    .line 644
    :cond_0
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapter:Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;

    invoke-virtual {p3, p1, p2}, Lcom/metamoji/ns/ui/NsCollaboModeDialog$UserListAdapter;->insert(Ljava/lang/Object;I)V

    .line 647
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateSubMemberIcon()V

    .line 650
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->m_userListDataAdapterForSchool:Lcom/metamoji/forSchool/ui/ScUserListAdapter;

    invoke-virtual {p0, p2, p1}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateUserInfoForSchool(Lcom/metamoji/forSchool/ui/ScUserListAdapter;Lcom/metamoji/ns/NsCollaboUserInfo;)V

    .line 653
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeDialog;->updateUserCountForSchool()V

    return-void
.end method
