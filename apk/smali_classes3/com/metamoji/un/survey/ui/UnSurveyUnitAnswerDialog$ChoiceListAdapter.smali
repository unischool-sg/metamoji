.class Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UnSurveyUnitAnswerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChoiceListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;


# direct methods
.method public static synthetic $r8$lambda$d_oT3QphsS0TN2Eh9yFYtgohIHY(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->lambda$createChoiceListCtrl$0(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    const/4 p1, 0x0

    .line 56
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 57
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private synthetic lambda$createChoiceListCtrl$0(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;Landroid/widget/CompoundButton;Z)V
    .locals 1

    .line 92
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    iget-object p2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    if-ne p2, v0, :cond_0

    .line 93
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    iget-object p2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 98
    :cond_0
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    if-eqz p3, :cond_1

    .line 96
    iget-object p2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 98
    :cond_1
    iget-object p2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 100
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    iget-object p1, p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_surveyType:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    sget-object p2, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;->RadioButton:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyType;

    if-ne p1, p2, :cond_2

    .line 101
    iget-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    iget-object p1, p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_listDataAdapter:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;

    invoke-virtual {p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->notifyDataSetChanged()V

    :cond_2
    return-void
.end method


# virtual methods
.method createChoiceListCtrl(Landroid/view/View;Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;)Landroid/view/View;
    .locals 3

    .line 87
    sget v0, Lcom/metamoji/noteanytime/R$id;->checkBox:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    .line 88
    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    const/4 v2, 0x0

    .line 89
    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 90
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    iget-object v2, v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->m_selectedItems:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 91
    new-instance v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 107
    sget v0, Lcom/metamoji/noteanytime/R$id;->textView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 108
    iget-object p2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;->_itemName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 110
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 111
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 72
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;

    if-nez p2, :cond_0

    .line 75
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_survey_answer_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 77
    :cond_0
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    .line 78
    move-object p3, p2

    check-cast p3, Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    .line 79
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 82
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->createChoiceListCtrl(Landroid/view/View;Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListItemData;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 65
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog$ChoiceListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
