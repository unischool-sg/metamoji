.class public Lcom/metamoji/mazec/ui/SelectColorView;
.super Landroid/widget/LinearLayout;
.source "SelectColorView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;
    }
.end annotation


# static fields
.field private static final COLOR_NOT_SELECTED:I = 0x0

.field private static final COLOR_SELECTED:I = 0x1

.field private static final MODE_COLOR_LIST:I = 0x2

.field private static final MODE_SELECTED_COLOR:I = 0x1


# instance fields
.field private mDispMode:I

.field private mOnSelectColorListener:Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

.field private mSelectedColor:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnSelectColorListener(Lcom/metamoji/mazec/ui/SelectColorView;)Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mOnSelectColorListener:Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDispMode(Lcom/metamoji/mazec/ui/SelectColorView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mDispMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$monSelectColor(Lcom/metamoji/mazec/ui/SelectColorView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/SelectColorView;->onSelectColor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mOnSelectColorListener:Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mDispMode:I

    .line 24
    sget p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    iput p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mOnSelectColorListener:Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    const/4 p1, 0x1

    .line 23
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mDispMode:I

    .line 24
    sget p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    iput p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    return-void
.end method

.method private onSelectColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mDispMode:I

    .line 99
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    .line 101
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mOnSelectColorListener:Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 102
    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;->onDispChange(Z)V

    .line 103
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mOnSelectColorListener:Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;->onSelect(I)V

    .line 106
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectColorView;->updateView()V

    return-void
.end method

.method private setOnClickListener(II)V
    .locals 1

    .line 83
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/SelectColorView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 85
    new-instance v0, Lcom/metamoji/mazec/ui/SelectColorView$2;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/mazec/ui/SelectColorView$2;-><init>(Lcom/metamoji/mazec/ui/SelectColorView;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public initView(IZ)V
    .locals 0

    if-eqz p2, :cond_0

    const/4 p2, 0x2

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 47
    :goto_0
    iput p2, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mDispMode:I

    .line 48
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectColorView;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 52
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/SelectColorView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 53
    new-instance p2, Lcom/metamoji/mazec/ui/SelectColorView$1;

    invoke-direct {p2, p0}, Lcom/metamoji/mazec/ui/SelectColorView$1;-><init>(Lcom/metamoji/mazec/ui/SelectColorView;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    :cond_1
    const-string p1, "id.color_palette_black"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLACK:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V

    .line 65
    const-string p1, "id.color_palette_gray"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GRAY:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V

    .line 66
    const-string p1, "id.color_palette_red"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_RED:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V

    .line 67
    const-string p1, "id.color_palette_blue"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLUE:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V

    .line 68
    const-string p1, "id.color_palette_green"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GREEN:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V

    .line 69
    const-string p1, "id.color_palette_yellow"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_YELLOW:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V

    .line 70
    const-string p1, "id.color_palette_white"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_WHITE:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V

    .line 71
    const-string p1, "id.color_palette_pink"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    sget p2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_PINK:I

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectColorView;->setOnClickListener(II)V

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectColorView;->updateView()V

    return-void
.end method

.method public setDispSelected()V
    .locals 2

    .line 197
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mDispMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 198
    iput v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mDispMode:I

    .line 199
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectColorView;->updateView()V

    .line 200
    iget-object v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mOnSelectColorListener:Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 201
    invoke-interface {v0, v1}, Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;->onDispChange(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 114
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/SelectColorView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectColorView;->setDispSelected()V

    :cond_0
    return-void
.end method

.method public setOnSelectColorListener(Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mOnSelectColorListener:Lcom/metamoji/mazec/ui/SelectColorView$OnSelectColorListener;

    return-void
.end method

.method public updateView()V
    .locals 7

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectColorView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v1, 0x0

    .line 130
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectColorView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 131
    iget v3, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mDispMode:I

    const/16 v4, 0x8

    const/4 v5, 0x1

    if-ne v3, v5, :cond_9

    .line 132
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectColorView;->setBackgroundResource(I)V

    .line 133
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v3, v5

    :goto_0
    if-ge v3, v0, :cond_0

    .line 135
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/SelectColorView;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 139
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLACK:I

    if-ne v0, v3, :cond_1

    goto :goto_1

    .line 141
    :cond_1
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GRAY:I

    if-ne v0, v3, :cond_2

    move v1, v5

    goto :goto_1

    .line 143
    :cond_2
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_WHITE:I

    if-ne v0, v3, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    .line 145
    :cond_3
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_RED:I

    if-ne v0, v3, :cond_4

    const/4 v1, 0x3

    goto :goto_1

    .line 147
    :cond_4
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLUE:I

    if-ne v0, v3, :cond_5

    const/4 v1, 0x4

    goto :goto_1

    .line 149
    :cond_5
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GREEN:I

    if-ne v0, v3, :cond_6

    const/4 v1, 0x5

    goto :goto_1

    .line 151
    :cond_6
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_YELLOW:I

    if-ne v0, v3, :cond_7

    const/4 v1, 0x6

    goto :goto_1

    .line 153
    :cond_7
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_PINK:I

    if-ne v0, v3, :cond_8

    const/4 v1, 0x7

    .line 156
    :cond_8
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void

    .line 158
    :cond_9
    const-string v3, "drawable.color_palette_back"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/SelectColorView;->setBackgroundResource(I)V

    .line 159
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move v2, v5

    :goto_2
    if-ge v2, v0, :cond_a

    .line 161
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/SelectColorView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 162
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 163
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 166
    :cond_a
    const-string v0, "id.color_palette_black"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 167
    iget v2, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLACK:I

    if-ne v2, v3, :cond_b

    .line 168
    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 169
    :cond_b
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GRAY:I

    if-ne v0, v2, :cond_c

    .line 170
    const-string v0, "id.color_palette_gray"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 171
    :cond_c
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_RED:I

    if-ne v0, v2, :cond_d

    .line 172
    const-string v0, "id.color_palette_red"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 173
    :cond_d
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLUE:I

    if-ne v0, v2, :cond_e

    .line 174
    const-string v0, "id.color_palette_blue"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 175
    :cond_e
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GREEN:I

    if-ne v0, v2, :cond_f

    .line 176
    const-string v0, "id.color_palette_green"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 177
    :cond_f
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_YELLOW:I

    if-ne v0, v2, :cond_10

    .line 178
    const-string v0, "id.color_palette_yellow"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 179
    :cond_10
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_WHITE:I

    if-ne v0, v2, :cond_11

    .line 180
    const-string v0, "id.color_palette_white"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 181
    :cond_11
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectColorView;->mSelectedColor:I

    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_PINK:I

    if-ne v0, v2, :cond_12

    .line 182
    const-string v0, "id.color_palette_pink"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 184
    :cond_12
    :goto_3
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectColorView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_13

    .line 186
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_13
    return-void
.end method
