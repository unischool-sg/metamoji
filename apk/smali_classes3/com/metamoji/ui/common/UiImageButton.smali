.class public Lcom/metamoji/ui/common/UiImageButton;
.super Landroid/widget/ImageButton;
.source "UiImageButton.java"


# instance fields
.field mColorFilter:Landroid/graphics/ColorFilter;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageButton;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 13
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageButton;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 25
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiImageButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_3

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiImageButton;->clearColorFilter()V

    goto :goto_0

    .line 29
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageButton;->mColorFilter:Landroid/graphics/ColorFilter;

    if-nez v0, :cond_2

    .line 30
    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, -0x333334

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiImageButton;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 32
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/common/UiImageButton;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiImageButton;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 41
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method
