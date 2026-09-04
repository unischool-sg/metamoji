.class public Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "NsCollaboRoomEditDialog.java"


# instance fields
.field m_canEdit:Ljava/lang/Boolean;

.field m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

.field m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

.field public m_completionAction:Lcom/metamoji/ns/INsShareViewCommandCompletionAction;

.field public m_date:Ljava/util/Date;

.field m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

.field public m_hasDate:Z

.field m_openDateGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field m_openDateNoDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

.field public m_roomId:Ljava/lang/String;

.field m_saveTitle:Ljava/lang/String;

.field public m_title:Ljava/lang/String;

.field m_titleEdit:Lcom/metamoji/ui/common/UiEditText;


# direct methods
.method static bridge synthetic -$$Nest$mtabButtonChanged(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->tabButtonChanged(Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    .line 46
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_canEdit:Ljava/lang/Boolean;

    .line 55
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_saveTitle:Ljava/lang/String;

    .line 56
    iput-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    return-void
.end method

.method private tabButtonChanged(Z)V
    .locals 8

    if-eqz p1, :cond_1

    .line 219
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 224
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_date:Ljava/util/Date;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->setDate(ZLjava/util/Date;)V

    .line 228
    new-instance v1, Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$5;

    invoke-direct {v3, p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$5;-><init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V

    iget-object v6, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_date:Ljava/util/Date;

    const/4 v7, 0x1

    const/16 v4, 0x7b3

    const/16 v5, 0x7f5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/DateTimePickerDialog;-><init>(Landroid/content/Context;Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;IILjava/util/Date;Z)V

    iput-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    .line 234
    new-instance p1, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$6;

    invoke-direct {p1, p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$6;-><init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V

    invoke-virtual {v1, p1}, Lcom/metamoji/ui/DateTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 240
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {p1}, Lcom/metamoji/ui/DateTimePickerDialog;->show()V

    return-void

    :cond_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 242
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->setDate(ZLjava/util/Date;)V

    return-void
.end method


# virtual methods
.method changeEnabled()V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v1, Lcom/metamoji/noteanytime/R$string;->Button_Done_J:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setTitle(I)V

    .line 184
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    sget v1, Lcom/metamoji/noteanytime/R$drawable;->control_button_header_purple:I

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setImageResource(I)V

    .line 185
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$4;-><init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButtonHeader;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateNoDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiRadioButton;->setEnabled(Z)V

    return-void
.end method

.method public onCancel(Landroid/view/View;)V
    .locals 0

    .line 298
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    const/4 v0, 0x1

    .line 75
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->mV4Compatible:Z

    .line 77
    iget v1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->mViewId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    if-eqz p3, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, v3

    .line 82
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->setModal(Z)V

    .line 85
    iput-boolean v3, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->mDone:Z

    .line 86
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->mCancel:Z

    .line 87
    iput-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->mClose:Z

    .line 89
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_collabo_room_edit:I

    iput v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->mViewId:I

    .line 90
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_CHANGE_START_DATE_TIME:I

    iput v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->mTitleId:I

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez v1, :cond_3

    if-nez p1, :cond_1

    goto/16 :goto_1

    .line 99
    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_left_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 100
    sget p2, Lcom/metamoji/noteanytime/R$id;->dlg_right_button:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButtonHeader;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_closeBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    .line 101
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_cancelBtn:Lcom/metamoji/ui/common/UiButtonHeader;

    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButtonHeader;->setVisibility(I)V

    .line 104
    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateGroup:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 105
    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateNoDateBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateNoDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 106
    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateHasDateBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    .line 107
    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_hasDate:Z

    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_date:Ljava/util/Date;

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->setDate(ZLjava/util/Date;)V

    .line 109
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$1;-><init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 119
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$2;-><init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioButton;->setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V

    .line 126
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_canEdit:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    .line 128
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->changeEnabled()V

    return-object p1

    .line 131
    :cond_2
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    if-nez p2, :cond_3

    .line 133
    new-instance p2, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    new-instance p3, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$3;-><init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V

    invoke-direct {p2, p3}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    iput-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    .line 148
    iget-object p3, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_roomId:Ljava/lang/String;

    iput-object p3, p2, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->roomId:Ljava/lang/String;

    .line 149
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_checkRoleTask:Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;

    invoke-virtual {p2}, Lcom/metamoji/ns/task/NsCollaboBgTaskForCheckRole;->doInBackground()V

    :cond_3
    :goto_1
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 255
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_title:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 259
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_title:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/metamoji/ui/cabinet/CabinetUtils;->getValidTitleError(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 260
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 261
    invoke-static {p1, v0, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 266
    :cond_1
    new-instance p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;

    new-instance v1, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;

    invoke-direct {v1, p0}, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog$7;-><init>(Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;)V

    invoke-direct {p1, v1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 282
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_roomId:Ljava/lang/String;

    iput-object v1, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->roomId:Ljava/lang/String;

    .line 283
    iget-object v1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_title:Ljava/lang/String;

    iput-object v1, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->title:Ljava/lang/String;

    .line 284
    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->date:Ljava/util/Date;

    .line 285
    iget-boolean v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_hasDate:Z

    if-eqz v0, :cond_2

    .line 286
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_date:Ljava/util/Date;

    iput-object v0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->date:Ljava/util/Date;

    .line 288
    :cond_2
    iput-object p0, p1, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->dialog:Lcom/metamoji/ui/dialog/NtDialog;

    .line 289
    invoke-virtual {p1}, Lcom/metamoji/ns/task/NsCollaboBgTaskForUpdateRoomTitleDate;->doInBackground()V

    return-void

    .line 256
    :cond_3
    :goto_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->RoomEditDlg_Error_No_RoomTitle:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Lcom/metamoji/cm/CmUtils;->confirmDialog(IILandroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Lcom/metamoji/ui/DateTimePickerDialog;->dismiss()V

    .line 174
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setDate(ZLjava/util/Date;)V
    .locals 0

    .line 204
    iput-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_hasDate:Z

    if-eqz p1, :cond_0

    .line 206
    invoke-static {p2}, Lcom/metamoji/ns/NsShareViewCommand;->clearSecondsDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_date:Ljava/util/Date;

    .line 209
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    iget-boolean p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_hasDate:Z

    if-eqz p2, :cond_1

    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateHasDateBtn:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->openDateNoDateBtn:I

    :goto_0
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButton(I)V

    .line 211
    iget-boolean p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_hasDate:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_date:Ljava/util/Date;

    if-eqz p1, :cond_2

    .line 212
    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->dateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 214
    :cond_2
    const-string p1, ""

    :goto_1
    iget-object p2, p0, Lcom/metamoji/ns/ui/NsCollaboRoomEditDialog;->m_openDateHasDateBtn:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p2, p1}, Lcom/metamoji/ui/common/UiRadioButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
