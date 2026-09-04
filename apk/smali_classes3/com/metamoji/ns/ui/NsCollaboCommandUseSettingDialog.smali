.class public Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "NsCollaboCommandUseSettingDialog.java"


# static fields
.field static final HASH_DUMMY:Ljava/lang/String; = "PWDHASHDUMMY"


# instance fields
.field m_allowToChangeGroupByStudentSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_allowToEditOthersWritingsSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_allowToJoinNoteSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_allowToOperationPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_allowToSaveNoteAndCopyPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_canEdit:Ljava/lang/Boolean;

.field m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field public m_changeMode:Z

.field m_changeSecureRoom:Z

.field m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

.field m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field public m_companyId:Ljava/lang/String;

.field public m_date:Ljava/util/Date;

.field m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

.field public m_email:Ljava/lang/String;

.field public m_hasDate:Z

.field m_openDateGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field m_openDateNoDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field public m_password:Ljava/lang/String;

.field m_passwordBtn:Lcom/metamoji/ui/common/UiButton;

.field public m_preMode2ParamDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_preScoreEnable:Ljava/lang/Boolean;

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

.field public m_qwd:Ljava/lang/String;

.field public m_roomId:Ljava/lang/String;

.field public m_roomSettingList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public m_roomType:Ljava/lang/String;

.field m_saveAllowToChangeGroupByStudentSwitchValue:Ljava/lang/Boolean;

.field m_saveAllowToEditOthersWritingsSwitchValue:Ljava/lang/Boolean;

.field m_saveAllowToJoinNoteSwitchValue:Ljava/lang/Boolean;

.field m_saveAllowToOperationPageSwitchValue:Ljava/lang/Boolean;

.field m_saveAllowToSaveNoteAndCopyPageSwitchValue:Ljava/lang/Boolean;

.field public m_scoreEnable:Z

.field m_scoreEnableSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field public m_secureRoom:Z

.field public m_secureRoomPassword:Ljava/lang/String;

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

