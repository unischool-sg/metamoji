.class public Lcom/metamoji/mazec/ui/SelectFilterView;
.super Landroid/widget/LinearLayout;
.source "SelectFilterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;
    }
.end annotation


# static fields
.field private static final FILTER_NOT_SELECTED:I = 0x0

.field private static final FILTER_SELECTED:I = 0x1

.field private static final MODE_FILTER_LIST:I = 0x2

.field private static final MODE_SELECTED_FILTER:I = 0x1


# instance fields
.field private mDispMode:I

.field private mOnSelectFilterListener:Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

.field private mSelectedFilter:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnSelectFilterListener(Lcom/metamoji/mazec/ui/SelectFilterView;)Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mOnSelectFilterListener:Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDispMode(Lcom/metamoji/mazec/ui/SelectFilterView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mDispMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$monSelectFilter(Lcom/metamoji/mazec/ui/SelectFilterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/SelectFilterView;->onSelectFilter(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mOnSelectFilterListener:Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mDispMode:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mSelectedFilter:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mOnSelectFilterListener:Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mDispMode:I

    const/4 p1, 0x0

    .line 24
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mSelectedFilter:I

    return-void
.end method

.method private onSelectFilter(I)V
    .locals 1

    const/4 v0, 0x1

    .line 102
    iput v0, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mDispMode:I

    .line 103
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mSelectedFilter:I

    .line 105
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mOnSelectFilterListener:Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 106
    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;->onDispChange(Z)V

    .line 107
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mOnSelectFilterListener:Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    iget v0, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mSelectedFilter:I

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;->onSelect(I)V

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectFilterView;->updateView()V

    return-void
.end method

.method private setOnClickListener(II)V
    .locals 1

    .line 87
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/SelectFilterView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 89
    new-instance v0, Lcom/metamoji/mazec/ui/SelectFilterView$2;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/mazec/ui/SelectFilterView$2;-><init>(Lcom/metamoji/mazec/ui/SelectFilterView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initView(IZ)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    .line 47
    :goto_0
    iput p2, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mDispMode:I

    .line 48
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mSelectedFilter:I

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectFilterView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_1

    .line 52
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/ui/SelectFilterView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 53
    new-instance v2, Lcom/metamoji/mazec/ui/SelectFilterView$1;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/SelectFilterView$1;-><init>(Lcom/metamoji/mazec/ui/SelectFilterView;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_1
    const-string p1, "id.filter_palette_none"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectFilterView;->setOnClickListener(II)V

    .line 65
    const-string p1, "id.filter_palette_kanji"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    const/16 p2, 0x8

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectFilterView;->setOnClickListener(II)V

    .line 66
    const-string p1, "id.filter_palette_hiragana"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/metamoji/mazec/ui/SelectFilterView;->setOnClickListener(II)V

    .line 67
    const-string p1, "id.filter_palette_katakana"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/ui/SelectFilterView;->setOnClickListener(II)V

    .line 68
    const-string p1, "id.filter_palette_alphabet"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectFilterView;->setOnClickListener(II)V

    .line 69
    const-string p1, "id.filter_palette_number"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x4

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectFilterView;->setOnClickListener(II)V

    .line 70
    const-string p1, "id.filter_palette_symbol_ja"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x7

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectFilterView;->setOnClickListener(II)V

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectFilterView;->updateView()V

    return-void
.end method

.method public setDispSelected()V
    .locals 2

    .line 173
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mDispMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 174
    iput v0, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mDispMode:I

    .line 175
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectFilterView;->updateView()V

    .line 176
    iget-object v0, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mOnSelectFilterListener:Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 177
    invoke-interface {v0, v1}, Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;->onDispChange(Z)V

    :cond_0
    return-void
.end method

.method public setOnSelectFilterListener(Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;)V
    .locals 0

    .line 187
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mOnSelectFilterListener:Lcom/metamoji/mazec/ui/SelectFilterView$OnSelectFilterListener;

    return-void
.end method

.method public setSelectedFilter(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mSelectedFilter:I

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectFilterView;->updateView()V

    return-void
.end method

.method public updateView()V
    .locals 11

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectFilterView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_11

    const/4 v1, 0x0

    .line 120
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectFilterView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 121
    iget v3, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mDispMode:I

    const/4 v4, 0x7

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-ne v3, v9, :cond_8

    .line 122
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectFilterView;->setBackgroundResource(I)V

    .line 123
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v3, v9

    :goto_0
    if-ge v3, v0, :cond_0

    .line 125
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/SelectFilterView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v8}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 129
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mSelectedFilter:I

    if-eqz v0, :cond_7

    if-eq v0, v9, :cond_6

    if-eq v0, v7, :cond_5

    if-eq v0, v6, :cond_4

    if-eq v0, v5, :cond_3

    if-eq v0, v4, :cond_2

    if-eq v0, v8, :cond_1

    goto :goto_1

    :cond_1
    move v1, v9

    goto :goto_1

    :cond_2
    const/4 v1, 0x6

    goto :goto_1

    :cond_3
    const/4 v1, 0x5

    goto :goto_1

    :cond_4
    move v1, v5

    goto :goto_1

    :cond_5
    move v1, v6

    goto :goto_1

    :cond_6
    move v1, v7

    .line 139
    :cond_7
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void

    .line 141
    :cond_8
    const-string v3, "drawable.filter_palette_back"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/SelectFilterView;->setBackgroundResource(I)V

    .line 142
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    move v2, v9

    :goto_2
    if-ge v2, v0, :cond_9

    .line 144
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/SelectFilterView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 145
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 146
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 149
    :cond_9
    const-string v0, "id.filter_palette_none"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 150
    iget v2, p0, Lcom/metamoji/mazec/ui/SelectFilterView;->mSelectedFilter:I

    if-eqz v2, :cond_10

    if-eq v2, v9, :cond_f

    if-eq v2, v7, :cond_e

    if-eq v2, v6, :cond_d

    if-eq v2, v5, :cond_c

    if-eq v2, v4, :cond_b

    if-eq v2, v8, :cond_a

    goto :goto_3

    .line 153
    :cond_a
    const-string v0, "id.filter_palette_kanji"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 158
    :cond_b
    const-string v0, "id.filter_palette_symbol_ja"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 157
    :cond_c
    const-string v0, "id.filter_palette_number"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 156
    :cond_d
    const-string v0, "id.filter_palette_alphabet"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 155
    :cond_e
    const-string v0, "id.filter_palette_katakana"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 154
    :cond_f
    const-string v0, "id.filter_palette_hiragana"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 152
    :cond_10
    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 160
    :goto_3
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectFilterView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_11

    .line 162
    invoke-virtual {v0, v9}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_11
    return-void
.end method
