.class public Lcom/metamoji/mazec/ui/MenuPopupWindow7N;
.super Lcom/metamoji/mazec/ui/MenuPopupWindow;
.source "MenuPopupWindow7N.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuPopupWindow;-><init>(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected arrange()V
    .locals 5

    .line 20
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuPopupWindow7N;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 22
    const-string v1, "id.menu_select_line_color"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/MenuSelectLineColor;

    .line 24
    const-string v2, "id.menu_select_line_width"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;

    .line 26
    const-string v3, "id.menu_select_filter"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/ui/MenuSelectFilter;

    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 28
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->getCountOfItemSpace()I

    move-result v1

    if-eqz v2, :cond_0

    .line 29
    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    .line 30
    invoke-virtual {v2, v1}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->setCountOfItemSpace(I)V

    :cond_0
    if-eqz v3, :cond_1

    .line 32
    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 33
    invoke-virtual {v3, v1}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setCountOfItemSpace(I)V

    .line 37
    :cond_1
    const-string v1, "id.im_menu_select_language_arranger"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;

    if-eqz v0, :cond_3

    .line 38
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->isLanguageMenuVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v3, :cond_2

    .line 39
    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 40
    invoke-virtual {v3}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->getCountOfItemSpace()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->setCountOfItemSpace(I)V

    return-void

    :cond_2
    if-eqz v2, :cond_3

    .line 41
    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 42
    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->getCountOfItemSpace()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->setCountOfItemSpace(I)V

    :cond_3
    return-void
.end method

.method protected loadView(Lcom/metamoji/mazec/MazecIms;)Landroid/view/View;
    .locals 8

    .line 49
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 50
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->canInputStroke()Z

    move-result v1

    .line 51
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v2

    .line 53
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    .line 54
    const-string v4, "layout.menu_popup_7n"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 57
    const-string v4, "id.menu_select_line_width"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;

    const/4 v5, 0x3

    const/16 v6, 0x8

    if-eqz v4, :cond_1

    if-eqz v1, :cond_0

    if-eq v2, v5, :cond_0

    .line 60
    iget v7, v0, Lcom/metamoji/mazec/MazecPreferences;->lineWidthType:I

    invoke-virtual {v4, v7}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->initView(I)V

    .line 61
    new-instance v7, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;

    invoke-direct {v7, p0, p1, v4}, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$1;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindow7N;Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/MenuSelectLineWidth;)V

    invoke-virtual {v4, v7}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->setOnSelectListener(Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;)V

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {v4, v6}, Lcom/metamoji/mazec/ui/MenuSelectLineWidth;->setVisibility(I)V

    .line 74
    :cond_1
    :goto_0
    const-string v4, "id.menu_select_line_color"

    invoke-static {v4}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/ui/MenuSelectLineColor;

    if-eqz v4, :cond_3

    if-eqz v1, :cond_2

    if-eq v2, v5, :cond_2

    .line 77
    iget v0, v0, Lcom/metamoji/mazec/MazecPreferences;->lineColor:I

    invoke-virtual {v4, v0}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->initView(I)V

    .line 78
    new-instance v0, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;

    invoke-direct {v0, p0, p1, v4}, Lcom/metamoji/mazec/ui/MenuPopupWindow7N$2;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindow7N;Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/MenuSelectLineColor;)V

    invoke-virtual {v4, v0}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->setOnSelectListener(Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;)V

    return-object v3

    .line 86
    :cond_2
    invoke-virtual {v4, v6}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->setVisibility(I)V

    :cond_3
    return-object v3
.end method