.field public m_title:Ljava/lang/String;

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
.method static bridge synthetic -$$Nest$mhandlePasswordSettingButtonTap(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->handlePasswordSettingButtonTap()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mtabButtonChanged(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->tabButtonChanged(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 144
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    .line 91
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    .line 92
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_canEdit:Ljava/lang/Boolean;

    const/4 v1, 0x0

    .line 131
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    .line 132
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preScoreEnable:Ljava/lang/Boolean;

    .line 133
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preMode2ParamDic:Ljava/util/Map;

    .line 147
    iput-boolean v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeSecureRoom:Z

    .line 148
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoomPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$001(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$101(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Landroid/view/View;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method private handlePasswordSettingButtonTap()V
    .locals 2

    .line 617
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$10;

    invoke-direct {v0, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$10;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    .line 628
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;

    invoke-direct {v1}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;-><init>()V

    .line 629
    iput-object v0, v1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_changePasswordAction:Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog$IChangePasswordAction;

    .line 630
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoom:Z

    if-eqz v0, :cond_0

    const-string v0, "PWDHASHDUMMY"

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, v1, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->m_passwordHash:Ljava/lang/String;

    .line 631
    const-string v0, "NsCollaboPasswordSettingDialog"

    invoke-virtual {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboPasswordSettingDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onDone$0(Lcom/metamoji/ui/dialog/UiAlertDialog;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    .line 597
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "NsCollaboCommandUseSettingDialog.onDone"

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private tabButtonChanged(Z)V
    .locals 8

    if-eqz p1, :cond_1

    .line 419
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 424
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->setDate(ZLjava/util/Date;)V

    .line 428
    new-instance v1, Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$6;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$6;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    iget-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    const/4 v7, 0x1

    const/16 v4, 0x7b3

    const/16 v5, 0x7f5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/DateTimePickerDialog;-><init>(Landroid/content/Context;Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;IILjava/util/Date;Z)V

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    .line 434
    new-instance p1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$7;

    invoke-direct {p1, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$7;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/DateTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 440
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/DateTimePickerDialog;->show()V

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 442
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->setDate(ZLjava/util/Date;)V

    return-void
.end method


# virtual methods
.method changeEnabled()V
    .locals 2

    .line 367
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 368
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 369
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 370
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$5;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$5;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 378
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToJoinNoteSwitch:Lcom/metamoji/ui/common/UiSwitch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 379
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToOperationPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 381
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToSaveNoteAndCopyPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 384
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToEditOthersWritingsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 387
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToChangeGroupByStudentSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 390
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    if-nez v0, :cond_1

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnableSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 394
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateNoDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 395
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 396
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->setDate(ZLjava/util/Date;)V

    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 610
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x1

    .line 155
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->mV4Compatible:Z

    .line 157
    iget v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->mViewId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 162
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->setModal(Z)V

    .line 165
    iput-boolean v3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->mDone:Z

    .line 166
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->mCancel:Z

    .line 167
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->mClose:Z

    .line 169
    sget v2, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_room_setting:I

    iput v2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->mViewId:I

    .line 170
    sget v2, Lcom/metamoji/noteanytime/R$string;->CommandUseSettingDlg_Title:I

    iput v2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->mTitleId:I

    .line 171
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez v1, :cond_b

    if-nez p1, :cond_1

    goto/16 :goto_7

    .line 179
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 180
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 181
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 184
    sget p2, Lcom/metamoji/noteanytime/R$id;->allowToJoinNoteSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToJoinNoteSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 185
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 186
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToJoinNoteSwitchValue:Ljava/lang/Boolean;

    .line 191
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToJoinNoteSwitch:Lcom/metamoji/ui/common/UiSwitch;

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    .line 188
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 189
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToJoinNoteSwitchValue:Ljava/lang/Boolean;

    goto :goto_1

    .line 191
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v2, "allowToJoinNote"

    invoke-static {p2, v2, v0}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 195
    :goto_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->allowToOperationPageSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToOperationPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 196
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 197
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToOperationPageSwitchValue:Ljava/lang/Boolean;

    .line 202
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToOperationPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p2, :cond_3

    .line 199
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 200
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToOperationPageSwitchValue:Ljava/lang/Boolean;

    goto :goto_2

    .line 202
    :cond_3
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v2, "allowToOpePage"

    invoke-static {p2, v2, v3}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 205
    :goto_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->allowToSaveNoteAndCopyPageSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToSaveNoteAndCopyPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 206
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 207
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToSaveNoteAndCopyPageSwitchValue:Ljava/lang/Boolean;

    .line 212
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToSaveNoteAndCopyPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p2, :cond_4

    .line 209
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 210
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToSaveNoteAndCopyPageSwitchValue:Ljava/lang/Boolean;

    goto :goto_3

    .line 212
    :cond_4
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v2, "allowToSaveNote"

    invoke-static {p2, v2, v0}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 218
    :goto_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->allowToEditOthersWritingsSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToEditOthersWritingsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 219
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 220
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToEditOthersWritingsSwitchValue:Ljava/lang/Boolean;

    .line 225
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToEditOthersWritingsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p2, :cond_5

    .line 222
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 223
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToEditOthersWritingsSwitchValue:Ljava/lang/Boolean;

    goto :goto_4

    .line 225
    :cond_5
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v0, "allowToEditOths"

    invoke-static {p2, v0, v3}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 230
    :goto_4
    sget p2, Lcom/metamoji/noteanytime/R$id;->allowToChangeGroupByStudentSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToChangeGroupByStudentSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 231
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 232
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToChangeGroupByStudentSwitchValue:Ljava/lang/Boolean;

    .line 237
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToChangeGroupByStudentSwitch:Lcom/metamoji/ui/common/UiSwitch;

    if-eqz p2, :cond_6

    .line 234
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 235
    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToChangeGroupByStudentSwitchValue:Ljava/lang/Boolean;

    goto :goto_5

    .line 237
    :cond_6
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomSettingList:Ljava/util/List;

    const-string v0, "allowToChgGrp"

    invoke-static {p2, v0, v3}, Lcom/metamoji/ns/NsCollaboManager;->getBoolValueWithRoomSettingList(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result p2

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 243
    :goto_5
    sget p2, Lcom/metamoji/noteanytime/R$id;->passwordBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_passwordBtn:Lcom/metamoji/ui/common/UiButton;

    .line 244
    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 254
    sget p2, Lcom/metamoji/noteanytime/R$id;->scoreEnableSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnableSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 255
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 256
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnableSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-boolean p3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 258
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preScoreEnable:Ljava/lang/Boolean;

    if-nez p2, :cond_7

    .line 259
    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preScoreEnable:Ljava/lang/Boolean;

    .line 263
    :cond_7
    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 264
    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateNoDateBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateNoDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 265
    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateHasDateBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 266
    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->setDate(ZLjava/util/Date;)V

    .line 268
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 278
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioButton;->setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V

    .line 285
    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_changeMode:Z

    if-nez p2, :cond_8

    .line 288
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->changeEnabled()V

    goto :goto_6

    .line 293
    :cond_8
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_canEdit:Ljava/lang/Boolean;

    if-eqz p2, :cond_9

    .line 295
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    .line 296
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->changeEnabled()V

    goto :goto_6

    .line 298
    :cond_9
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    if-nez p2, :cond_a

    .line 300
    new-instance p2, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$4;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;)V

    invoke-direct {p2, p3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    .line 315
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_roomId:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->roomId:Ljava/lang/String;

    .line 316
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    invoke-virtual {p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->doInBackground()V

    .line 322
    :cond_a
    :goto_6
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->updatePasswordBtnLabel()V

    :cond_b
    :goto_7
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 5

    .line 451
    new-instance v0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$8;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Landroid/view/View;)V

    .line 571
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnableSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 572
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_preScoreEnable:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    .line 574
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 577
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p1

    const/4 v3, 0x1

    if-ne p1, v3, :cond_0

    .line 578
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MSG_ERR_SCORESETTING:I

    invoke-static {p1, v1, v2}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    .line 585
    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCORESETTING_MSG:I

    invoke-virtual {p1, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 586
    sget v3, Lcom/metamoji/noteanytime/R$string;->Msg_YES:I

    new-instance v4, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$9;

    invoke-direct {v4, p0, v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$9;-><init>(Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;Lcom/metamoji/ns/INsCollaboAction;)V

    invoke-virtual {p1, v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 592
    sget v0, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 594
    invoke-virtual {p1, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 595
    new-instance v0, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 596
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object p1

    .line 597
    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/ui/dialog/UiAlertDialog;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->runWithActivity(Lcom/metamoji/ui/UiCurrentActivityManager$ICallWithActivity;)V

    return-void

    .line 599
    :cond_1
    invoke-interface {v0, v1}, Lcom/metamoji/ns/INsCollaboAction;->action(Z)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 341
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToJoinNoteSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToJoinNoteSwitchValue:Ljava/lang/Boolean;

    .line 342
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToOperationPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToOperationPageSwitchValue:Ljava/lang/Boolean;

    .line 344
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToSaveNoteAndCopyPageSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToSaveNoteAndCopyPageSwitchValue:Ljava/lang/Boolean;

    .line 347
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToEditOthersWritingsSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToEditOthersWritingsSwitchValue:Ljava/lang/Boolean;

    .line 350
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_allowToChangeGroupByStudentSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_saveAllowToChangeGroupByStudentSwitchValue:Ljava/lang/Boolean;

    .line 352
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnableSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_scoreEnable:Z

    .line 355
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    if-eqz v0, :cond_0

    .line 356
    invoke-virtual {v0}, Lcom/metamoji/ui/DateTimePickerDialog;->dismiss()V

    .line 359
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setDate(ZLjava/util/Date;)V
    .locals 0

    .line 403
    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    if-eqz p1, :cond_0

    .line 405
    invoke-static {p2}, Lcom/metamoji/ns/NsShareViewCommand;->clearSecondsDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    .line 408
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    if-eqz p2, :cond_1

    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateHasDateBtn:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateNoDateBtn:I

    :goto_0
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 410
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_hasDate:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_date:Ljava/util/Date;

    if-eqz p1, :cond_2

    .line 411
    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->dateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 413
    :cond_2
    const-string p1, ""

    :goto_1
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/common/UiRadioButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updatePasswordBtnLabel()V
    .locals 2

    .line 638
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_secureRoom:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Password_Exist:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->DocumentSetting_Password_None:I

    .line 639
    :goto_0
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->m_passwordBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboCommandUseSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
