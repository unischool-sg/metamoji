.class public Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScDeadlineSettingDialog.java"


# static fields
.field static final ENDDATE_INTERVAL:I = 0x7

.field static final STARTDATE_INTERVAL:I = 0x1


# instance fields
.field public m_changeMode:Z

.field m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

.field m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

.field public m_endDate:Ljava/util/Date;

.field m_endDateBtn:Lcom/metamoji/ui/common/UiButton;

.field m_endDateChanged:Z

.field m_endDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

.field m_endDateParts:Landroid/widget/LinearLayout;

.field public m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field m_endModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

.field m_maxDate:Ljava/util/Date;

.field m_minDate:Ljava/util/Date;

.field m_needValidateionEndDate:Z

.field m_needValidateionStartDate:Z

.field public m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

.field m_prevStartModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

.field public m_startDate:Ljava/util/Date;

.field m_startDateBtn:Lcom/metamoji/ui/common/UiButton;

.field m_startDateChanged:Z

.field m_startDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

.field m_startDateParts:Landroid/widget/LinearLayout;

.field m_useEndDate:Z

.field m_useEndDateSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_useStartDate:Z

.field m_useStartDateSwitch:Lcom/metamoji/ui/common/UiSwitch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 83
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    const/4 v0, 0x0

    .line 109
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_changeMode:Z

    .line 111
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 113
    sget-object v0, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    return-void
.end method

.method static synthetic access$001(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;Landroid/view/View;)V
    .locals 0

    .line 45
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method private showActionMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/MenuEventListener;",
            "Landroid/view/View;",
            "I)V"
        }
    .end annotation

    .line 436
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 437
    invoke-static {v0, p3, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    const/high16 p3, -0x40000000    # -2.0f

    .line 438
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    float-to-int p3, p3

    .line 439
    invoke-virtual {v5, p3, p3}, Landroid/graphics/Rect;->inset(II)V

    .line 441
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    sget-object v6, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    move-object v3, p1

    move-object v4, p2

    move v8, p4

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;II)V

    return-void
.end method


