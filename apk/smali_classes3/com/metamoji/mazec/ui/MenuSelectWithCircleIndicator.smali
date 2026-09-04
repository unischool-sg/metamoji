.class public abstract Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;
.super Lcom/metamoji/mazec/ui/MenuSelectBase;
.source "MenuSelectWithCircleIndicator.java"


# instance fields
.field protected mDensity:F

.field mSelectedMarkView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mSelectedMarkView:Landroid/widget/ImageView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuSelectBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mSelectedMarkView:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method protected abstract getButtonId(I)I
.end method

.method protected initView(I)V
    .locals 1

    .line 38
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;->initView(I)V

    .line 40
    new-instance p1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mSelectedMarkView:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->addView(Landroid/view/View;)V

    .line 43
    iget-object p1, p0, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mSelectedMarkView:Landroid/widget/ImageView;

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 44
    const-string p1, "drawable.menu_select_circle"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    .line 45
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 46
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 47
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mSelectedMarkView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    .line 50
    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    .line 51
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 52
    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 53
    iget p1, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    const/high16 v0, 0x43aa0000    # 340.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mDensity:F

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mSelectedMarkView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 60
    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mSelected:I

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->getButtonId(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    .line 63
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    int-to-float v3, v3

    goto :goto_0

    :cond_0
    move v2, v1

    move v3, v2

    .line 65
    :goto_0
    invoke-super/range {p0 .. p5}, Lcom/metamoji/mazec/ui/MenuSelectBase;->onLayout(ZIIII)V

    move-object p1, p0

    cmpl-float p2, v2, v1

    if-eqz p2, :cond_3

    cmpl-float p2, v3, v1

    if-eqz p2, :cond_3

    cmpg-float p2, v3, v2

    if-gez p2, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v2

    :goto_1
    const p3, 0x3fa66666    # 1.3f

    mul-float/2addr p2, p3

    const/4 p3, 0x2

    .line 71
    new-array p4, p3, [I

    .line 72
    invoke-virtual {v0, p4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 73
    new-array p3, p3, [I

    .line 74
    invoke-virtual {p0, p3}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->getLocationInWindow([I)V

    const/4 p5, 0x0

    .line 75
    aget v0, p4, p5

    aget p5, p3, p5

    sub-int/2addr v0, p5

    const/4 p5, 0x1

    .line 76
    aget p4, p4, p5

    aget p3, p3, p5

    sub-int/2addr p4, p3

    int-to-float p3, v0

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr v2, p5

    add-float/2addr p3, v2

    div-float v0, p2, p5

    sub-float/2addr p3, v0

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p3, v1

    float-to-int p3, p3

    int-to-float p4, p4

    div-float/2addr v3, p5

    add-float/2addr p4, v3

    sub-float/2addr p4, v0

    add-float/2addr p4, v1

    float-to-int p4, p4

    .line 80
    iget-object p5, p1, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->mSelectedMarkView:Landroid/widget/ImageView;

    add-float/2addr p2, v1

    float-to-int p2, p2

    add-int v0, p3, p2

    add-int/2addr p2, p4

    invoke-virtual {p5, p3, p4, v0, p2}, Landroid/widget/ImageView;->layout(IIII)V

    return-void

    :cond_2
    move-object p1, p0

    :cond_3
    return-void
.end method

.method protected onSelect(I)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectBase;->onSelect(I)V

    .line 88
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->requestLayout()V

    return-void
.end method
