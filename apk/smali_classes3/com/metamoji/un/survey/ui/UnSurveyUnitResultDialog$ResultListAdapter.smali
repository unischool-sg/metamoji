.class Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UnSurveyUnitResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 92
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 93
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method createResultListCtrl(Landroid/view/View;Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;)Landroid/view/View;
    .locals 4

    .line 122
    iget v0, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_color:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 125
    sget v0, Lcom/metamoji/noteanytime/R$id;->itemNameView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v1, 0x0

    .line 126
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 129
    iget-object v2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_itemName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget v2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_textColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    sget v0, Lcom/metamoji/noteanytime/R$id;->itemVoteView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 134
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 135
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 136
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 137
    iget v2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_textColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_itemVote:Ljava/lang/String;

    const/16 v3, 0x8

    if-eqz v2, :cond_0

    .line 139
    iget-object v2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_itemVote:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 146
    :goto_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->itemPercentView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 147
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setClickable(Z)V

    .line 149
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 150
    iget v2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_textColor:I

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 151
    iget-object v2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_itemPercent:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 152
    iget-object p2, p2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;->_itemPercent:Ljava/lang/String;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p1

    .line 155
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-object p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 108
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;

    if-nez p2, :cond_0

    .line 111
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_survey_result_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 113
    :cond_0
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    .line 114
    move-object p3, p2

    check-cast p3, Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    .line 115
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 118
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->createResultListCtrl(Landroid/view/View;Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListItemData;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 101
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$ResultListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
