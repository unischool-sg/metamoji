.class public Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "UnSurveyUnitResultDialog.java"

# interfaces
.implements Lcom/metamoji/un/survey/UnSurveyUnitEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;,
        Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;,
        Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;,
        Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public Result:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public Roll:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

.field public Settings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public UnitId:Ljava/lang/String;

.field public UserId:Ljava/lang/String;

.field public UserName:Ljava/lang/String;

.field m_allowAnswer:Z

.field m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_allowTeacherAnswer:Z

.field m_barChartData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_barChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

.field m_clearAllAnswerButton:Lcom/metamoji/ui/common/UiButton;

.field m_clearAnswerButton:Lcom/metamoji/ui/common/UiButton;

.field m_csvExporting:Z

.field m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

.field m_graphTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field m_isPublishResult:Z

.field m_myAnswer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_myRoll:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

.field m_outputCsvButton:Lcom/metamoji/ui/common/UiButton;

.field m_pieChartData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_pieChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

.field m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_questionText:Ljava/lang/String;

.field m_resultListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

.field m_resultListView:Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

.field m_settingsButton:Lcom/metamoji/ui/common/UiButton;

.field m_specData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_specLayout:Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;

.field m_specListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;

.field m_specListView:Landroid/widget/ListView;

.field m_surveyItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

.field m_updatingSettings:Z

.field m_yourAnswerListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

.field m_yourAnswerListView:Lcom/metamoji/forSchool/ui/ScListView;