# virtual methods
.method handleEndDateButtonTap()V
    .locals 8

    .line 634
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    if-eqz v0, :cond_0

    return-void

    .line 640
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    if-eqz v0, :cond_1

    .line 641
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 642
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v1, 0x1

    .line 643
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x7b3

    :goto_0
    move v4, v0

    .line 648
    new-instance v1, Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$20;

    invoke-direct {v3, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$20;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    iget-object v6, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    const/4 v7, 0x1

    const/16 v5, 0x7f5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/DateTimePickerDialog;-><init>(Landroid/content/Context;Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;IILjava/util/Date;Z)V

    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    .line 655
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$21;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$21;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/DateTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 661
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/DateTimePickerDialog;->show()V

    return-void
.end method

.method handleEndModeSelectButtonTap()V
    .locals 1

    const/4 v0, 0x0

    .line 378
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->modeSelectButtonTap(Z)V

    return-void
.end method

.method handleEndModeSelectMenuTap(Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 463
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateEndModeSelectBtnLabel()V

    .line 465
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateEndDateCtrlEnabled()V

    return-void
.end method

.method handlePrevStartModeSelectButtonTap()V
    .locals 1

    const/4 v0, 0x1

    .line 372
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->modeSelectButtonTap(Z)V

    return-void
.end method

.method handlePrevStartModeSelectMenuTap(Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 451
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updatePrevStartModeSelectBtnLabel()V

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateStartDateCtrlEnabled()V

    return-void
.end method

.method handleStartDateButtonTap()V
    .locals 8

    .line 520
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    if-eqz v0, :cond_0

    return-void

    .line 529
    :cond_0
    new-instance v1, Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$18;

    invoke-direct {v3, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$18;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    iget-object v6, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    const/4 v7, 0x1

    const/16 v4, 0x7b3

    const/16 v5, 0x7f5

    invoke-direct/range {v1 .. v7}, Lcom/metamoji/ui/DateTimePickerDialog;-><init>(Landroid/content/Context;Lcom/metamoji/ui/DateTimePickerDialog$OnDateTimeSetListener;IILjava/util/Date;Z)V

    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    .line 536
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$19;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$19;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/DateTimePickerDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 542
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    invoke-virtual {v0}, Lcom/metamoji/ui/DateTimePickerDialog;->show()V

    return-void
.end method

.method handleUseEndDateSwitchChanged(Z)V
    .locals 6

    .line 581
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    .line 582
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateEndDateSubParts()V

    .line 584
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    if-eqz p1, :cond_4

    .line 587
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->nowDate()Ljava/util/Date;

    move-result-object p1

    .line 590
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 592
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    if-eqz v0, :cond_1

    .line 595
    iget-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    goto :goto_0

    :cond_0
    move-object v2, p1

    .line 596
    :goto_0
    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    const/4 v0, 0x0

    .line 603
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateChanged:Z

    .line 604
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 605
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    const/4 v1, 0x7

    .line 606
    invoke-virtual {v0, p1, v1}, Ljava/util/Calendar;->add(II)V

    .line 607
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 608
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    if-eqz p1, :cond_3

    .line 609
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x1ee62800

    add-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 610
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 611
    invoke-virtual {v1, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gez v0, :cond_3

    move-object v1, p1

    .line 617
    :cond_3
    invoke-virtual {p0, v1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setEndDate(Ljava/util/Date;)V

    :cond_4
    return-void
.end method

.method handleUseStartDateSwitchChanged(Z)V
    .locals 3

    .line 476
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    .line 477
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateStartDateSubParts()V

    .line 479
    iget-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    if-eqz p1, :cond_3

    .line 482
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->nowDate()Ljava/util/Date;

    move-result-object p1

    .line 485
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateChanged:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    if-eqz v0, :cond_0

    .line 489
    invoke-virtual {v0, p1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-nez v1, :cond_2

    .line 495
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateChanged:Z

    .line 496
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 497
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p1, 0x5

    const/4 v2, 0x1

    .line 498
    invoke-virtual {v1, p1, v2}, Ljava/util/Calendar;->add(II)V

    .line 499
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    .line 502
    :cond_2
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setStartDate(Ljava/util/Date;Z)V

    :cond_3
    return-void
.end method

.method modeBtnStr(Z)Ljava/lang/String;
    .locals 5

    if-eqz p1, :cond_0

    .line 339
    new-instance p1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$9;

    invoke-direct {p1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$9;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    .line 342
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$10;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$10;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    .line 345
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    goto :goto_0

    .line 347
    :cond_0
    new-instance p1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$11;

    invoke-direct {p1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$11;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    .line 350
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$12;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$12;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    .line 353
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .line 357
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 358
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne v1, v4, :cond_1

    .line 359
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    if-nez v3, :cond_3

    const/4 p1, 0x0

    return-object p1

    .line 365
    :cond_3
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method modeSelectButtonTap(Z)V
    .locals 13

    if-eqz p1, :cond_0

    .line 389
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$13;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$13;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    .line 392
    new-instance v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$14;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$14;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    .line 395
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 396
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

    goto :goto_0

    .line 398
    :cond_0
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$15;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$15;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    .line 401
    new-instance v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$16;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$16;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    .line 404
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 405
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

    .line 409
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 411
    iget-boolean v5, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_changeMode:Z

    const/4 v6, 0x0

    move v7, v6

    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-ge v5, v8, :cond_4

    .line 412
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    const/4 v9, 0x1

    if-ne v2, v8, :cond_1

    move v10, v9

    goto :goto_2

    :cond_1
    move v10, v6

    .line 414
    :goto_2
    new-instance v11, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v11}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 415
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-static {v12}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 416
    invoke-virtual {v11, v8}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    if-eqz v10, :cond_2

    .line 418
    sget v8, Lcom/metamoji/noteanytime/R$drawable;->design1_check_34:I

    invoke-virtual {v11, v8}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 420
    :cond_2
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    if-eqz v10, :cond_3

    .line 422
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    sub-int/2addr v7, v9

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 425
    :cond_4
    new-instance v0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$17;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$17;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;Z)V

    invoke-direct {p0, v4, v0, v3, v7}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->showActionMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/MenuEventListener;Landroid/view/View;I)V

    return-void
.end method

.method newDate(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;
    .locals 2

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-nez p3, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    invoke-static {p3}, Lcom/metamoji/ns/NsShareViewCommand;->clearSecondsDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p3

    .line 702
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide p1

    sub-long/2addr v0, p1

    .line 703
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    .line 704
    invoke-virtual {p3}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    add-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 705
    invoke-virtual {p1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p1

    .line 707
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_maxDate:Ljava/util/Date;

    invoke-virtual {p1, p2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result p2

    if-lez p2, :cond_1

    .line 708
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_maxDate:Ljava/util/Date;

    :cond_1
    return-object p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method nowDate()Ljava/util/Date;
    .locals 1

    .line 691
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {v0}, Lcom/metamoji/ns/NsShareViewCommand;->roundMinutesDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    const/4 v0, 0x1

    .line 120
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setModal(Z)V

    .line 122
    sget v1, Lcom/metamoji/noteanytime/R$layout;->dialog_school_deadline_setting:I

    iput v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->mViewId:I

    .line 123
    sget v1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINESETTINGDLG_TITLE:I

    iput v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->mTitleId:I

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_c

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 132
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v6, 0x32

    const/4 v7, 0x0

    const/16 v2, 0x7f5

    const/16 v3, 0xb

    const/16 v4, 0x1f

    const/16 v5, 0x17

    .line 133
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 134
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_maxDate:Ljava/util/Date;

    const/4 v6, 0x0

    const/16 v2, 0x7b3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 135
    invoke-virtual/range {v1 .. v7}, Ljava/util/Calendar;->set(IIIIII)V

    .line 136
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_minDate:Ljava/util/Date;

    .line 139
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 140
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    .line 141
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateChanged:Z

    goto :goto_0

    .line 143
    :cond_1
    iput-boolean p3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    .line 144
    iput-boolean p3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateChanged:Z

    .line 147
    :goto_0
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    if-eqz p2, :cond_2

    .line 148
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    .line 149
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateChanged:Z

    goto :goto_1

    .line 151
    :cond_2
    iput-boolean p3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    .line 152
    iput-boolean p3, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateChanged:Z

    .line 156
    :goto_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->guidance1:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    const/16 v1, 0xd

    .line 157
    invoke-static {p2, v0, v1, v0, v0}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 158
    sget p2, Lcom/metamoji/noteanytime/R$id;->guidance2:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    .line 159
    invoke-static {p2, v0, v1, v0, v0}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 160
    sget p2, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/CustomMenuView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_customMenuView:Lcom/metamoji/ui/CustomMenuView;

    .line 161
    sget p2, Lcom/metamoji/noteanytime/R$id;->prevStartModeSelectBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

    .line 162
    new-instance v2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$1;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$1;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    sget p2, Lcom/metamoji/noteanytime/R$id;->startDateParts:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateParts:Landroid/widget/LinearLayout;

    .line 169
    sget p2, Lcom/metamoji/noteanytime/R$id;->useStartDateSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 170
    iget-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 171
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance v2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$2;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$2;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 177
    sget p2, Lcom/metamoji/noteanytime/R$id;->startDateGuidance:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

    .line 178
    invoke-static {p2, v0, v1, v0, v0}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 180
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$3;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$3;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {p2, v2}, Landroidx/appcompat/widget/AppCompatTextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 191
    sget p2, Lcom/metamoji/noteanytime/R$id;->startDateBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateBtn:Lcom/metamoji/ui/common/UiButton;

    .line 192
    new-instance v2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$4;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$4;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget p2, Lcom/metamoji/noteanytime/R$id;->endModeSelectBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

    .line 199
    new-instance v2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$5;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$5;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 205
    sget p2, Lcom/metamoji/noteanytime/R$id;->endDateParts:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateParts:Landroid/widget/LinearLayout;

    .line 206
    sget p2, Lcom/metamoji/noteanytime/R$id;->useEndDateSwitch:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 207
    iget-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 208
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance v2, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$6;

    invoke-direct {v2, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$6;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 214
    sget p2, Lcom/metamoji/noteanytime/R$id;->endDateGuidance:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/widget/AppCompatTextView;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

    .line 215
    invoke-static {p2, v0, v1, v0, v0}, Landroidx/core/widget/TextViewCompat;->setAutoSizeTextTypeUniformWithConfiguration(Landroid/widget/TextView;IIII)V

    .line 217
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

    new-instance v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$7;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$7;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {p2, v1}, Landroidx/appcompat/widget/AppCompatTextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 228
    sget p2, Lcom/metamoji/noteanytime/R$id;->endDateBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateBtn:Lcom/metamoji/ui/common/UiButton;

    .line 229
    new-instance v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$8;

    invoke-direct {v1, p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$8;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_changeMode:Z

    if-eqz p2, :cond_5

    .line 238
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-eq v1, v2, :cond_3

    move v1, v0

    goto :goto_2

    :cond_3
    move v1, p3

    :goto_2
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 239
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v2, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    if-eq v1, v2, :cond_4

    move v1, v0

    goto :goto_3

    :cond_4
    move v1, p3

    :goto_3
    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 243
    :cond_5
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    if-eqz p2, :cond_6

    .line 244
    invoke-virtual {p0, p2, p3}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setStartDate(Ljava/util/Date;Z)V

    .line 247
    :cond_6
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    if-eqz p2, :cond_7

    .line 248
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setEndDate(Ljava/util/Date;)V

    .line 252
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updatePrevStartModeSelectBtnLabel()V

    .line 254
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateStartDateCtrlEnabled()V

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateStartDateSubParts()V

    .line 259
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateEndModeSelectBtnLabel()V

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateEndDateCtrlEnabled()V

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->updateEndDateSubParts()V

    .line 267
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_changeMode:Z

    if-eqz p2, :cond_9

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    if-nez v1, :cond_8

    goto :goto_4

    :cond_8
    move v1, p3

    goto :goto_5

    :cond_9
    :goto_4
    move v1, v0

    :goto_5
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_needValidateionStartDate:Z

    if-eqz p2, :cond_b

    .line 268
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    if-nez p2, :cond_a

    goto :goto_6

    :cond_a
    move v0, p3

    :cond_b
    :goto_6
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_needValidateionEndDate:Z

    :cond_c
    :goto_7
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 2

    .line 722
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 723
    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    .line 725
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    if-nez v0, :cond_1

    .line 726
    iput-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    .line 730
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_needValidateionStartDate:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 731
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gtz v0, :cond_2

    .line 733
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINESETTINGDLG_MSG_PASTDATE_FORCANNOTSET:I

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 737
    :cond_2
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_needValidateionEndDate:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    if-eqz v0, :cond_3

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 738
    invoke-virtual {v0, v1}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-gtz v0, :cond_3

    .line 740
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DEADLINESETTINGDLG_MSG_PASTDATE_FORCANNOTSET:I

    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(Ljava/lang/String;)V

    return-void

    .line 744
    :cond_3
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_changeMode:Z

    if-nez v0, :cond_4

    .line 746
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void

    .line 751
    :cond_4
    new-instance v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;

    new-instance v1, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog$22;-><init>(Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;Landroid/view/View;)V

    invoke-direct {v0, v1}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;-><init>(Lcom/metamoji/ns/INsCollaboAction;)V

    .line 767
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->RoomId:Ljava/lang/String;

    .line 768
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->PrevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 769
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->EndMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    .line 770
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->StartDate:Ljava/util/Date;

    .line 771
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    iput-object p1, v0, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->EndDate:Ljava/util/Date;

    .line 772
    invoke-virtual {v0}, Lcom/metamoji/forSchool/task/ScCollaboBgTaskForUpdateDeadlineInfo;->doInBackground()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_dateTimePicker:Lcom/metamoji/ui/DateTimePickerDialog;

    if-eqz v0, :cond_0

    .line 280
    invoke-virtual {v0}, Lcom/metamoji/ui/DateTimePickerDialog;->dismiss()V

    .line 283
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method setEndDate(Ljava/util/Date;)V
    .locals 2

    .line 668
    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->clearSecondsDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    .line 670
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_minDate:Ljava/util/Date;

    .line 671
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-gez v1, :cond_1

    move-object p1, v0

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_maxDate:Ljava/util/Date;

    invoke-virtual {p1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v0

    if-lez v0, :cond_2

    .line 676
    iget-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_maxDate:Ljava/util/Date;

    .line 680
    :cond_2
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    .line 681
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->dateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method setStartDate(Ljava/util/Date;Z)V
    .locals 2

    .line 549
    invoke-static {p1}, Lcom/metamoji/ns/NsShareViewCommand;->clearSecondsDate(Ljava/util/Date;)Ljava/util/Date;

    move-result-object p1

    .line 551
    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_maxDate:Ljava/util/Date;

    .line 552
    :goto_0
    invoke-virtual {p1, v0}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v1

    if-lez v1, :cond_1

    move-object p1, v0

    :cond_1
    if-eqz p2, :cond_2

    .line 559
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    if-eqz p2, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    if-eqz v0, :cond_2

    .line 560
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDate:Ljava/util/Date;

    invoke-virtual {p0, p2, p1, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->newDate(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Ljava/util/Date;

    move-result-object p2

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    .line 565
    :goto_1
    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDate:Ljava/util/Date;

    .line 566
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->dateTimeString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    if-eqz p2, :cond_3

    .line 570
    invoke-virtual {p0, p2}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->setEndDate(Ljava/util/Date;)V

    :cond_3
    return-void
.end method

.method updateEndDateCtrlEnabled()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 304
    :goto_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateParts:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 306
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 307
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method updateEndDateSubParts()V
    .locals 4

    .line 625
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

    iget-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 626
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endDateBtn:Lcom/metamoji/ui/common/UiButton;

    iget-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useEndDate:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void
.end method

.method updateEndModeSelectBtnLabel()V
    .locals 2

    const/4 v0, 0x0

    .line 326
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->modeBtnStr(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_endModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method updatePrevStartModeSelectBtnLabel()V
    .locals 2

    const/4 v0, 0x1

    .line 317
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->modeBtnStr(Z)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 319
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartModeSelectBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setSubTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method updateStartDateCtrlEnabled()V
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_prevStartMode:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    sget-object v1, Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;->FREE:Lcom/metamoji/forSchool/ScSchoolManager$DeadlineMode;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 294
    :goto_0
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateParts:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 295
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDateSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiSwitch;->setEnabled(Z)V

    .line 296
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateBtn:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    return-void
.end method

.method updateStartDateSubParts()V
    .locals 4

    .line 511
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateGuidance:Landroidx/appcompat/widget/AppCompatTextView;

    iget-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setVisibility(I)V

    .line 512
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_startDateBtn:Lcom/metamoji/ui/common/UiButton;

    iget-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScDeadlineSettingDialog;->m_useStartDate:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    return-void
.end method
