.class public Lcom/metamoji/mazec/ui/MenuSelectFilter;
.super Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;
.source "MenuSelectFilter.java"


# instance fields
.field private mLang:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mLang:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mLang:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getButtonId(I)I
    .locals 2

    .line 90
    const-string v0, "ja_JP"

    const-string v1, "id.filter_opt_none"

    packed-switch p1, :pswitch_data_0

    .line 116
    :pswitch_0
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 114
    :pswitch_1
    const-string p1, "id.filter_opt_hangul"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 113
    :pswitch_2
    const-string p1, "id.filter_opt_alnum"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 112
    :pswitch_3
    const-string p1, "id.filter_opt_lowercase"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 111
    :pswitch_4
    const-string p1, "id.filter_opt_uppercase"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 94
    :pswitch_5
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mLang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 95
    const-string p1, "id.filter_opt_kanji"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 96
    :cond_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mLang:Ljava/lang/String;

    const-string/jumbo v0, "zh_CN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 97
    const-string p1, "id.filter_opt_kanji_cn"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 98
    :cond_1
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mLang:Ljava/lang/String;

    const-string/jumbo v0, "zh_TW"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 99
    const-string p1, "id.filter_opt_kanji_tw"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 106
    :pswitch_6
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mLang:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 107
    const-string p1, "id.filter_opt_symbol_ja"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 109
    :cond_2
    const-string p1, "id.filter_opt_symbol_en"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 104
    :pswitch_7
    const-string p1, "id.filter_opt_number"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 103
    :pswitch_8
    const-string p1, "id.filter_opt_alphabet"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 102
    :pswitch_9
    const-string p1, "id.filter_opt_katakana"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 101
    :cond_3
    :pswitch_a
    const-string p1, "id.filter_opt_hiragana"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 92
    :pswitch_b
    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public getSelectedFilter()I
    .locals 1

    .line 84
    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mSelected:I

    return v0
.end method

.method public initView(ILjava/lang/String;)V
    .locals 6

    .line 47
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->initView(I)V

    .line 48
    invoke-static {p2}, Lcom/metamoji/mazec/util/LocaleUtil;->isLatinLanguage(Ljava/lang/String;)Z

    move-result p1

    .line 49
    const-string v0, "ja_JP"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 51
    iput-object p2, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mLang:Ljava/lang/String;

    .line 52
    const-string v1, "id.filter_opt_none"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v2, v3}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 53
    const-string v1, "id.filter_opt_alnum"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    xor-int/lit8 v4, p1, 0x1

    const/16 v5, 0xb

    invoke-virtual {p0, v1, v5, v4}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 54
    const-string v1, "id.filter_opt_kanji"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const/16 v4, 0x8

    invoke-virtual {p0, v1, v4, v0}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 55
    const-string v1, "id.filter_opt_kanji_cn"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "zh_CN"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 56
    const-string v1, "id.filter_opt_kanji_tw"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v5, "zh_TW"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    invoke-virtual {p0, v1, v4, v5}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 57
    const-string v1, "id.filter_opt_hangul"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    const-string v5, "ko_KR"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/16 v5, 0xc

    invoke-virtual {p0, v1, v5, p2}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 58
    const-string p2, "id.filter_opt_hiragana"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2, v3, v0}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 59
    const-string p2, "id.filter_opt_katakana"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x2

    invoke-virtual {p0, p2, v1, v0}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 60
    const-string p2, "id.filter_opt_alphabet"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    .line 61
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    .line 64
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageLevel(I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageLevel(I)V

    :goto_0
    const/4 v1, 0x3

    .line 68
    invoke-virtual {p0, p2, v1, v3}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 69
    const-string p2, "id.filter_opt_number"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x4

    invoke-virtual {p0, p2, v1, v3}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 70
    const-string p2, "id.filter_opt_symbol_ja"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/4 v1, 0x7

    invoke-virtual {p0, p2, v1, v0}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 71
    const-string p2, "id.filter_opt_uppercase"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0x9

    invoke-virtual {p0, p2, v2, p1}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 72
    const-string p2, "id.filter_opt_lowercase"

    invoke-static {p2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0xa

    invoke-virtual {p0, p2, v2, p1}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 73
    const-string p1, "id.filter_opt_symbol_en"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    xor-int/lit8 p2, v0, 0x1

    invoke-virtual {p0, p1, v1, p2}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setOnClickListener(IIZ)V

    .line 76
    invoke-virtual {p0, v4}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->setCountOfItemSpace(I)V

    return-void
.end method

.method protected setCountOfItemSpace(I)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->setCountOfItemSpace(I)V

    .line 122
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectFilter;->mLang:Ljava/lang/String;

    const-string v1, "ja_JP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x6

    :goto_0
    sub-int/2addr p1, v0

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_2

    .line 125
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "id.filter_opt_dummy_%d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MenuSelectFilter;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    const/4 v2, 0x4

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
