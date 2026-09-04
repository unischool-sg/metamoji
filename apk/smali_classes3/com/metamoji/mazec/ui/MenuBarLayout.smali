.class public Lcom/metamoji/mazec/ui/MenuBarLayout;
.super Landroid/widget/LinearLayout;
.source "MenuBarLayout.java"


# static fields
.field private static N_SAPCERS:I = 0x4


# instance fields
.field private mMaxSpacerW:I

.field private mSpacers:[Landroid/view/View;

.field private mViews:[Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 8

    .line 51
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuBarLayout;->mViews:[Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 53
    const-string v2, "id.menu"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/MenuBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 54
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    const-string v2, "id.cursor_left_key"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/MenuBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 56
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    const-string v2, "id.cursor_right_key"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/MenuBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 58
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    const-string v2, "id.enter_frame"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/MenuBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    const-string v3, "id.delete_frame"

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/MenuBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 62
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/metamoji/mazec/ui/MenuBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 64
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MenuBarLayout;->mViews:[Landroid/view/View;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    .line 68
    :goto_0
    sget v3, Lcom/metamoji/mazec/ui/MenuBarLayout;->N_SAPCERS:I

    if-ge v2, v3, :cond_0

    .line 69
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "id.spacer%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/metamoji/mazec/ui/MenuBarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 70
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Landroid/view/View;

    invoke-interface {v0, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/View;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/MenuBarLayout;->mSpacers:[Landroid/view/View;

    .line 74
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 76
    const-string v2, "dimen.menu_bar_spacer_max_na_w"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/metamoji/mazec/ui/MenuBarLayout;->mMaxSpacerW:I

    .line 81
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuBarLayout;->mViews:[Landroid/view/View;

    array-length v2, v0

    move v3, v1

    move v4, v3

    :goto_1
    if-ge v3, v2, :cond_2

    aget-object v5, v0, v3

    .line 82
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 83
    iget v6, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v6, v7

    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v6, v5

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 86
    :cond_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    sub-int/2addr v0, v4

    .line 89
    sget v2, Lcom/metamoji/mazec/ui/MenuBarLayout;->N_SAPCERS:I

    add-int/lit8 v2, v2, 0x1

    div-int/2addr v0, v2

    iget v2, p0, Lcom/metamoji/mazec/ui/MenuBarLayout;->mMaxSpacerW:I

    if-lt v0, v2, :cond_3

    goto :goto_2

    :cond_3
    move v2, v1

    .line 94
    :goto_2
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuBarLayout;->mSpacers:[Landroid/view/View;

    array-length v3, v0

    :goto_3
    if-ge v1, v3, :cond_4

    aget-object v4, v0, v1

    .line 95
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 96
    iput v2, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 98
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 102
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method
