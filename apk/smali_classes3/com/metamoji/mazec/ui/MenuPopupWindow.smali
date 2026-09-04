.class public abstract Lcom/metamoji/mazec/ui/MenuPopupWindow;
.super Landroid/widget/PopupWindow;
.source "MenuPopupWindow.java"


# instance fields
.field private mDismissExecuter:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/metamoji/mazec/MazecIms;Ljava/lang/String;)V
    .locals 6

    .line 50
    invoke-direct {p0, p1}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    .line 36
    new-instance p2, Lcom/metamoji/mazec/ui/MenuPopupWindow$1;

    invoke-direct {p2, p0}, Lcom/metamoji/mazec/ui/MenuPopupWindow$1;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;)V

    iput-object p2, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow;->mDismissExecuter:Ljava/lang/Runnable;

    .line 52
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->loadView(Lcom/metamoji/mazec/MazecIms;)Landroid/view/View;

    move-result-object p2

    .line 53
    new-instance v0, Lcom/metamoji/mazec/ui/MenuPopupWindow$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/MenuPopupWindow$2;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    const-string v0, "id.linearLayoutTop"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 65
    new-instance v1, Lcom/metamoji/mazec/ui/MenuPopupWindow$3;

    invoke-direct {v1, p0}, Lcom/metamoji/mazec/ui/MenuPopupWindow$3;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 72
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 74
    invoke-static {p1}, Lcom/metamoji/mazec/LangResouceManager;->getInstance(Landroid/content/Context;)Lcom/metamoji/mazec/LangResouceManager;

    move-result-object v1

    const/4 v2, 0x1

    .line 75
    invoke-virtual {v1, v2, v2}, Lcom/metamoji/mazec/LangResouceManager;->getAvailableLanguages(ZZ)Ljava/util/List;

    move-result-object v1

    .line 76
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 78
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 79
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_1
    const-string v1, "id.im_menu_select_language_arranger"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;

    const/16 v3, 0x8

    .line 127
    invoke-virtual {v1, v3}, Lcom/metamoji/mazec/ui/MenuSelectLanguageArranger;->setVisibility(I)V

    .line 130
    const-string v1, "id.menu_select_input_mode"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/MenuSelectInputMode;

    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->initView(I)V

    .line 133
    new-instance v4, Lcom/metamoji/mazec/ui/MenuPopupWindow$6;

    invoke-direct {v4, p0, p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow$6;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;Lcom/metamoji/mazec/MazecIms;)V

    invoke-virtual {v1, v4}, Lcom/metamoji/mazec/ui/MenuSelectInputMode;->setOnSelectListener(Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;)V

    .line 143
    :cond_2
    const-string v1, "id.menu_select_filter"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/ui/MenuSelectFilter;

    if-eqz v1, :cond_4

    .line 145
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 146
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getLanguage()Ljava/lang/String;

    move-result-object v4

    .line 147
    invoke-virtual {v0, v4}, Lcom/metamoji/mazec/MazecPreferences;->getFilter(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0, v4}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->initView(ILjava/lang/String;)V

    .line 148
    new-instance v0, Lcom/metamoji/mazec/ui/MenuPopupWindow$7;

    invoke-direct {v0, p0, p1, v1}, Lcom/metamoji/mazec/ui/MenuPopupWindow$7;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/MenuSelectFilter;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnSelectListener(Lcom/metamoji/mazec/ui/MenuSelectBase$OnSelectListener;)V

    goto :goto_1

    .line 157
    :cond_3
    invoke-virtual {v1, v3}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setVisibility(I)V

    .line 163
    :cond_4
    :goto_1
    const-string v0, "id.menu_settings"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 165
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isSettingsEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    new-instance v4, Lcom/metamoji/mazec/ui/MenuPopupWindow$8;

    invoke-direct {v4, p0, p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow$8;-><init>(Lcom/metamoji/mazec/ui/MenuPopupWindow;Lcom/metamoji/mazec/MazecIms;)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_5
    const/4 v4, 0x4

    .line 174
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    :cond_6
    :goto_2
    const-string v0, "id.menu_mushroom"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 181
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v4

    invoke-static {v4}, Lcom/metamoji/mazec/MushProxyActivity;->hasMushIntents(Landroid/content/Context;)Z

    .line 193
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 198
    :cond_7
    const-string v0, "id.menu_input_method"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 208
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 213
    :cond_8
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 214
    const-string v3, "dimen.menu_popup_padding_top"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 215
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result p1

    const/4 v4, 0x3

    if-ne p1, v4, :cond_9

    .line 216
    const-string p1, "dimen.menu_popup_padding_bottom_keyboard"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_3

    .line 218
    :cond_9
    const-string p1, "dimen.menu_popup_padding_bottom"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 220
    :goto_3
    invoke-virtual {p2, v1, v3, v1, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 221
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 222
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 224
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->setTouchable(Z)V

    .line 225
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->setOutsideTouchable(Z)V

    .line 226
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->setClippingEnabled(Z)V

    return-void
.end method


# virtual methods
.method protected abstract arrange()V
.end method

.method protected delayedDismiss()V
    .locals 4

    .line 230
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow;->mDismissExecuter:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 232
    iget-object v1, p0, Lcom/metamoji/mazec/ui/MenuPopupWindow;->mDismissExecuter:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected abstract loadView(Lcom/metamoji/mazec/MazecIms;)Landroid/view/View;
.end method

.method public popup(Landroid/view/View;)V
    .locals 4

    .line 251
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    .line 253
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    .line 256
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 257
    invoke-virtual {p1, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 258
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 262
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->arrange()V

    .line 265
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, v0, Landroid/graphics/Rect;->top:I

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->showAtLocation(Landroid/view/View;III)V

    .line 266
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/mazec/ui/MenuPopupWindow;->update(II)V

    :cond_0
    return-void
.end method
