.class public Lcom/metamoji/mazec/ui/MenuPopupWindowNA;
.super Lcom/metamoji/mazec/ui/MenuPopupWindow;
.source "MenuPopupWindowNA.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuPopupWindow;-><init>(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected arrange()V
    .locals 4

    .line 20
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuPopupWindowNA;->getContentView()Landroid/view/View;

    move-result-object v0

    .line 22
    const-string v1, "id.menu_select_filter"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/MenuSelectFilter;

    .line 24
    const-string v2, "id.menu_select_pen"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/ui/MenuSelectPen;

    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/MenuSelectPen;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    .line 26
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->getCountOfItemSpace()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/ui/MenuSelectPen;->setCountOfItemSpace(I)V

    .line 29
    :cond_0
    const-string v3, "id.im_menu_select_language_arranger"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;

    if-eqz v0, :cond_2

    .line 30
    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->isLanguageMenuVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    .line 32
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->getCountOfItemSpace()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->setCountOfItemSpace(I)V

    return-void

    :cond_1
    if-eqz v2, :cond_2

    .line 33
    invoke-virtual {v2}, Lcom/metamoji/mazec/ui/MenuSelectPen;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    const/16 v1, 0x8

    .line 35
    invoke-virtual {v2, v1}, Lcom/metamoji/mazec/ui/MenuSelectPen;->setCountOfItemSpace(I)V

    .line 36
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->setCountOfItemSpace(I)V

    :cond_2
    return-void
.end method

.method protected loadView(Lcom/metamoji/mazec/MazecIms;)Landroid/view/View;
    .locals 4

    .line 43
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 44
    const-string v1, "layout.menu_popup_na"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 47
    const-string v1, "id.menu_select_pen"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/MenuSelectPen;

    if-eqz v1, :cond_1

    .line 49
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->canInputStroke()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v2

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    .line 50
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getPenStyles()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getCurrentPenIndex()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/mazec/ui/MenuSelectPen;->initView(Ljava/util/List;I)V

    .line 51
    new-instance v2, Lcom/metamoji/mazec/ui/MenuPopupWindowNA$1;

    invoke-direct {v2, p0, p1}, Lcom/metamoji/mazec/ui/MenuPopupWindowNA$1;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindowNA;Lcom/metamoji/mazec/MazecIms;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/mazec/ui/MenuSelectPen;->setOnSelectListener(Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;)V

    return-object v0

    :cond_0
    const/16 p1, 0x8

    .line 59
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/ui/MenuSelectPen;->setVisibility(I)V

    :cond_1
    return-object v0
.end method