# direct methods
.method public static synthetic $r8$lambda$0uJx7JjQmrOb3U5yTa92xu4IQWA(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$1YWcFa97GoeylvMX_prsLLHVgrY(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$onCreateView$4(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Xl9Pr8rurvNoJzjpq1Ru7wKqVk(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$onCreateView$6(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$7WW6FAcOXY2tVckRzV57c_ocEgE(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$onCreateView$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FJKOit5HSXf_gWD34ZR7lz1LLeY(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$onCreateView$7(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$L290PqTa9q4qSMvU8SJZdxwYjRs(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$onCreateView$9(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NKWujCgPILeqL2Q7CkuiTbvWDYE(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$onCreateView$3(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$SiqMeoVSNtr322hJbLOsgP5VoiY(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$handleClearAllAnswerButtonTap$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$eVwmYgP63hEwLSszfUVdYGqmWnE(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$resultChanged$11(Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pnZpsoQRyBDTXrex-pHehc2v_Gc(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$onCreateView$2(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qigpjJgkD3arM9jxs-bgyx_IrNc(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$pageDeactivationg$13()V

    return-void
.end method

.method public static synthetic $r8$lambda$xTQwN-O6ikJlU7c5h3NTNUtuUQk(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->lambda$settingsChanged$12(Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 292
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyItems:Ljava/util/List;

    const/4 v1, 0x1

    .line 248
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_isPublishResult:Z

    .line 249
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 250
    const-string v2, ""

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_questionText:Ljava/lang/String;

    .line 251
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 252
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    const/4 v2, 0x0

    .line 253
    iput-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowTeacherAnswer:Z

    .line 289
    iput-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_updatingSettings:Z

    .line 666
    iput-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_csvExporting:Z

    .line 294
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->mCentering:Z

    .line 296
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    .line 297
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    return-void
.end method

.method private handleClearAllAnswerButtonTap()V
    .locals 3

    .line 763
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CLEAR_ALL_ANSWERS_MESSAGE:I

    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lcom/metamoji/cm/CmUtils;->yesNoDialog(IILandroid/content/DialogInterface$OnClickListener;Z)V

    return-void
.end method

.method private handleClearAnswerButtonTap()V
    .locals 4

    .line 743
    iget-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 746
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->setAnimationEffect(Z)V

    const/4 v0, 0x0

    .line 747
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->onDone(Landroid/view/View;)V

    .line 749
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_RESET_ANSWER:Lcom/metamoji/nt/NtCommand;

    .line 750
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 751
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UnitId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 752
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_ID:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UserId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 753
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_ROLL:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Roll:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    invoke-virtual {v3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 754
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_NAME:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UserName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 756
    invoke-static {v0, v1}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->executeCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method private handleSettingsButtonTap()V
    .locals 2

    const/4 v0, 0x0

    .line 776
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->setAnimationEffect(Z)V

    const/4 v0, 0x0

    .line 777
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->onDone(Landroid/view/View;)V

    .line 779
    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_EDIT_SETTINGS:Lcom/metamoji/nt/NtCommand;

    .line 780
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UnitId:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->executeCommand(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$handleClearAllAnswerButtonTap$10(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 764
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->setAnimationEffect(Z)V

    const/4 p1, 0x0

    .line 765
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->onDone(Landroid/view/View;)V

    .line 767
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_CLEAR_RESULT:Lcom/metamoji/nt/NtCommand;

    .line 768
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UnitId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->executeCommand(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 333
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 343
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 338
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 348
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method static synthetic lambda$onCreateView$1(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 357
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 362
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 372
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method private synthetic lambda$onCreateView$2(Landroid/view/View;)V
    .locals 0

    .line 377
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_outputCsvButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->handleOutputCsvButtonTap(Lcom/metamoji/ui/common/UiButton;)V

    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 382
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_pie_chart:I

    if-ne p1, p2, :cond_0

    .line 383
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    goto :goto_0

    .line 384
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_bar_chart:I

    if-ne p1, p2, :cond_1

    .line 385
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->BarChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    goto :goto_0

    .line 386
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_table:I

    if-ne p1, p2, :cond_2

    .line 387
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->Table:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    goto :goto_0

    .line 388
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_spec_table:I

    if-ne p1, p2, :cond_3

    .line 389
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->SpecTable:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 391
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->updateResultView()V

    return-void
.end method

.method private synthetic lambda$onCreateView$4(Landroid/view/View;)V
    .locals 0

    .line 435
    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->handleClearAnswerButtonTap()V

    return-void
.end method

.method static synthetic lambda$onCreateView$5(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 457
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 452
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 462
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method private synthetic lambda$onCreateView$6(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 507
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 508
    iget-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_updatingSettings:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_EDIT_SETTINGS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 509
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_ALLOW_ANSWER:Lcom/metamoji/nt/NtCommand;

    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UnitId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->executeCommand(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void

    .line 511
    :cond_0
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$7(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 520
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    .line 521
    iget-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_updatingSettings:Z

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_EDIT_SETTINGS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 522
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_PUBLISH_RESULT:Lcom/metamoji/nt/NtCommand;

    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UnitId:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->executeCommand(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V

    return-void

    .line 524
    :cond_0
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_isPublishResult:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$8(Landroid/view/View;)V
    .locals 0

    .line 538
    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->handleClearAllAnswerButtonTap()V

    return-void
.end method

.method private synthetic lambda$onCreateView$9(Landroid/view/View;)V
    .locals 0

    .line 546
    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->handleSettingsButtonTap()V

    return-void
.end method

.method private synthetic lambda$pageDeactivationg$13()V
    .locals 1

    .line 908
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$resultChanged$11(Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;)V
    .locals 1

    .line 852
    iget-object p1, p1, Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;->result:Ljava/util/Map;

    .line 853
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Result:Ljava/util/Map;

    .line 856
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->readDataFromResult()V

    .line 859
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->aggregateGraphData()V

    .line 860
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->generateGraphImage()V

    .line 862
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadResultTable()V

    .line 863
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadSpecTable()V

    .line 864
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadMyAnswerTable()V

    return-void
.end method

.method private synthetic lambda$settingsChanged$12(Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;)V
    .locals 2

    const/4 v0, 0x1

    .line 876
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_updatingSettings:Z

    const/4 v0, 0x0

    .line 879
    :try_start_0
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-nez v1, :cond_0

    .line 880
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CHANGED_SETTINGS_MESSAGE:I

    invoke-static {p1}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(I)V

    const/4 p1, 0x0

    .line 882
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->onDone(Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 900
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_updatingSettings:Z

    return-void

    .line 886
    :cond_0
    :try_start_1
    iget-object p1, p1, Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;->settings:Ljava/util/Map;

    .line 887
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->updateSettings(Ljava/util/Map;)V

    .line 890
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->readDataFromResult()V

    .line 893
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->aggregateGraphData()V

    .line 894
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->generateGraphImage()V

    .line 896
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadResultTable()V

    .line 897
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadSpecTable()V

    .line 898
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadMyAnswerTable()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 900
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_updatingSettings:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_updatingSettings:Z

    .line 901
    throw p1
.end method


# virtual methods
.method aggregateGraphData()V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Result:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyItems:Ljava/util/List;

    iget-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowTeacherAnswer:Z

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->aggregateGraphData(Ljava/util/Map;Ljava/util/List;ZZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_barChartData:Ljava/util/Map;

    .line 648
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Result:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyItems:Ljava/util/List;

    iget-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowTeacherAnswer:Z

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->aggregateGraphData(Ljava/util/Map;Ljava/util/List;ZZ)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartData:Ljava/util/Map;

    .line 649
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Result:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyItems:Ljava/util/List;

    iget-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowTeacherAnswer:Z

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->specData(Ljava/util/Map;Ljava/util/List;Z)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specData:Ljava/util/List;

    return-void
.end method

.method executeCommand(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;)V
    .locals 3

    .line 993
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 994
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 997
    :cond_0
    new-instance v1, Lcom/metamoji/cm/CmContext;

    invoke-direct {v1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 998
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_UNIT_ID:Ljava/lang/String;

    invoke-virtual {v1, v2, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 999
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    invoke-virtual {p2, p1, v1}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    return-void
.end method

.method extractCSVTextWithLineSeparator(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda8;-><init>(Ljava/lang/StringBuilder;)V

    .line 710
    new-instance v2, Lcom/metamoji/ce/io/CeCsvComposer;

    invoke-direct {v2}, Lcom/metamoji/ce/io/CeCsvComposer;-><init>()V

    .line 711
    invoke-virtual {v2, v1}, Lcom/metamoji/ce/io/CeCsvComposer;->setHandler(Lcom/metamoji/ce/io/CeCsvComposer$CeCsvComposerHandler;)V

    const/16 v1, 0x2c

    .line 712
    invoke-virtual {v2, v1}, Lcom/metamoji/ce/io/CeCsvComposer;->setColumnSeparator(C)V

    .line 713
    invoke-virtual {v2, p1}, Lcom/metamoji/ce/io/CeCsvComposer;->setLineSeparator(Ljava/lang/String;)V

    .line 716
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specData:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 717
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 718
    check-cast v1, Ljava/util/List;

    .line 719
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;->UserName:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;

    invoke-virtual {v3}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;->ordinal()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 720
    sget-object v4, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;->SelectedItems:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;

    invoke-virtual {v4}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;->ordinal()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 721
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 723
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 724
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 727
    :cond_0
    invoke-virtual {v2}, Lcom/metamoji/ce/io/CeCsvComposer;->startRow()V

    .line 728
    invoke-virtual {v2, v3}, Lcom/metamoji/ce/io/CeCsvComposer;->cell(Ljava/lang/String;)V

    .line 729
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 730
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x0

    invoke-virtual {v4, v3, v1}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/metamoji/ce/io/CeCsvComposer;->cell(Ljava/lang/String;)V

    .line 732
    :cond_1
    invoke-virtual {v2}, Lcom/metamoji/ce/io/CeCsvComposer;->endRow()V

    goto :goto_0

    .line 736
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method generateGraphImage()V
    .locals 2

    .line 641
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_barChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_barChartData:Ljava/util/Map;

    invoke-static {v1}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->generateBarChartImage(Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 642
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartData:Ljava/util/Map;

    invoke-static {v1}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->generatePieChartImage(Ljava/util/Map;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;
    .locals 1

    .line 635
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 636
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 637
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    return-object v0
.end method

.method handleOutputCsvButtonTap(Lcom/metamoji/ui/common/UiButton;)V
    .locals 8

    .line 668
    iget-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_csvExporting:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 671
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    const/4 v0, 0x1

    .line 672
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_csvExporting:Z

    .line 674
    const-string v1, "\r\n"

    .line 675
    invoke-virtual {p0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->extractCSVTextWithLineSeparator(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 677
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtDocument;->getDocumentTitle()Ljava/lang/String;

    move-result-object v2

    .line 678
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 680
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string/jumbo v5, "yyyyMMdd"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 681
    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CSV_FILENAME_FORMAT:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    .line 683
    const-string v6, "%@"

    const-string v7, "%s%s"

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 684
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".csv"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s_%s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 686
    const-string v3, "UTF-8"

    .line 687
    invoke-static {v1, v2, v3, v0}, Lcom/metamoji/nt/NtShare;->saveAsCSVFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 691
    :cond_1
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    .line 692
    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$1;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Lcom/metamoji/ui/common/UiButton;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 308
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_survey_result:I

    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->mViewId:I

    .line 309
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_SURVEY_RESULT:I

    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 310
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->mDone:Z

    .line 311
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->mBack:Z

    .line 312
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->mCancel:Z

    const/4 v1, 0x1

    .line 313
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->mClose:Z

    .line 315
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-eqz p3, :cond_0

    return-object p1

    .line 323
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->readDataFromSettings()V

    .line 324
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->readDataFromResult()V

    .line 327
    sget p2, Lcom/metamoji/noteanytime/R$id;->question_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 328
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_questionText:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v2, "Q. %s"

    invoke-static {v2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 331
    sget p2, Lcom/metamoji/noteanytime/R$id;->resultListView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListView:Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

    .line 332
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda10;

    invoke-direct {p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p2, p3}, Lcom/metamoji/un/survey/ui/UnSurveyResultListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 351
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListView:Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

    invoke-virtual {p2, v1}, Lcom/metamoji/un/survey/ui/UnSurveyResultListView;->setClickable(Z)V

    .line 352
    sget p2, Lcom/metamoji/noteanytime/R$id;->pieChartView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    .line 353
    sget p2, Lcom/metamoji/noteanytime/R$id;->barChartView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_barChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    .line 354
    sget p2, Lcom/metamoji/noteanytime/R$id;->specLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specLayout:Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;

    .line 355
    sget p2, Lcom/metamoji/noteanytime/R$id;->specListView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specListView:Landroid/widget/ListView;

    .line 356
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda11;

    invoke-direct {p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda11;-><init>()V

    invoke-virtual {p2, p3}, Landroid/widget/ListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 375
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specListView:Landroid/widget/ListView;

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setClickable(Z)V

    .line 376
    sget p2, Lcom/metamoji/noteanytime/R$id;->outputCsvButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_outputCsvButton:Lcom/metamoji/ui/common/UiButton;

    .line 377
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda12;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda12;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 379
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup_graph_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 380
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    invoke-virtual {p3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 381
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda13;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda13;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 393
    sget p2, Lcom/metamoji/noteanytime/R$id;->button_table:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioButton;

    .line 394
    sget p3, Lcom/metamoji/noteanytime/R$id;->button_spec_table:I

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/common/UiRadioButton;

    .line 395
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 396
    invoke-virtual {p2, v2}, Lcom/metamoji/ui/common/UiRadioButton;->setRadioButtonType(I)V

    .line 397
    invoke-virtual {p3, v3}, Lcom/metamoji/ui/common/UiRadioButton;->setVisibility(I)V

    .line 400
    :cond_1
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    if-nez p2, :cond_2

    .line 401
    new-instance p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    .line 402
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListView:Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

    invoke-virtual {p3, p2}, Lcom/metamoji/un/survey/ui/UnSurveyResultListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 404
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 406
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    invoke-virtual {p3, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->updateContext(Landroid/content/Context;)V

    .line 410
    :cond_3
    :goto_0
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;

    if-nez p2, :cond_4

    .line 411
    new-instance p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;

    .line 412
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specListView:Landroid/widget/ListView;

    invoke-virtual {p3, p2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 414
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 416
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;

    invoke-virtual {p3, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->updateContext(Landroid/content/Context;)V

    .line 420
    :cond_5
    :goto_1
    sget p2, Lcom/metamoji/noteanytime/R$id;->resultLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 421
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p3

    if-nez p3, :cond_7

    if-nez p3, :cond_6

    .line 422
    iget-boolean p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_isPublishResult:Z

    if-eqz p3, :cond_6

    goto :goto_2

    .line 425
    :cond_6
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 423
    :cond_7
    :goto_2
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 429
    :goto_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->yourAnswerLayout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 430
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_myAnswer:Ljava/util/List;

    if-eqz p3, :cond_a

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_a

    .line 431
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 433
    sget p2, Lcom/metamoji/noteanytime/R$id;->clearAnswerButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_clearAnswerButton:Lcom/metamoji/ui/common/UiButton;

    .line 434
    iget-boolean p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    .line 435
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_clearAnswerButton:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda14;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda14;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    .line 438
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    sget-object p3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_RESET_ANSWER:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, p3}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p2

    .line 439
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UserId:Ljava/lang/String;

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    if-eqz p2, :cond_8

    .line 440
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_clearAnswerButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_4

    .line 442
    :cond_8
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_clearAnswerButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 445
    :goto_4
    sget p2, Lcom/metamoji/noteanytime/R$id;->yourAnswerListView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/ScListView;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListView:Lcom/metamoji/forSchool/ui/ScListView;

    .line 446
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 465
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScListView;->setClickable(Z)V

    .line 467
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    if-nez p2, :cond_9

    .line 468
    new-instance p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    .line 469
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p3, p2}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 471
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadMyAnswerTable()V

    goto :goto_5

    .line 473
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_b

    .line 475
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    invoke-virtual {p3, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->updateContext(Landroid/content/Context;)V

    goto :goto_5

    .line 479
    :cond_a
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 483
    :cond_b
    :goto_5
    sget p2, Lcom/metamoji/noteanytime/R$id;->managementPanel:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    .line 484
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p3

    if-eqz p3, :cond_11

    .line 485
    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 486
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p2

    .line 487
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p3

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_EDIT_SETTINGS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p3, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p3

    .line 488
    invoke-virtual {p2}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p2

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_CLEAR_RESULT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p2, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p2

    .line 490
    sget v1, Lcom/metamoji/noteanytime/R$id;->managementTextView:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-nez p3, :cond_d

    if-eqz p2, :cond_c

    goto :goto_6

    .line 494
    :cond_c
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_7

    .line 492
    :cond_d
    :goto_6
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 497
    :goto_7
    sget v1, Lcom/metamoji/noteanytime/R$id;->switch_allow_answer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 498
    sget v1, Lcom/metamoji/noteanytime/R$id;->layout_allow_answer:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 499
    sget v2, Lcom/metamoji/noteanytime/R$id;->switch_publish_result_to_student:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 500
    sget v2, Lcom/metamoji/noteanytime/R$id;->layout_publish_result_to_student:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_e

    .line 503
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 504
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiSwitch;->setVisibility(I)V

    .line 505
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-boolean v4, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 506
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance v4, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda2;

    invoke-direct {v4, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 516
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 517
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiSwitch;->setVisibility(I)V

    .line 518
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_isPublishResult:Z

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 519
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto :goto_8

    .line 528
    :cond_e
    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 529
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiSwitch;->setVisibility(I)V

    .line 530
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 531
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiSwitch;->setVisibility(I)V

    .line 535
    :goto_8
    sget v1, Lcom/metamoji/noteanytime/R$id;->clearAllAnswerButton:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/common/UiButton;

    iput-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_clearAllAnswerButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p2, :cond_f

    .line 537
    invoke-virtual {v1, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 538
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_clearAllAnswerButton:Lcom/metamoji/ui/common/UiButton;

    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    invoke-virtual {p2, v1}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_9

    .line 540
    :cond_f
    invoke-virtual {v1, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 543
    :goto_9
    sget p2, Lcom/metamoji/noteanytime/R$id;->settingsButton:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_settingsButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz p3, :cond_10

    .line 545
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    .line 546
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_settingsButton:Lcom/metamoji/ui/common/UiButton;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_a

    .line 548
    :cond_10
    invoke-virtual {p2, v3}, Lcom/metamoji/ui/common/UiButton;->setVisibility(I)V

    goto :goto_a

    .line 551
    :cond_11
    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 555
    :goto_a
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Result:Ljava/util/Map;

    if-eqz p2, :cond_12

    .line 556
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->aggregateGraphData()V

    .line 557
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->generateGraphImage()V

    .line 559
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadResultTable()V

    .line 560
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->reloadSpecTable()V

    goto :goto_b

    .line 562
    :cond_12
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->generateGraphImage()V

    .line 565
    :goto_b
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->updateResultView()V

    .line 567
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    return-object p1
.end method

.method public onPause()V
    .locals 1

    .line 628
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    .line 629
    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->removeEventListener(Lcom/metamoji/un/survey/UnSurveyUnitEventListener;)V

    .line 631
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 620
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onResume()V

    .line 622
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    .line 623
    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->addEventListener(Lcom/metamoji/un/survey/UnSurveyUnitEventListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 657
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public pageDeactivationg()V
    .locals 2

    .line 907
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method readDataFromResult()V
    .locals 4

    .line 597
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Result:Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 599
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UserId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 600
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Result:Ljava/util/Map;

    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UserId:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    if-eqz v0, :cond_1

    .line 602
    const-string v2, "answer"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_myAnswer:Ljava/util/List;

    .line 603
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v2

    const-string/jumbo v3, "roll"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Student:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    invoke-virtual {v3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->ordinal()I

    move-result v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    aget-object v0, v2, v0

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_myRoll:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    .line 604
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->Teacher:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowTeacherAnswer:Z

    if-nez v0, :cond_0

    .line 605
    iput-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_myAnswer:Ljava/util/List;

    :cond_0
    return-void

    .line 608
    :cond_1
    iput-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_myAnswer:Ljava/util/List;

    return-void

    .line 611
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_myAnswer:Ljava/util/List;

    return-void

    .line 614
    :cond_3
    iput-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_myAnswer:Ljava/util/List;

    return-void
.end method

.method readDataFromSettings()V
    .locals 5

    .line 573
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 574
    const-string v3, "choices"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 576
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyItems:Ljava/util/List;

    .line 577
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const-string v3, "publish"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_isPublishResult:Z

    .line 578
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const-string v4, "graphType"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    invoke-virtual {v4}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->ordinal()I

    move-result v4

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 579
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const-string v3, "question"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_questionText:Ljava/lang/String;

    .line 580
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    move-result-object v0

    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const-string/jumbo v4, "type"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    sget-object v4, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    invoke-virtual {v4}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->ordinal()I

    move-result v4

    invoke-static {v3, v4}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v3

    aget-object v0, v0, v3

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 581
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const-string v3, "allowAnswer"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    .line 582
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const-string v3, "allowTeacherAnswer"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowTeacherAnswer:Z

    return-void

    .line 584
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyItems:Ljava/util/List;

    .line 586
    iput-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_isPublishResult:Z

    .line 587
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 588
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_questionText:Ljava/lang/String;

    .line 589
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 590
    iput-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    .line 591
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowTeacherAnswer:Z

    return-void
.end method

.method reloadMyAnswerTable()V
    .locals 4

    .line 976
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->clear()V

    .line 977
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_myAnswer:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 981
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 982
    check-cast v1, Ljava/lang/String;

    .line 983
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_surveyItems:Ljava/util/List;

    invoke-static {v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnitUtil;->itemForId(Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;

    move-result-object v1

    .line 984
    const-string v2, "itemName"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 986
    new-instance v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3, v3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 987
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_yourAnswerListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    invoke-virtual {v1, v2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public reloadResultTable()V
    .locals 9

    .line 934
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->clear()V

    .line 935
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartData:Ljava/util/Map;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 939
    :cond_0
    const-string/jumbo v1, "totalCount"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 940
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartData:Ljava/util/Map;

    const-string/jumbo v2, "result"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_7

    if-nez v0, :cond_1

    goto/16 :goto_3

    .line 944
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_TABLE_ITEM_VOTE:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 946
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 947
    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_3

    goto :goto_0

    .line 951
    :cond_3
    sget-object v4, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->Title:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;

    invoke-virtual {v4}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->ordinal()I

    move-result v4

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_2

    .line 953
    sget-object v5, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->Count:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;

    invoke-virtual {v5}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->ordinal()I

    move-result v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 954
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v6, v2}, [Ljava/lang/Object;

    move-result-object v6

    const-string v7, "%d%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_6

    .line 956
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-nez v7, :cond_4

    goto :goto_1

    :cond_4
    int-to-float v5, v5

    const/high16 v7, 0x42c80000    # 100.0f

    mul-float/2addr v5, v7

    .line 958
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    div-float v7, v5, v7

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v8

    int-to-float v8, v8

    div-float v8, v5, v8

    float-to-int v8, v8

    int-to-float v8, v8

    sub-float/2addr v7, v8

    const/4 v8, 0x0

    cmpl-float v7, v7, v8

    if-nez v7, :cond_5

    .line 959
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    float-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%d%%"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 961
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v7, "%.1f%%"

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 957
    :cond_6
    :goto_1
    const-string v5, "0%"

    .line 963
    :goto_2
    sget-object v7, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->Index:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;

    invoke-virtual {v7}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitResultData;->ordinal()I

    move-result v7

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 964
    invoke-static {v3}, Lcom/metamoji/un/survey/UnSurveyChartUtil;->fillColor(I)I

    move-result v3

    .line 965
    invoke-static {v3}, Lcom/metamoji/un/survey/UnSurveyChartUtil;->chooseTextColor(I)I

    move-result v7

    .line 966
    new-instance v8, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;

    invoke-direct {v8, v4, v6, v5}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    iput v3, v8, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_color:I

    .line 969
    iput v7, v8, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_textColor:I

    .line 970
    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;

    invoke-virtual {v3, v8}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->add(Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_7
    :goto_3
    return-void
.end method

.method public reloadSpecTable()V
    .locals 4

    .line 914
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->clear()V

    .line 915
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specData:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 919
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 920
    check-cast v1, Ljava/util/List;

    .line 921
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;->UserName:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;

    invoke-virtual {v2}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 923
    sget-object v3, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;->SelectedItems:Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;

    invoke-virtual {v3}, Lcom/metamoji/un/survey/UnSurveyUnitUtil$UnSurveyUnitSpecData;->ordinal()I

    move-result v3

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 924
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 925
    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 926
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specListDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public resultChanged(Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;)V
    .locals 2

    .line 846
    iget-object v0, p1, Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;->unitId:Ljava/lang/String;

    .line 847
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UnitId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 851
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public settingsChanged(Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;)V
    .locals 2

    .line 870
    iget-object v0, p1, Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;->unitId:Ljava/lang/String;

    .line 871
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UnitId:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 875
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateResultView()V
    .locals 4

    .line 784
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-ne v0, v1, :cond_0

    .line 785
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setVisibility(I)V

    .line 786
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_barChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setVisibility(I)V

    .line 787
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListView:Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyResultListView;->setVisibility(I)V

    .line 788
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specLayout:Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;->setVisibility(I)V

    return-void

    .line 789
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->BarChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    if-ne v0, v1, :cond_1

    .line 790
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setVisibility(I)V

    .line 791
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_barChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setVisibility(I)V

    .line 792
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListView:Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyResultListView;->setVisibility(I)V

    .line 793
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specLayout:Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;->setVisibility(I)V

    return-void

    .line 794
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->Table:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    if-ne v0, v1, :cond_2

    .line 795
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setVisibility(I)V

    .line 796
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_barChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setVisibility(I)V

    .line 797
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListView:Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/survey/ui/UnSurveyResultListView;->setVisibility(I)V

    .line 798
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specLayout:Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;->setVisibility(I)V

    return-void

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    sget-object v1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->SpecTable:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    if-ne v0, v1, :cond_3

    .line 800
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_pieChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setVisibility(I)V

    .line 801
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_barChartView:Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyChartImageView;->setVisibility(I)V

    .line 802
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_resultListView:Lcom/metamoji/un/survey/ui/UnSurveyResultListView;

    invoke-virtual {v0, v3}, Lcom/metamoji/un/survey/ui/UnSurveyResultListView;->setVisibility(I)V

    .line 803
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_specLayout:Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;

    invoke-virtual {v0, v2}, Lcom/metamoji/un/survey/ui/UnSurveySpecLayout;->setVisibility(I)V

    :cond_3
    return-void
.end method

.method updateSettings(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 808
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const-string v1, "publish"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v0

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 809
    :goto_0
    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    const-string v4, "allowAnswer"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 811
    :goto_1
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v4, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    .line 814
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->readDataFromSettings()V

    .line 817
    iget-boolean p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_isPublishResult:Z

    if-eq v0, p1, :cond_2

    move v0, v1

    goto :goto_2

    :cond_2
    move v0, v2

    .line 818
    :goto_2
    iget-boolean v4, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    if-eq v3, v4, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    const/4 v2, -0x1

    if-eqz v0, :cond_5

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    .line 821
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_PUBLIC_RESULT:I

    goto :goto_4

    .line 823
    :cond_4
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_PRIVATE_RESULT:I

    goto :goto_4

    :cond_5
    if-nez v0, :cond_7

    if-eqz v1, :cond_7

    if-eqz v4, :cond_6

    .line 827
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ALLOWED_ANSWER:I

    goto :goto_4

    .line 829
    :cond_6
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_DENIED_ANSWER:I

    goto :goto_4

    :cond_7
    if-eqz v0, :cond_8

    .line 832
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CHANGED_SETTINGS_MESSAGE:I

    goto :goto_4

    :cond_8
    move p1, v2

    .line 834
    :goto_4
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_isPublishResult:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 835
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    iget-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 836
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_clearAnswerButton:Lcom/metamoji/ui/common/UiButton;

    if-eqz v0, :cond_9

    .line 837
    iget-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->m_allowAnswer:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiButton;->setEnabled(Z)V

    :cond_9
    if-eq p1, v2, :cond_a

    .line 840
    invoke-static {p1}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(I)V

    :cond_a
    return-void
.end method
