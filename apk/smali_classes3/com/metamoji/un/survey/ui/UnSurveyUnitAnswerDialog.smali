.class public Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "UnSurveyUnitAnswerDialog.java"

# interfaces
.implements Lcom/metamoji/un/survey/UnSurveyUnitEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;,
        Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public Answer:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
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

.field m_allowTeacherAnswer:Z

.field m_answerButton:Lcom/metamoji/ui/common/UiButton;

.field m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

.field m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

.field m_isPublishResult:Z

.field m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

.field m_questionText:Ljava/lang/String;

.field m_selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;",
            ">;"
        }
    .end annotation
.end field

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


# direct methods
.method public static synthetic $r8$lambda$-tkRCmO9XHD39nNeNGuRqSPABP4(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->lambda$settingsChanged$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$JQKeCKsCjqU87FZ2PVe24NtZfy0(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->lambda$pageDeactivationg$3()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 140
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 117
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyItems:Ljava/util/List;

    const/4 v1, 0x1

    .line 118
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_isPublishResult:Z

    .line 119
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 120
    const-string v2, ""

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_questionText:Ljava/lang/String;

    .line 121
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 122
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_allowAnswer:Z

    const/4 v2, 0x0

    .line 123
    iput-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_allowTeacherAnswer:Z

    .line 142
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->mCentering:Z

    .line 144
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    .line 145
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_selectedItems:Ljava/util/List;

    return-void
.end method

.method static synthetic lambda$onCreateView$0(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 196
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 201
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 211
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method static synthetic lambda$onCreateView$1(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 237
    sget p0, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    .line 238
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method

.method private synthetic lambda$pageDeactivationg$3()V
    .locals 1

    .line 324
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_answerButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$settingsChanged$2()V
    .locals 1

    .line 315
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_CHANGED_SETTINGS_MESSAGE:I

    invoke-static {v0}, Lcom/metamoji/ns/ui/NsCollaboProgressView;->toast(I)V

    .line 317
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_answerButton:Lcom/metamoji/ui/common/UiButton;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;
    .locals 1

    .line 265
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 267
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 157
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_survey_answer:I

    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->mViewId:I

    .line 158
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ANSWER_TO_SURVEY:I

    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->mTitleId:I

    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->mDone:Z

    .line 160
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->mBack:Z

    const/4 v1, 0x1

    .line 161
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->mCancel:Z

    .line 163
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    if-nez p3, :cond_9

    if-nez p1, :cond_0

    goto/16 :goto_5

    .line 170
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    if-eqz p2, :cond_4

    .line 171
    const-string p3, "choices"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 173
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyItems:Ljava/util/List;

    .line 174
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    const-string p3, "publish"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    if-ne p2, v1, :cond_1

    move p2, v1

    goto :goto_0

    :cond_1
    move p2, v0

    :goto_0
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_isPublishResult:Z

    .line 175
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    const-string v2, "graphType"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    invoke-virtual {v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->ordinal()I

    move-result v2

    invoke-static {p3, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 176
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    const-string p3, "question"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_questionText:Ljava/lang/String;

    .line 177
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    const-string/jumbo v2, "type"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    invoke-virtual {v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->ordinal()I

    move-result v2

    invoke-static {p3, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 178
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    const-string p3, "allowAnswer"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    if-ne p2, v1, :cond_2

    move p2, v1

    goto :goto_1

    :cond_2
    move p2, v0

    :goto_1
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_allowAnswer:Z

    .line 179
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    const-string p3, "allowTeacherAnswer"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    if-ne p2, v1, :cond_3

    move v0, v1

    :cond_3
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_allowTeacherAnswer:Z

    goto :goto_2

    .line 181
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    .line 182
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyItems:Ljava/util/List;

    .line 183
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_isPublishResult:Z

    .line 184
    sget-object p2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 185
    const-string p2, ""

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_questionText:Ljava/lang/String;

    .line 186
    sget-object p2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 187
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_allowAnswer:Z

    .line 188
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_allowTeacherAnswer:Z

    .line 191
    :goto_2
    sget p2, Lcom/metamoji/noteanytime/R$id;->question_text:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 192
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_questionText:Ljava/lang/String;

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    const-string v0, "Q. %s"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 194
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/ScListView;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    .line 195
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda1;

    invoke-direct {p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 214
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p2, v1}, Lcom/metamoji/forSchool/ui/ScListView;->setClickable(Z)V

    .line 216
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    if-nez p2, :cond_7

    .line 217
    new-instance p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    .line 218
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyItems:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 219
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 220
    check-cast p3, Ljava/util/Map;

    .line 221
    const-string v0, "itemName"

    invoke-static {p3, v0}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 222
    const-string v1, "itemId"

    invoke-static {p3, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 224
    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;

    invoke-direct {v1, p3, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    invoke-virtual {p3, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_3

    .line 228
    :cond_6
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_4

    .line 231
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 233
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    invoke-virtual {p3, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->updateContext(Landroid/content/Context;)V

    .line 236
    :cond_8
    :goto_4
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda2;

    invoke-direct {p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 241
    sget p2, Lcom/metamoji/noteanytime/R$id;->answer_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_answerButton:Lcom/metamoji/ui/common/UiButton;

    .line 242
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 244
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    :cond_9
    :goto_5
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 287
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ITEM_SELECT_MESSAGE:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 291
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Answer:Ljava/util/List;

    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 293
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;

    .line 294
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 295
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Answer:Ljava/util/List;

    iget-object v1, v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;->_itemId:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_2
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 258
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    .line 259
    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->removeEventListener(Lcom/metamoji/un/survey/UnSurveyUnitEventListener;)V

    .line 261
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 250
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onResume()V

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    .line 253
    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->addEventListener(Lcom/metamoji/un/survey/UnSurveyUnitEventListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 275
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public pageDeactivationg()V
    .locals 2

    .line 323
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resultChanged(Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;)V
    .locals 0

    return-void
.end method

.method public settingsChanged(Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;)V
    .locals 1

    .line 308
    iget-object p1, p1, Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;->unitId:Ljava/lang/String;

    .line 309
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->UnitId:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 313
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
