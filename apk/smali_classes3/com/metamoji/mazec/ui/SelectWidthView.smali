.class public Lcom/metamoji/mazec/ui/SelectWidthView;
.super Landroid/widget/LinearLayout;
.source "SelectWidthView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;
    }
.end annotation


# static fields
.field private static final MODE_SELECTED_WIDTH:I = 0x1

.field private static final MODE_WIDTH_LIST:I = 0x2

.field private static final WIDTH_NOT_SELECTED:I = 0x0

.field private static final WIDTH_SELECTED:I = 0x1


# instance fields
.field private mDispMode:I

.field private mOnSelectWidthListener:Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

.field private mSelectedWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnSelectWidthListener(Lcom/metamoji/mazec/ui/SelectWidthView;)Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mOnSelectWidthListener:Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDispMode(Lcom/metamoji/mazec/ui/SelectWidthView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mDispMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$monSelectWidth(Lcom/metamoji/mazec/ui/SelectWidthView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/SelectWidthView;->onSelectWidth(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mOnSelectWidthListener:Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mDispMode:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mSelectedWidth:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mOnSelectWidthListener:Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    const/4 p1, 0x1

    .line 22
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mDispMode:I

    const/4 p1, 0x0

    .line 23
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mSelectedWidth:I

    return-void
.end method

.method private onSelectWidth(I)V
    .locals 1

    const/4 v0, 0x1

    .line 93
    iput v0, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mDispMode:I

    .line 94
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mSelectedWidth:I

    .line 96
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mOnSelectWidthListener:Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 97
    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;->onDispChange(Z)V

    .line 98
    iget-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mOnSelectWidthListener:Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    iget v0, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mSelectedWidth:I

    invoke-interface {p1, v0}, Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;->onSelect(I)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectWidthView;->updateView()V

    return-void
.end method

.method private setOnClickListener(II)V
    .locals 1

    .line 78
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/SelectWidthView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 80
    new-instance v0, Lcom/metamoji/mazec/ui/SelectWidthView$2;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/mazec/ui/SelectWidthView$2;-><init>(Lcom/metamoji/mazec/ui/SelectWidthView;I)V

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

    .line 46
    :goto_0
    iput p2, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mDispMode:I

    .line 47
    iput p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mSelectedWidth:I

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectWidthView;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    if-lez p1, :cond_1

    .line 51
    invoke-virtual {p0, p2}, Lcom/metamoji/mazec/ui/SelectWidthView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 52
    new-instance v2, Lcom/metamoji/mazec/ui/SelectWidthView$1;

    invoke-direct {v2, p0}, Lcom/metamoji/mazec/ui/SelectWidthView$1;-><init>(Lcom/metamoji/mazec/ui/SelectWidthView;)V

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    :cond_1
    const-string p1, "id.width_palette_thin"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/metamoji/mazec/ui/SelectWidthView;->setOnClickListener(II)V

    .line 64
    const-string p1, "id.width_palette_normal"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectWidthView;->setOnClickListener(II)V

    .line 65
    const-string p1, "id.width_palette_semibold"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/ui/SelectWidthView;->setOnClickListener(II)V

    .line 66
    const-string p1, "id.width_palette_bold"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x3

    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/SelectWidthView;->setOnClickListener(II)V

    .line 68
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectWidthView;->updateView()V

    return-void
.end method

.method public setDispSelected()V
    .locals 2

    .line 172
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mDispMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 173
    iput v0, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mDispMode:I

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectWidthView;->updateView()V

    .line 175
    iget-object v0, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mOnSelectWidthListener:Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 176
    invoke-interface {v0, v1}, Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;->onDispChange(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/SelectWidthView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    if-nez p1, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectWidthView;->setDispSelected()V

    :cond_0
    return-void
.end method

.method public setOnSelectWidthListener(Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mOnSelectWidthListener:Lcom/metamoji/mazec/ui/SelectWidthView$OnSelectWidthListener;

    return-void
.end method

.method public updateView()V
    .locals 9

    .line 123
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/SelectWidthView;->getChildCount()I

    move-result v0

    if-lez v0, :cond_b

    const/4 v1, 0x0

    .line 125
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectWidthView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 126
    iget v3, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mDispMode:I

    const/16 v4, 0x8

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v3, v7, :cond_5

    .line 127
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectWidthView;->setBackgroundResource(I)V

    .line 128
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    move v3, v7

    :goto_0
    if-ge v3, v0, :cond_0

    .line 130
    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/SelectWidthView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 134
    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mSelectedWidth:I

    if-eqz v0, :cond_3

    if-eq v0, v7, :cond_4

    if-eq v0, v6, :cond_2

    if-eq v0, v5, :cond_1

    goto :goto_1

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v1, v6

    goto :goto_1

    :cond_3
    move v1, v7

    .line 141
    :cond_4
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    return-void

    .line 143
    :cond_5
    const-string v3, "drawable.width_palette_back"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/SelectWidthView;->setBackgroundResource(I)V

    .line 144
    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    move v2, v7

    :goto_2
    if-ge v2, v0, :cond_6

    .line 146
    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/SelectWidthView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 147
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 148
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageLevel(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 151
    :cond_6
    const-string v0, "id.width_palette_normal"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 152
    iget v2, p0, Lcom/metamoji/mazec/ui/SelectWidthView;->mSelectedWidth:I

    if-eqz v2, :cond_a

    if-eq v2, v7, :cond_9

    if-eq v2, v6, :cond_8

    if-eq v2, v5, :cond_7

    goto :goto_3

    .line 157
    :cond_7
    const-string v0, "id.width_palette_bold"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 156
    :cond_8
    const-string v0, "id.width_palette_semibold"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 154
    :cond_9
    const-string v0, "id.width_palette_thin"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    goto :goto_3

    .line 155
    :cond_a
    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    .line 159
    :goto_3
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/SelectWidthView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_b

    .line 161
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageLevel(I)V

    :cond_b
    return-void
.end method
