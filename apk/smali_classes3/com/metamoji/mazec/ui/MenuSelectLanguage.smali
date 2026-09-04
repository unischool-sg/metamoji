.class public Lcom/metamoji/mazec/ui/MenuSelectLanguage;
.super Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;
.source "MenuSelectLanguage.java"


# instance fields
.field private mLanguages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private setLangButtonImage(ILjava/lang/String;)V
    .locals 1

    .line 129
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 130
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    :try_start_0
    invoke-static {p2}, Lcom/metamoji/mazec/util/LocaleUtil;->getLanguageButtonImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 134
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 136
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_0
    return-void
.end method


# virtual methods
.method protected getButtonId(I)I
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "id.langButton"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method protected getCountOfLangButton()I
    .locals 1

    .line 95
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getCountOfLangButtonInRow()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    return v0
.end method

.method protected getCountOfLangButtonInRow()I
    .locals 1

    .line 98
    const-string v0, "id.im_lang_1st_row"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 99
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getSelectedLanguage()Ljava/lang/String;
    .locals 2

    .line 64
    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mSelected:I

    if-ltz v0, :cond_1

    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mSelected:I

    iget-object v1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mLanguages:Ljava/util/ArrayList;

    iget v1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mSelected:I

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public initView(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mLanguages:Ljava/util/ArrayList;

    .line 46
    invoke-interface {p1, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->initView(I)V

    .line 47
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 49
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getButtonId(I)I

    move-result v0

    invoke-virtual {p0, v0, p2}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->setOnClickListener(II)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getCountOfLangButtonInRow()I

    move-result p2

    .line 52
    const-string v0, "id.im_lang_2nd_row"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    if-gt p1, p2, :cond_1

    const/16 p1, 0x8

    .line 54
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 105
    invoke-super/range {p0 .. p5}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->onLayout(ZIIII)V

    move p2, p1

    move-object p1, p0

    if-eqz p2, :cond_1

    .line 106
    iget-object p2, p1, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mLanguages:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 107
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 108
    invoke-virtual {p0, p3}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getButtonId(I)I

    move-result p4

    if-eqz p4, :cond_0

    .line 110
    iget-object p5, p1, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {p5, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    invoke-direct {p0, p4, p5}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->setLangButtonImage(ILjava/lang/String;)V

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected setCountOfItemSpace(I)V
    .locals 6

    .line 79
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->setCountOfItemSpace(I)V

    .line 80
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->mLanguages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 81
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getCountOfLangButton()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    .line 82
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->getButtonId(I)I

    move-result v4

    invoke-virtual {p0, v4}, Lcom/metamoji/mazec/ui/MenuSelectLanguage;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    if-eqz v4, :cond_2

    if-ge v3, v0, :cond_0

    if-ge v3, p1, :cond_0

    .line 85
    invoke-virtual {v4, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_0
    if-ge v3, p1, :cond_1

    const/4 v5, 0x4

    .line 87
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    const/16 v5, 0x8

    .line 89
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
