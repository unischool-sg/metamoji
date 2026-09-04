.class public Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;
.super Lcom/metamoji/ui/dialog/NtDialog;
.source "UnSurveyUnitSettingsDialog.java"

# interfaces
.implements Lcom/metamoji/un/survey/UnSurveyUnitEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;,
        Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;,
        Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
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

.field m_addButton:Lcom/metamoji/ui/common/UiButton;

.field m_allowAnswer:Z

.field m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_allowTeacherAnswer:Z

.field m_allowTeacherAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

.field m_deleteButton:Lcom/metamoji/ui/common/UiButton;

.field m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

.field m_graphTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

.field m_isPublishResult:Z

.field m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

.field m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

.field m_questionText:Ljava/lang/String;

.field m_questionTextEdit:Lcom/metamoji/ui/common/UiEditText;

.field m_selectedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;",
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

.field m_surveyTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;


# direct methods
.method public static synthetic $r8$lambda$0E8ejWBSxz0mo57yfGR0yS1puTw(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$showSurveyItemEditViewController$10(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$0GVYoq9J6KQc3MEPb8vcrxVvMAA(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$9(Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6F3C-E6McRfjo-og6hfOLLjAPW0(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$8(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$9-pZ7ZQgVhjVUtUAd7NZvMjilF4(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$B3YI7ChsoZ0p6u_Q14qZ5wI1Rjc(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$pageDeactivationg$11()V

    return-void
.end method

.method public static synthetic $r8$lambda$HWm69HB_ieKO8bxeQeFTdTiC1Y8(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$5(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$T5yJiZATlXUWpu6iK_5AF9G2Qcw(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$d3zMyyt1_gCjZChD6BcshVcs-LU(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$7(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$lo8uuXAdmMLKgcb56_nk2Xt2IwA(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$1(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$p3i8dDUnsuTTr-zG1D15BTxVeAM(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$6(Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$wn_bhGhwfLycw6xsnvtZVdweHlg(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->lambda$onCreateView$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleSelectionChanged(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->handleSelectionChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 179
    invoke-direct {p0}, Lcom/metamoji/ui/dialog/NtDialog;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyItems:Ljava/util/List;

    const/4 v1, 0x1

    .line 153
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_isPublishResult:Z

    .line 154
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 155
    const-string v2, ""

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_questionText:Ljava/lang/String;

    .line 156
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    iput-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 157
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowAnswer:Z

    const/4 v2, 0x0

    .line 158
    iput-boolean v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowTeacherAnswer:Z

    .line 181
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->mCentering:Z

    .line 183
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_selectedItems:Ljava/util/List;

    return-void
.end method

.method private handleAddButtonTap()V
    .locals 1

    const/4 v0, 0x0

    .line 407
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->showSurveyItemEditViewController(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;)V

    return-void
.end method

.method private handleDeleteButtonTap()V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    .line 454
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 458
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method private handleItemClicked(I)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    .line 393
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->showSurveyItemEditViewController(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;)V

    return-void
.end method

.method private handleSelectionChanged()V
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

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

.method private synthetic lambda$onCreateView$0(Landroid/view/View;)V
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->handleAddButtonTap()V

    return-void
.end method

.method private synthetic lambda$onCreateView$1(Landroid/view/View;)V
    .locals 0

    .line 230
    invoke-direct {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->handleDeleteButtonTap()V

    return-void
.end method

.method private synthetic lambda$onCreateView$2(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 258
    invoke-direct {p0, p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->handleItemClicked(I)V

    return-void
.end method

.method private synthetic lambda$onCreateView$3(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 0

    .line 260
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ui/ScListView;->getSortable()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 264
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/metamoji/forSchool/ui/ScListView;->startDrag(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method static synthetic lambda$onCreateView$4(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    .line 267
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 282
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v1
.end method

.method private synthetic lambda$onCreateView$5(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 288
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->CheckBox:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    :goto_0
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    return-void
.end method

.method private synthetic lambda$onCreateView$6(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 292
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowTeacherAnswer:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$7(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 296
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowAnswer:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$8(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 300
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_isPublishResult:Z

    return-void
.end method

.method private synthetic lambda$onCreateView$9(Landroid/widget/RadioGroup;I)V
    .locals 0

    .line 305
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_pie_chart:I

    if-ne p1, p2, :cond_0

    .line 306
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    return-void

    .line 307
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->button_bar_chart:I

    if-ne p1, p2, :cond_1

    .line 308
    sget-object p1, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->BarChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    :cond_1
    return-void
.end method

.method private synthetic lambda$pageDeactivationg$11()V
    .locals 1

    .line 473
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->onCancel(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$showSurveyItemEditViewController$10(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-eqz p5, :cond_1

    if-nez p1, :cond_0

    .line 421
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->makeTicket()Ljava/lang/String;

    move-result-object p1

    .line 422
    iget-object p2, p2, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_newItemName:Ljava/lang/String;

    .line 423
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    invoke-direct {p3, p1, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {p1, p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0

    .line 426
    :cond_0
    iget-object p2, p2, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_newItemName:Ljava/lang/String;

    iput-object p2, p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;->_itemName:Ljava/lang/String;

    .line 428
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method alreadyItemList(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 437
    :goto_0
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 438
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    if-eqz v2, :cond_0

    .line 439
    iget-object v2, v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;->_itemName:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    .line 440
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_2

    .line 443
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;
    .locals 1

    .line 333
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 334
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 335
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .line 190
    sget v0, Lcom/metamoji/noteanytime/R$layout;->dialog_survey_settings:I

    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->mViewId:I

    .line 191
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_SETTINGS:I

    iput v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->mTitleId:I

    const/4 v0, 0x1

    .line 192
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->mDone:Z

    const/4 v1, 0x0

    .line 193
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->mBack:Z

    .line 194
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->mCancel:Z

    .line 196
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/ui/dialog/NtDialog;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 199
    iget-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->mClosingOnReconstruction:Z

    if-nez p2, :cond_a

    if-nez p1, :cond_0

    goto/16 :goto_7

    .line 203
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    if-eqz p2, :cond_4

    .line 204
    const-string p3, "choices"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    .line 206
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyItems:Ljava/util/List;

    .line 207
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const-string p3, "publish"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    if-ne p2, v0, :cond_1

    move p2, v0

    goto :goto_0

    :cond_1
    move p2, v1

    :goto_0
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_isPublishResult:Z

    .line 208
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const-string v2, "graphType"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    invoke-virtual {v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->ordinal()I

    move-result v2

    invoke-static {p3, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 209
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const-string p3, "question"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_questionText:Ljava/lang/String;

    .line 210
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const-string/jumbo v2, "type"

    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    invoke-virtual {v2}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->ordinal()I

    move-result v2

    invoke-static {p3, v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p3

    aget-object p2, p2, p3

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 211
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const-string p3, "allowAnswer"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    if-ne p2, v0, :cond_2

    move p2, v0

    goto :goto_1

    :cond_2
    move p2, v1

    :goto_1
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowAnswer:Z

    .line 212
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const-string p3, "allowTeacherAnswer"

    invoke-interface {p2, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;I)I

    move-result p2

    if-ne p2, v0, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    move p2, v1

    :goto_2
    iput-boolean p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowTeacherAnswer:Z

    goto :goto_3

    .line 214
    :cond_4
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    .line 215
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyItems:Ljava/util/List;

    .line 216
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_isPublishResult:Z

    .line 217
    sget-object p2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->PieChart:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    .line 218
    const-string p2, ""

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_questionText:Ljava/lang/String;

    .line 219
    sget-object p2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    .line 220
    iput-boolean v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowAnswer:Z

    .line 221
    iput-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowTeacherAnswer:Z

    .line 224
    :goto_3
    sget p2, Lcom/metamoji/noteanytime/R$id;->question_edit:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiEditText;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_questionTextEdit:Lcom/metamoji/ui/common/UiEditText;

    .line 225
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_questionText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiEditText;->setText(Ljava/lang/CharSequence;)V

    .line 227
    sget p2, Lcom/metamoji/noteanytime/R$id;->add_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_addButton:Lcom/metamoji/ui/common/UiButton;

    .line 228
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    sget p2, Lcom/metamoji/noteanytime/R$id;->delete_btn:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiButton;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_deleteButton:Lcom/metamoji/ui/common/UiButton;

    .line 230
    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda4;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 232
    sget p2, Lcom/metamoji/noteanytime/R$id;->listView:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/forSchool/ui/ScListView;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    .line 234
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    if-nez p2, :cond_7

    .line 235
    new-instance p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    .line 236
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyItems:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 237
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 238
    check-cast p3, Ljava/util/Map;

    .line 239
    const-string v2, "itemName"

    invoke-static {p3, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 240
    const-string v3, "itemId"

    invoke-static {p3, v3}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 242
    new-instance v3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    invoke-direct {v3, p3, v2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {p3, v3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->add(Ljava/lang/Object;)V

    goto :goto_4

    .line 246
    :cond_6
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_5

    .line 249
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    if-eqz p2, :cond_8

    .line 251
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {p3, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->updateContext(Landroid/content/Context;)V

    .line 255
    :cond_8
    :goto_5
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$DragListener;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setDragListener(Lcom/metamoji/ui/cabinet/SimpleDragListener;)V

    .line 256
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    invoke-virtual {p2, v0}, Lcom/metamoji/forSchool/ui/ScListView;->setSortable(Z)V

    .line 258
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda5;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 259
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda6;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 266
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_choiceListView:Lcom/metamoji/forSchool/ui/ScListView;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda7;

    invoke-direct {p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p2, p3}, Lcom/metamoji/forSchool/ui/ScListView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 286
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_survey_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 287
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->CheckBox:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    if-ne p3, v2, :cond_9

    goto :goto_6

    :cond_9
    move v0, v1

    :goto_6
    invoke-virtual {p2, v0}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 288
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyTypeSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda8;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 290
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_allow_teacher_answer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowTeacherAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 291
    iget-boolean p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowTeacherAnswer:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 292
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowTeacherAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda9;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 294
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_allow_answer:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 295
    iget-boolean p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowAnswer:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 296
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowAnswerSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda10;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 298
    sget p2, Lcom/metamoji/noteanytime/R$id;->switch_publish_result_to_student:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiSwitch;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

    .line 299
    iget-boolean p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_isPublishResult:Z

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setChecked(Z)V

    .line 300
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_publishResultSwitch:Lcom/metamoji/ui/common/UiSwitch;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda11;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda11;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiSwitch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 302
    sget p2, Lcom/metamoji/noteanytime/R$id;->radiogroup_graph_type:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/metamoji/ui/common/UiRadioGroup;

    iput-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    .line 303
    iget-object p3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    invoke-virtual {p3}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->ordinal()I

    move-result p3

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setCurrentButtonIndex(I)V

    .line 304
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphTypeRadioGroup:Lcom/metamoji/ui/common/UiRadioGroup;

    new-instance p3, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/common/UiRadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 312
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->restoreInstanceStateIfAvailable(Landroid/view/View;)Z

    :cond_a
    :goto_7
    return-object p1
.end method

.method public onDone(Landroid/view/View;)V
    .locals 5

    .line 354
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_questionTextEdit:Lcom/metamoji/ui/common/UiEditText;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 356
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_INPUT_QUESTION:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 359
    :cond_0
    iput-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_questionText:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->getCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 363
    sget p1, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_ITEM_COUNT_MESSAGE:I

    invoke-static {p1}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 368
    :goto_0
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 369
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;

    .line 370
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 371
    const-string v3, "itemId"

    iget-object v4, v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;->_itemId:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    const-string v3, "itemName"

    iget-object v1, v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;->_itemName:Ljava/lang/String;

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyItems:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 376
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_isPublishResult:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "publish"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    invoke-virtual {v1}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "type"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    iget-object v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_graphType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;

    invoke-virtual {v1}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyGraphType;->ordinal()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "graphType"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const-string v1, "question"

    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_questionText:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const-string v1, "choices"

    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_surveyItems:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowAnswer:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allowAnswer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    iget-boolean v1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->m_allowTeacherAnswer:Z

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "allowTeacherAnswer"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onDone(Landroid/view/View;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 326
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    .line 327
    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->removeEventListener(Lcom/metamoji/un/survey/UnSurveyUnitEventListener;)V

    .line 329
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 318
    invoke-super {p0}, Lcom/metamoji/ui/dialog/NtDialog;->onResume()V

    .line 320
    invoke-virtual {p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v0

    .line 321
    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->addEventListener(Lcom/metamoji/un/survey/UnSurveyUnitEventListener;)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 343
    invoke-super {p0, p1}, Lcom/metamoji/ui/dialog/NtDialog;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method public pageDeactivationg()V
    .locals 2

    .line 472
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resultChanged(Lcom/metamoji/un/survey/UnSurveyUnitResultChangedEventContext;)V
    .locals 0

    return-void
.end method

.method public settingsChanged(Lcom/metamoji/un/survey/UnSurveyUnitSettingsChangedEventContext;)V
    .locals 0

    return-void
.end method

.method showSurveyItemEditViewController(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;)V
    .locals 3

    .line 411
    new-instance v0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;

    invoke-direct {v0}, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;-><init>()V

    if-eqz p1, :cond_0

    .line 414
    iget-object v1, p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;->_itemName:Ljava/lang/String;

    .line 415
    iget-object v2, p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;->_itemName:Ljava/lang/String;

    iput-object v2, v0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_prevItemName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 417
    :goto_0
    invoke-virtual {p0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->alreadyItemList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->m_alreadyItemNameList:Ljava/util/List;

    .line 418
    new-instance v1, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog$ChoiceListItemData;Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 432
    const-string p1, "UnSurveyItemEditDialog"

    invoke-virtual {v0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyItemEditDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method
