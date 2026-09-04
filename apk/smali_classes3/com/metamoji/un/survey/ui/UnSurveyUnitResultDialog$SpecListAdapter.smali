.class Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "UnSurveyUnitResultDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpecListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;",
        ">;"
    }
.end annotation


# instance fields
.field private m_layoutInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;Landroid/content/Context;)V
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

    .line 165
    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;

    const/4 p1, 0x0

    .line 166
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 167
    const-string p1, "layout_inflater"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method createSpecListCtrl(Landroid/view/View;Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 206
    sget v3, Lcom/metamoji/noteanytime/R$id;->userNameView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const/4 v4, 0x0

    .line 207
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 208
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 209
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 210
    iget-object v5, v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;->_userName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    sget v3, Lcom/metamoji/noteanytime/R$id;->itemNameView:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 214
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    .line 215
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setClickable(Z)V

    .line 216
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V

    .line 218
    iget-object v5, v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;->_items:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 219
    iget-object v2, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;

    invoke-virtual {v2}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_UNANSWERED:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1

    .line 222
    :cond_0
    invoke-virtual {v3}, Landroid/widget/TextView;->getMinWidth()I

    move-result v5

    int-to-double v5, v5

    double-to-int v5, v5

    .line 223
    invoke-virtual {v0, v5}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->pxToDp(I)I

    move-result v5

    int-to-double v5, v5

    .line 224
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    iget-object v2, v2, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;->_items:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const/4 v10, 0x0

    const/high16 v11, 0x41600000    # 14.0f

    .line 226
    invoke-static {v8, v10, v11}, Lcom/metamoji/un/text/sprite/TextSprite;->getSizeOfStringWithFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;

    move-result-object v12

    .line 227
    iget v13, v12, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v13, v13

    cmpg-double v13, v5, v13

    if-gez v13, :cond_2

    .line 229
    const-string v13, ""

    const/4 v14, 0x1

    .line 230
    :goto_1
    iget v12, v12, Lcom/metamoji/cm/SizeF;->width:F

    const/16 p2, 0x1

    float-to-double v9, v12

    cmpg-double v9, v5, v9

    if-gez v9, :cond_1

    .line 231
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v10, v14

    invoke-virtual {v8, v4, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "\u2026"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v15, 0x0

    .line 232
    invoke-static {v13, v15, v11}, Lcom/metamoji/un/text/sprite/TextSprite;->getSizeOfStringWithFont(Ljava/lang/String;Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;

    move-result-object v12

    add-int/lit8 v14, v14, 0x1

    move-object v10, v15

    goto :goto_1

    .line 235
    :cond_1
    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 237
    :cond_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    :goto_2
    const-string v8, "\n"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_3
    const/16 p2, 0x1

    .line 241
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v7, v4, v2}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 191
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;

    if-nez p2, :cond_0

    .line 194
    iget-object p2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    sget p3, Lcom/metamoji/noteanytime/R$layout;->dialog_survey_spec_list_item:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 196
    :cond_0
    instance-of p3, p2, Landroid/widget/LinearLayout;

    if-eqz p3, :cond_1

    .line 197
    move-object p3, p2

    check-cast p3, Landroid/widget/LinearLayout;

    const/high16 v0, 0x60000

    .line 198
    invoke-virtual {p3, v0}, Landroid/widget/LinearLayout;->setDescendantFocusability(I)V

    .line 201
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->createSpecListCtrl(Landroid/view/View;Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListItemData;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method protected pxToDp(I)I
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->this$0:Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;

    invoke-virtual {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    int-to-float p1, p1

    .line 183
    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000    # 160.0f

    div-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public updateContext(Landroid/content/Context;)V
    .locals 1

    .line 175
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog$SpecListAdapter;->m_layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
