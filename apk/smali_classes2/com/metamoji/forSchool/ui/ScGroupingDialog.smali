.class public Lcom/metamoji/forSchool/ui/ScGroupingDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "ScGroupingDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/forSchool/ui/ScGroupingDialog$ScGroupingStartType;,
        Lcom/metamoji/forSchool/ui/ScGroupingDialog$ScGroupingType;
    }
.end annotation


# instance fields
.field public m_groupList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_groupingButton:Landroid/widget/LinearLayout;

.field m_groupingHeadButton:Lcom/metamoji/ui/common/UiRadioButton;

.field m_groupingRandomButton:Lcom/metamoji/ui/common/UiRadioButton;

.field m_groupingStartType:I

.field m_groupingType:I

.field m_groupingTypeSpinner:Landroid/widget/Spinner;

.field m_isCollabo:Z

.field m_num:I

.field m_numList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field m_numSpinner:Landroid/widget/Spinner;

.field m_onlineOnlySwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_onlineStudentsCount:I

.field m_resetGroupingButton:Landroid/widget/LinearLayout;

.field m_studentsCount:I

.field m_userListForOnlineOrOffline:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_isCollabo:Z

    return-void
.end method


# virtual methods
.method getOnlineStudentsCount(Ljava/util/List;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 483
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 484
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 486
    const-string v2, "group-id"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 487
    const-string v3, "TEACHER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 491
    :cond_1
    const-string v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 493
    monitor-enter v1

    .line 494
    :try_start_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 495
    const-string v4, "user-id"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_userListForOnlineOrOffline:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 497
    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_userListForOnlineOrOffline:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 498
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 503
    :cond_3
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    return v0
.end method

.method getStudentsCount(Ljava/util/List;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 463
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 464
    check-cast v1, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 466
    const-string v2, "group-id"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 467
    const-string v3, "TEACHER"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 471
    :cond_1
    const-string v2, "user-list"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_0

    .line 473
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public handleResetGroupingButtonTap(Landroid/view/View;)V
    .locals 5

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 234
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 235
    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_0

    .line 237
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 239
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 243
    :cond_1
    const-string v3, "user-list"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_0

    .line 245
    monitor-enter v2

    .line 246
    :try_start_0
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 247
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 248
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 254
    :cond_2
    invoke-static {v0}, Lcom/metamoji/forSchool/ScSchoolUtils;->sortUserArray(Ljava/util/List;)V

    .line 257
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 258
    check-cast v2, Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 260
    const-string v3, "group-id"

    invoke-static {v2, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 262
    const-string v4, "TEACHER"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 265
    :cond_4
    const-string v4, "user-list"

    invoke-static {v2, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-eqz v2, :cond_3

    .line 267
    const-string v4, ""

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 268
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 275
    :cond_5
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 85
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_grouping:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->mViewId:I

    .line 86
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_AUTO_GROUPING:I

    iput v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 87
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->mDone:Z

    .line 89
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingStartType:I

    .line 90
    iput v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingType:I

    const/4 v1, 0x2

    .line 91
    iput v1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_num:I

    .line 93
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 95
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 97
    invoke-virtual {v3}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getUserListForOnlineOrOffline()Ljava/util/Map;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_userListForOnlineOrOffline:Ljava/util/Map;

    .line 100
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->isCollabo()Z

    move-result v2

    iput-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_isCollabo:Z

    goto :goto_0

    .line 104
    :cond_1
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_isCollabo:Z

    .line 106
    :goto_0
    iget-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_isCollabo:Z

    if-eqz v2, :cond_2

    .line 107
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->getOnlineStudentsCount(Ljava/util/List;)I

    move-result v2

    iput v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_onlineStudentsCount:I

    .line 110
    :cond_2
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->getStudentsCount(Ljava/util/List;)I

    move-result v2

    iput v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_studentsCount:I

    const/4 v2, 0x1

    .line 112
    iput-boolean v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->mV4Compatible:Z

    .line 113
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 116
    sget p2, Lcom/metamoji/noteanytime/R$id;->spinner_num:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numSpinner:Landroid/widget/Spinner;

    .line 117
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    .line 118
    new-instance p3, Ljava/lang/Integer;

    invoke-direct {p3, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance p2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    const v3, 0x1090008

    invoke-direct {p2, p3, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 121
    sget p3, Lcom/metamoji/noteanytime/R$layout;->school_spinner_drop_down_item:I

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 122
    iget-object p3, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numSpinner:Landroid/widget/Spinner;

    invoke-virtual {p3, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 123
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 124
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numSpinner:Landroid/widget/Spinner;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupingDialog$1;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog$1;-><init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 139
    sget p2, Lcom/metamoji/noteanytime/R$id;->spinner_grouping_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingTypeSpinner:Landroid/widget/Spinner;

    .line 140
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 141
    sget p3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GROUPING_BY_PERSON:I

    invoke-virtual {p0, p3}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    sget p3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_GROUPING_BY_GROUP_COUNT:I

    invoke-virtual {p0, p3}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->getString(I)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 143
    new-instance p3, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {p3, v1, v3, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 145
    sget p2, Lcom/metamoji/noteanytime/R$layout;->school_spinner_drop_down_item:I

    invoke-virtual {p3, p2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 146
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingTypeSpinner:Landroid/widget/Spinner;

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 147
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingTypeSpinner:Landroid/widget/Spinner;

    iget p3, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingType:I

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 148
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingTypeSpinner:Landroid/widget/Spinner;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupingDialog$2;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog$2;-><init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 162
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupingHeadButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingHeadButton:Lcom/metamoji/ui/common/UiRadioButton;

    .line 163
    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupingDialog$3;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog$3;-><init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioButton;->setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V

    .line 169
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupingRandomButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingRandomButton:Lcom/metamoji/ui/common/UiRadioButton;

    .line 170
    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupingDialog$4;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog$4;-><init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioButton;->setOnClickListener(Lcom/metamoji/ui/common/UiRadioButton$OnClickedListener;)V

    .line 176
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingHeadButton:Lcom/metamoji/ui/common/UiRadioButton;

    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiRadioButton;->setChecked(Z)V

    .line 180
    sget p2, Lcom/metamoji/noteanytime/R$id;->layout_onlineOnly:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .line 181
    iget-boolean p3, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_isCollabo:Z

    if-eqz p3, :cond_3

    .line 182
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_3
    const/16 p3, 0x8

    .line 184
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 187
    :goto_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_onlineOnly:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_onlineOnlySwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 188
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 189
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_onlineOnlySwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupingDialog$5;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog$5;-><init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 198
    sget p2, Lcom/metamoji/noteanytime/R$id;->resetGroupingBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_resetGroupingButton:Landroid/widget/LinearLayout;

    .line 199
    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupingDialog$6;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog$6;-><init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 208
    sget p2, Lcom/metamoji/noteanytime/R$id;->groupingBtn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingButton:Landroid/widget/LinearLayout;

    .line 209
    new-instance p3, Lcom/metamoji/forSchool/ui/ScGroupingDialog$7;

    invoke-direct {p3, p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog$7;-><init>(Lcom/metamoji/forSchool/ui/ScGroupingDialog;)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->updateNumSpinner()V

    .line 219
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 19

    move-object/from16 v1, p0

    .line 284
    iget-boolean v0, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_isCollabo:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_onlineOnlySwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v2

    .line 287
    :goto_0
    iget v3, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingType:I

    .line 298
    iget v4, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_num:I

    const/4 v5, 0x1

    if-ne v3, v5, :cond_2

    if-eqz v0, :cond_1

    .line 291
    iget v3, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_onlineStudentsCount:I

    .line 292
    div-int v6, v3, v4

    goto :goto_1

    .line 294
    :cond_1
    iget v3, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_studentsCount:I

    .line 295
    div-int v6, v3, v4

    :goto_1
    int-to-long v6, v6

    goto :goto_2

    :cond_2
    int-to-long v6, v4

    if-eqz v0, :cond_3

    .line 301
    iget v3, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_onlineStudentsCount:I

    .line 302
    div-int v4, v3, v4

    goto :goto_2

    .line 304
    :cond_3
    iget v3, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_studentsCount:I

    .line 305
    div-int v4, v3, v4

    .line 310
    :goto_2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 311
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 312
    iget-object v10, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_4
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 313
    check-cast v11, Ljava/util/Map;

    if-eqz v11, :cond_4

    .line 315
    const-string v12, "group-id"

    invoke-static {v11, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 317
    const-string v13, "TEACHER"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5

    goto :goto_3

    .line 321
    :cond_5
    const-string v12, "user-list"

    invoke-static {v11, v12}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    if-eqz v11, :cond_4

    .line 323
    monitor-enter v11

    .line 324
    :try_start_0
    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_4
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_8

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map;

    .line 325
    const-string v14, "user-id"

    invoke-static {v13, v14}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 327
    iget-object v15, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_userListForOnlineOrOffline:Ljava/util/Map;

    invoke-interface {v15, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    if-eqz v14, :cond_6

    .line 328
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 329
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 331
    :cond_6
    invoke-interface {v9, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 334
    :cond_7
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 337
    :cond_8
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-interface {v11}, Ljava/util/List;->clear()V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 337
    :try_start_1
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 344
    :cond_9
    iget v0, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingStartType:I

    if-nez v0, :cond_a

    .line 345
    invoke-static {v8}, Lcom/metamoji/forSchool/ScSchoolUtils;->sortUserArray(Ljava/util/List;)V

    .line 346
    invoke-static {v9}, Lcom/metamoji/forSchool/ScSchoolUtils;->sortUserArray(Ljava/util/List;)V

    goto :goto_5

    .line 348
    :cond_a
    invoke-static {v8}, Lcom/metamoji/forSchool/ScSchoolUtils;->shuffleArray(Ljava/util/List;)V

    .line 349
    invoke-static {v9}, Lcom/metamoji/forSchool/ScSchoolUtils;->sortUserArray(Ljava/util/List;)V

    .line 353
    :goto_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v10, v2

    :goto_6
    if-ge v10, v4, :cond_b

    .line 355
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    .line 357
    :cond_b
    iget v10, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupingType:I

    const-wide/16 v13, 0x0

    if-ne v10, v5, :cond_d

    .line 359
    rem-int/2addr v3, v4

    int-to-long v5, v3

    cmp-long v3, v5, v13

    if-eqz v3, :cond_c

    move v3, v2

    const-wide/16 v15, 0x1

    :goto_7
    int-to-long v11, v3

    cmp-long v7, v11, v5

    if-gez v7, :cond_e

    .line 362
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Long;

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    add-long/2addr v10, v15

    .line 364
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v0, v3, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_c
    const-wide/16 v15, 0x1

    goto :goto_8

    :cond_d
    const-wide/16 v15, 0x1

    int-to-long v10, v3

    .line 369
    rem-long/2addr v10, v6

    cmp-long v3, v10, v13

    if-eqz v3, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 372
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 377
    :cond_e
    :goto_8
    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    int-to-long v5, v3

    int-to-long v3, v4

    cmp-long v7, v5, v3

    if-gez v7, :cond_10

    move v7, v2

    :goto_9
    int-to-long v10, v7

    sub-long v17, v3, v5

    cmp-long v10, v10, v17

    if-gez v10, :cond_10

    .line 380
    iget-object v10, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-static {v10}, Lcom/metamoji/forSchool/ScSchoolUtils;->generateNewGroupName(Ljava/util/List;)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_f

    return-void

    .line 384
    :cond_f
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v11

    const-string v12, "group"

    invoke-virtual {v11, v12}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 385
    invoke-static {v11, v10}, Lcom/metamoji/forSchool/ScSchoolUtils;->createGroupDic(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v10

    .line 386
    iget-object v11, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 392
    :cond_10
    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_groupList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v4, v2

    :cond_11
    :goto_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 393
    check-cast v5, Ljava/util/Map;

    if-eqz v5, :cond_11

    .line 395
    const-string v6, "group-id"

    invoke-static {v5, v6}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 397
    const-string v7, "TEACHER"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    goto :goto_a

    .line 400
    :cond_12
    const-string v7, "user-list"

    invoke-static {v5, v7}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-eqz v5, :cond_11

    .line 402
    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 403
    invoke-interface {v5, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_a

    .line 405
    :cond_13
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v6

    if-nez v6, :cond_14

    goto :goto_a

    .line 408
    :cond_14
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-wide v10, v13

    :goto_b
    cmp-long v12, v10, v6

    if-gez v12, :cond_16

    .line 410
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map;

    .line 411
    invoke-interface {v5, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 412
    invoke-interface {v8, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 413
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-nez v12, :cond_15

    goto :goto_c

    :cond_15
    add-long/2addr v10, v15

    goto :goto_b

    :cond_16
    :goto_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 423
    :cond_17
    invoke-super/range {p0 .. p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 228
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method updateNumSpinner()V
    .locals 6

    .line 430
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_onlineOnlySwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiSwitch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_isCollabo:Z

    if-eqz v0, :cond_0

    .line 431
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_onlineStudentsCount:I

    goto :goto_0

    .line 433
    :cond_0
    iget v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_studentsCount:I

    .line 436
    :goto_0
    div-int/lit8 v0, v0, 0x2

    .line 438
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 440
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 441
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    const-string v3, "2"

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x3

    .line 443
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-gt v3, v0, :cond_1

    .line 444
    iget-object v3, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "%s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 443
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 447
    :cond_1
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1090008

    iget-object v4, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    invoke-direct {v0, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 449
    sget v2, Lcom/metamoji/noteanytime/R$layout;->school_spinner_drop_down_item:I

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 450
    iget-object v2, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 452
    iget-object v0, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 456
    iget-object v1, p0, Lcom/metamoji/forSchool/ui/ScGroupingDialog;->m_numSpinner:Landroid/widget/Spinner;

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    .line 454
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 456
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method
