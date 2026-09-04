.class public Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;
.super Landroid/widget/RelativeLayout;
.source "UiColorSelectionView2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UiColorWheelView"
.end annotation


# instance fields
.field private mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

.field private mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

.field private mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

.field private mGroupAndColorSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

.field private mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

.field private mTextBrightness:Lcom/metamoji/ui/common/UiTextView;

.field final synthetic this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;


# direct methods
.method static bridge synthetic -$$Nest$fgetmColorGradation(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmColorWheel(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)Lcom/metamoji/ui/common/UiISColorWheel;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbrightnessChanged(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->brightnessChanged(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mcolorSelected(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->colorSelected(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgradationColorSelected(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->gradationColorSelected(II)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBrightnessColor(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setBrightnessColor()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1685
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    .line 1686
    invoke-direct {p0, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 p2, 0x1

    .line 1687
    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->setFillViewport(Z)V

    return-void
.end method

.method private brightnessChanged(I)V
    .locals 2

    .line 1859
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    if-eqz v0, :cond_1

    int-to-float p1, p1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr p1, v1

    .line 1860
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->setBrightness(F)V

    .line 1861
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiISColorWheel;->isSelected()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1862
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    .line 1866
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    if-eqz p1, :cond_0

    .line 1863
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiISColorWheel;->getCurrentColor()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->setInkColor(I)V

    .line 1864
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->getInkColor1()I

    move-result p1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->getInkColor2()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->gradationColorSelected(II)V

    return-void

    .line 1866
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/common/UiISColorWheel;->getCurrentColor()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->colorSelected(I)V

    :cond_1
    return-void
.end method

.method private colorSelected(I)V
    .locals 4

    .line 1910
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mGroupAndColorSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    if-eqz v0, :cond_0

    .line 1911
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;->onColorSelected(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method private gradationColorSelected(II)V
    .locals 6

    .line 1916
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mGroupAndColorSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    if-eqz v0, :cond_0

    .line 1917
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    iget-object v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    const-string v2, ""

    const/4 v3, 0x0

    move v4, p1

    move v5, p2

    invoke-interface/range {v0 .. v5}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;->onGradationColorSelected(Ljava/lang/String;Ljava/lang/String;III)V

    :cond_0
    return-void
.end method

.method private setBrightnessColor()V
    .locals 4

    .line 1922
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    if-eqz v0, :cond_0

    .line 1923
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    invoke-virtual {v1}, Lcom/metamoji/ui/common/UiISColorWheel;->getBrightness()F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    .line 1924
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiISColorWheel;->getCurrentColor(F)I

    move-result v0

    .line 1925
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    const/high16 v2, -0x10000000

    and-int/2addr v2, v0

    const v3, -0xf000001

    and-int/2addr v0, v3

    invoke-virtual {v1, v2, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public createContents(Lcom/metamoji/ui/common/UiColorSelectionView2;Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;Landroid/content/Context;)V
    .locals 6

    .line 1707
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    .line 1708
    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mGroupAndColorSelectedListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorSelectionChanged;

    .line 1710
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const/4 p2, 0x0

    .line 1712
    invoke-virtual {p0, p2}, Landroid/widget/RelativeLayout;->setClipChildren(Z)V

    .line 1715
    new-instance p3, Landroid/widget/LinearLayout;

    invoke-direct {p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 1716
    invoke-virtual {p3, p2}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 1719
    new-instance v0, Lcom/metamoji/ui/common/UiISColorWheel;

    invoke-direct {v0, p4}, Lcom/metamoji/ui/common/UiISColorWheel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    .line 1720
    invoke-virtual {v0, p2}, Lcom/metamoji/ui/common/UiISColorWheel;->setClipChildren(Z)V

    .line 1721
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    new-instance v1, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$1;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiISColorWheel;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorWheelSelectionChanged;)V

    .line 1740
    sget v0, Lcom/metamoji/noteanytime/R$dimen;->ColorWheel_size:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1748
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0x10

    .line 1749
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1750
    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    invoke-virtual {p3, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1752
    iget-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;->key:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {v2}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$fgetmGroupIdColorWheelGradation(Lcom/metamoji/ui/common/UiColorSelectionView2;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1754
    new-instance v1, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    iget-object v2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-direct {v1, v2, p4}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    .line 1755
    new-instance v2, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$2;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)V

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorGradationSelectionChanged;)V

    .line 1770
    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ColorWheel_gradation_size:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1771
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 1772
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 1773
    sget v0, Lcom/metamoji/noteanytime/R$dimen;->ColorWheel_gradation_marginleft:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 1774
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    invoke-virtual {p3, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1777
    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1778
    sget v2, Lcom/metamoji/noteanytime/R$dimen;->ColorWheel_margintop:I

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    const/16 v2, 0xe

    .line 1779
    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 v3, 0xa

    .line 1780
    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1781
    invoke-virtual {p0, p3, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1785
    new-instance p3, Lcom/metamoji/ui/common/UiTextView;

    invoke-direct {p3, p4}, Lcom/metamoji/ui/common/UiTextView;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mTextBrightness:Lcom/metamoji/ui/common/UiTextView;

    .line 1786
    sget v0, Lcom/metamoji/noteanytime/R$string;->PenSettings_ColorWheel_Brightness:I

    invoke-virtual {p3, v0}, Lcom/metamoji/ui/common/UiTextView;->setText(I)V

    .line 1787
    iget-object p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mTextBrightness:Lcom/metamoji/ui/common/UiTextView;

    sget v0, Lcom/metamoji/noteanytime/R$color;->text_standard:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/metamoji/ui/common/UiTextView;->setTextColor(I)V

    .line 1788
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mTextBrightness:Lcom/metamoji/ui/common/UiTextView;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, p3, v0}, Lcom/metamoji/ui/common/UiTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 1789
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/4 v3, 0x5

    .line 1790
    invoke-virtual {p1, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/4 v3, 0x2

    const/16 v4, 0x64

    .line 1791
    invoke-virtual {p1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 1792
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v3, v5}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mdip2px(Lcom/metamoji/ui/common/UiColorSelectionView2;F)I

    move-result v3

    iput v3, p1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 1793
    iget-object v3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mTextBrightness:Lcom/metamoji/ui/common/UiTextView;

    invoke-virtual {p0, v3, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1796
    new-instance p1, Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-direct {p1, p4}, Lcom/metamoji/ui/common/UiPlainSlider;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    .line 1797
    invoke-virtual {p1, v4}, Lcom/metamoji/ui/common/UiPlainSlider;->setId(I)V

    .line 1814
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    const/high16 p4, -0x10000000

    const v3, -0xf000001

    invoke-virtual {p1, p4, v3}, Lcom/metamoji/ui/common/UiPlainSlider;->setSliderColor(II)V

    .line 1815
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    iget-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    const/high16 v3, 0x41400000    # 12.0f

    invoke-static {p4, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mdip2px(Lcom/metamoji/ui/common/UiColorSelectionView2;F)I

    move-result p4

    invoke-virtual {p1, p4}, Lcom/metamoji/ui/common/UiPlainSlider;->setLabelSize(I)V

    .line 1816
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    iget-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    const/high16 v3, 0x41b00000    # 22.0f

    invoke-static {p4, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mdip2px(Lcom/metamoji/ui/common/UiColorSelectionView2;F)I

    move-result p4

    invoke-virtual {p1, p4, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setInnerMarginLeft(IZ)V

    .line 1817
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    iget-object p4, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->this$0:Lcom/metamoji/ui/common/UiColorSelectionView2;

    invoke-static {p4, v3}, Lcom/metamoji/ui/common/UiColorSelectionView2;->-$$Nest$mdip2px(Lcom/metamoji/ui/common/UiColorSelectionView2;F)I

    move-result p4

    invoke-virtual {p1, p4, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setInnerMarginRight(IZ)V

    .line 1819
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    sget-object p2, Lcom/metamoji/ui/common/UiColorSelectionView2;->mTickBrightness:[Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setTickList([Lcom/metamoji/ui/common/UiPlainSlider$TickInfo;)V

    .line 1820
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiPlainSlider;->blockParentScroll(Z)V

    .line 1825
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p1, v4}, Lcom/metamoji/ui/common/UiPlainSlider;->setCurrentValue(I)V

    .line 1826
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance p2, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$3;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$3;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1836
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    new-instance p2, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$4;

    invoke-direct {p2, p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView$4;-><init>(Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiPlainSlider;->setValueChangedListener(Lcom/metamoji/ui/common/UiPlainSlider$IOnValueChanged;)V

    .line 1844
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    if-eqz p1, :cond_1

    .line 1845
    invoke-virtual {p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->getInkColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setCurrentColor(I)V

    .line 1848
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, p3, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 1849
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p2, 0xc

    .line 1850
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1851
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mSliderBrightness:Lcom/metamoji/ui/common/UiPlainSlider;

    invoke-virtual {p0, p2, p1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public getColorSetGroup()Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;
    .locals 1

    .line 1696
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorSetGroup:Lcom/metamoji/ui/common/UiColorSelectionView2$ColorSetGroup;

    return-object v0
.end method

.method public setCurrentColor(I)V
    .locals 1

    .line 1876
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    if-nez v0, :cond_0

    return-void

    .line 1878
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->setCurrentColor(I)V

    .line 1879
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setBrightnessColor()V

    return-void
.end method

.method public setCurrentColor(II)V
    .locals 1

    .line 1883
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1885
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->setInkColor1(I)V

    .line 1886
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->setInkColor2(I)V

    .line 1887
    iget-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorGradation:Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;

    invoke-virtual {p2}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorGradationView;->getInkColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/common/UiISColorWheel;->setCurrentColor(I)V

    .line 1888
    invoke-direct {p0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->setBrightnessColor()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 1895
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    if-nez v0, :cond_0

    return-void

    .line 1897
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->setSelected(Z)V

    return-void
.end method

.method public showKnob(Z)V
    .locals 1

    .line 1904
    iget-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorWheelView;->mColorWheel:Lcom/metamoji/ui/common/UiISColorWheel;

    if-nez v0, :cond_0

    return-void

    .line 1906
    :cond_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->showKnob(Z)V

    return-void
.end method
