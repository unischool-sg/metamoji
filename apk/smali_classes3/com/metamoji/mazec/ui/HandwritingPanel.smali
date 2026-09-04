.class public Lcom/metamoji/mazec/ui/HandwritingPanel;
.super Landroid/widget/RelativeLayout;
.source "HandwritingPanel.java"


# static fields
.field private static mButtonHeight:I


# instance fields
.field private mButtonBaseline:Lcom/metamoji/mazec/ui/ToggleImageView;

.field private mCurPanelHeight:I

.field private mCurPanelWidth:I

.field private mHigherPanelHeight:I

.field private mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

.field private mInReeditLabel:Landroid/widget/TextView;

.field private mLowerPanelHeight:I

.field private mPanelWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmHwView(Lcom/metamoji/mazec/ui/HandwritingPanel;)Lcom/metamoji/mazec/ui/HandWritingView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 37
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_0

    .line 38
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 39
    const-string v1, "drawable.up_baseline_n"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sput v0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonHeight:I

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    .line 45
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mInReeditLabel:Landroid/widget/TextView;

    .line 46
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonBaseline:Lcom/metamoji/mazec/ui/ToggleImageView;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelWidth:I

    .line 49
    iput p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    .line 62
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 44
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    .line 45
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mInReeditLabel:Landroid/widget/TextView;

    .line 46
    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonBaseline:Lcom/metamoji/mazec/ui/ToggleImageView;

    const/4 p1, 0x0

    .line 48
    iput p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelWidth:I

    .line 49
    iput p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    .line 71
    invoke-direct {p0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->init()V

    return-void
.end method

.method private init()V
    .locals 4

    .line 79
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object v0

    .line 80
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 81
    invoke-virtual {v0}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v2

    .line 82
    invoke-virtual {v2}, Lcom/metamoji/mazec/MazecPreferences;->getMazecHeightRank()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_0

    .line 93
    const-string v2, "dimen.mazec_height_low"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mLowerPanelHeight:I

    goto :goto_0

    .line 84
    :cond_0
    const-string v2, "dimen.mazec_height_high"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mLowerPanelHeight:I

    goto :goto_0

    .line 88
    :cond_1
    const-string v2, "dimen.mazec_height_middle"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mLowerPanelHeight:I

    .line 101
    :goto_0
    const-string v2, "dimen.hw_panel_width"

    invoke-static {v2}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mPanelWidth:I

    if-gtz v1, :cond_2

    .line 104
    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/MazecIms;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mPanelWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mPanelWidth:I

    :cond_2
    return-void
.end method

.method private updateBaselineButton(Z)V
    .locals 3

    .line 283
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->baseline()F

    move-result v0

    .line 285
    iget-object v1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonBaseline:Lcom/metamoji/mazec/ui/ToggleImageView;

    if-eqz v1, :cond_1

    .line 286
    invoke-virtual {v1}, Lcom/metamoji/mazec/ui/ToggleImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz p1, :cond_0

    .line 289
    sget p1, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonHeight:I

    int-to-float p1, p1

    sub-float/2addr v0, p1

    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/mazec/MazecIms;->density:F

    mul-float/2addr p1, v2

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    goto :goto_0

    .line 292
    :cond_0
    invoke-static {}, Lcom/metamoji/mazec/MazecIms;->getInstance()Lcom/metamoji/mazec/MazecIms;

    move-result-object p1

    iget p1, p1, Lcom/metamoji/mazec/MazecIms;->density:F

    mul-float/2addr p1, v2

    sub-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 294
    :goto_0
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonBaseline:Lcom/metamoji/mazec/ui/ToggleImageView;

    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/ui/ToggleImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public changePanelHeight(Z)V
    .locals 2

    .line 308
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_0

    .line 309
    iget p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHigherPanelHeight:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mLowerPanelHeight:I

    .line 310
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->setHeight(I)V

    :cond_1
    return-void
.end method

.method public disposeView(Lcom/metamoji/mazec/MazecIms;)V
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->disposeView(Lcom/metamoji/mazec/MazecIms;)V

    return-void
.end method

.method public getHwScrollX()I
    .locals 1

    .line 303
    const-string v0, "id.handwriting_scroller"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 304
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getHwView()Lcom/metamoji/mazec/ui/HandWritingView;
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    return-object v0
.end method

.method public getPanelHeight()I
    .locals 1

    .line 233
    iget v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    return v0
.end method

.method public initView(Lcom/metamoji/mazec/MazecIms;)V
    .locals 3

    .line 113
    iget v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mPanelWidth:I

    iput v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelWidth:I

    .line 114
    iget v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mLowerPanelHeight:I

    iput v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    .line 117
    const-string v0, "id.handwriting_view"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/ui/HandWritingView;

    iput-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    .line 118
    iget v1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelWidth:I

    iget v2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    invoke-virtual {v0, p1, p0, v1, v2}, Lcom/metamoji/mazec/ui/HandWritingView;->initView(Lcom/metamoji/mazec/MazecIms;Lcom/metamoji/mazec/ui/HandwritingPanel;II)V

    .line 121
    const-string p1, "id.in_reedit_label"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mInReeditLabel:Landroid/widget/TextView;

    .line 124
    sget-object p1, Lcom/metamoji/mazec/BuildConfig;->PRODUCT_TYPE:Lcom/metamoji/mazec/BuildOption$ProductType;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$ProductType;->TRIAL:Lcom/metamoji/mazec/BuildOption$ProductType;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 125
    const-string p1, "id.edition_label"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 135
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 139
    :cond_0
    sget-object p1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne p1, v0, :cond_1

    .line 140
    const-string p1, "id.updown_baseline"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/ToggleImageView;

    iput-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonBaseline:Lcom/metamoji/mazec/ui/ToggleImageView;

    if-eqz p1, :cond_1

    .line 142
    new-instance v0, Lcom/metamoji/mazec/ui/HandwritingPanel$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/HandwritingPanel$1;-><init>(Lcom/metamoji/mazec/ui/HandwritingPanel;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/ToggleImageView;->setOnChangeListener(Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;)V

    .line 157
    :cond_1
    const-string p1, "id.handwriting_scroller"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;

    const/4 v0, 0x1

    .line 158
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->disableFling(Z)V

    .line 159
    invoke-virtual {p1, v1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 161
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 162
    iget v1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelWidth:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 163
    iget v1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 166
    const-string v0, "id.scroll_right_stroke_button"

    invoke-static {v0}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    const-string v1, "id.scroll_left_stroke_button"

    invoke-static {v1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 187
    new-instance v2, Lcom/metamoji/mazec/ui/HandwritingPanel$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/metamoji/mazec/ui/HandwritingPanel$2;-><init>(Lcom/metamoji/mazec/ui/HandwritingPanel;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {p1, v2}, Lcom/metamoji/mazec/ui/ExtHorizontalScrollView;->setScrollListener(Lcom/metamoji/mazec/ui/ExtHorizontalScrollView$OnHorizontalScrollListener;)V

    .line 204
    iget p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->setHeight(I)V

    return-void
.end method

.method onClosing()V
    .locals 1

    .line 329
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->closing()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 213
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 218
    iget-object p2, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    if-eqz p2, :cond_0

    .line 219
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->setInitWidth(I)V

    :cond_0
    return-void
.end method

.method onReplacing()V
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0}, Lcom/metamoji/mazec/ui/HandWritingView;->replacing()V

    return-void
.end method

.method onStarting(Lcom/metamoji/mazec/MazecIms;)V
    .locals 2

    .line 315
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne v0, v1, :cond_1

    .line 316
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getPrefs()Lcom/metamoji/mazec/MazecPreferences;

    move-result-object v0

    .line 317
    iget-boolean v0, v0, Lcom/metamoji/mazec/MazecPreferences;->isHigherHwPanel:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHigherPanelHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mLowerPanelHeight:I

    .line 318
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->setHeight(I)V

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->starting(Lcom/metamoji/mazec/MazecIms;)V

    return-void
.end method

.method onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V
    .locals 4

    .line 332
    sget-object v0, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 333
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonBaseline:Lcom/metamoji/mazec/ui/ToggleImageView;

    if-eqz v0, :cond_1

    .line 334
    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->getInputMode()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/ui/ToggleImageView;->setVisibility(I)V

    .line 338
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->onUIModeChanged(Lcom/metamoji/mazec/MazecIms;)V

    .line 340
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mInReeditLabel:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/metamoji/mazec/MazecIms;->isInReedit()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/16 v2, 0x8

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public setHeight(I)V
    .locals 2

    .line 241
    iput p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/HandwritingPanel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 246
    iget v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 247
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 252
    :cond_0
    const-string p1, "id.handwriting_scroller"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 254
    iget v1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 255
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 258
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    iget v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mCurPanelHeight:I

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/ui/HandWritingView;->setHeight(I)V

    .line 261
    sget-object p1, Lcom/metamoji/mazec/BuildOption;->DEVICE_TYPE:Lcom/metamoji/mazec/BuildOption$DeviceType;

    sget-object v0, Lcom/metamoji/mazec/BuildOption$DeviceType;->TABLET:Lcom/metamoji/mazec/BuildOption$DeviceType;

    if-ne p1, v0, :cond_1

    .line 262
    iget-object p1, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mButtonBaseline:Lcom/metamoji/mazec/ui/ToggleImageView;

    if-eqz p1, :cond_1

    .line 263
    invoke-virtual {p1}, Lcom/metamoji/mazec/ui/ToggleImageView;->isChecked()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->updateBaselineButton(Z)V

    :cond_1
    return-void
.end method

.method public upBaseline(Z)V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/metamoji/mazec/ui/HandwritingPanel;->mHwView:Lcom/metamoji/mazec/ui/HandWritingView;

    invoke-virtual {v0, p1}, Lcom/metamoji/mazec/ui/HandWritingView;->upBaseline(Z)V

    .line 275
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/HandwritingPanel;->updateBaselineButton(Z)V

    return-void
.end method
