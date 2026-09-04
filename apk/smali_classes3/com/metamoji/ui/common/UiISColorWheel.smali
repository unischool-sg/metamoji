.class public Lcom/metamoji/ui/common/UiISColorWheel;
.super Landroid/widget/FrameLayout;
.source "UiISColorWheel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;
    }
.end annotation


# static fields
.field static final KNOB_ELLIPSE_LINE_WIDTH:I = 0x2

.field static final KNOB_ELLIPSE_SIZE:I = 0x14

.field static final KNOB_HEIGHT:I = 0x15

.field static final KNOB_SHADOW_HEIGHT:I = 0x1

.field static final KNOB_SHADOW_OFFSET_X:I = 0x0

.field static final KNOB_SHADOW_OFFSET_Y:I = 0x1

.field static final KNOB_SHADOW_SIZE:I = 0x1

.field static final KNOB_SHADOW_WIDTH:I = 0x0

.field static final KNOB_WIDTH:I = 0x14


# instance fields
.field mBrightness:F

.field mCenter:Landroid/graphics/Point;

.field mDefaultColor:I

.field private mDensity:F

.field mHSV:[F

.field mKnobPen:Landroid/graphics/Paint;

.field mKnobRect:Landroid/graphics/Rect;

.field mKnobSize:Lcom/metamoji/cm/Size;

.field mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

.field private mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorWheelSelectionChanged;

.field mRadius:I

.field mSelected:Z

.field mTouchPoint:Landroid/graphics/Point;


# direct methods
.method static bridge synthetic -$$Nest$mdip2px(Lcom/metamoji/ui/common/UiISColorWheel;F)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->dip2px(F)I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 56
    iput v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mDensity:F

    .line 65
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 69
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiISColorWheel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 45
    iput-object p2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 56
    iput p2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mDensity:F

    .line 74
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->init(Landroid/content/Context;)V

    return-void
.end method

.method static UiISColorWheel_PointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D
    .locals 3

    .line 128
    iget v0, p0, Landroid/graphics/Point;->x:I

    iget v1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Point;->x:I

    iget v2, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Point;->y:I

    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v1, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr p0, p1

    mul-int/2addr v1, p0

    add-int/2addr v0, v1

    int-to-double p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private dip2px(F)I
    .locals 1

    .line 92
    iget v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mDensity:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method private init(Landroid/content/Context;)V
    .locals 4

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mDensity:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 101
    iput v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mBrightness:F

    .line 102
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobRect:Landroid/graphics/Rect;

    .line 103
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobPen:Landroid/graphics/Paint;

    .line 104
    new-instance v0, Lcom/metamoji/cm/Size;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {p0, v2}, Lcom/metamoji/ui/common/UiISColorWheel;->dip2px(F)I

    move-result v2

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-direct {p0, v3}, Lcom/metamoji/ui/common/UiISColorWheel;->dip2px(F)I

    move-result v3

    invoke-direct {v0, v2, v3}, Lcom/metamoji/cm/Size;-><init>(II)V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobSize:Lcom/metamoji/cm/Size;

    .line 105
    new-instance v0, Landroid/graphics/Point;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v2}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    .line 106
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    .line 108
    new-instance v0, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;-><init>(Lcom/metamoji/ui/common/UiISColorWheel;Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->setKnobView(Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;)V

    .line 109
    iget-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    if-eqz p1, :cond_0

    const/16 v0, 0x8

    .line 110
    invoke-virtual {p1, v0}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->setVisibility(I)V

    :cond_0
    const/4 p1, 0x0

    .line 112
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mSelected:Z

    .line 113
    new-array v0, v1, [F

    iput-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mHSV:[F

    .line 114
    iput v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mDefaultColor:I

    .line 117
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->colorwheel:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->setBackgroundResource(I)V

    .line 120
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->setClipChildren(Z)V

    return-void
.end method


# virtual methods
.method colorAtPoint(Landroid/graphics/Point;)I
    .locals 1

    .line 185
    iget v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mBrightness:F

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->colorAtPoint(Landroid/graphics/Point;F)I

    move-result p1

    return p1
.end method

.method colorAtPoint(Landroid/graphics/Point;F)I
    .locals 10

    .line 192
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 197
    :cond_0
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v2

    int-to-double v2, v0

    iget v0, p1, Landroid/graphics/Point;->y:I

    iget-object v4, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v4

    int-to-double v4, v0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v2, v4

    .line 198
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    invoke-static {p1, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->UiISColorWheel_PointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v4

    const-wide v6, 0x401921fb54442d18L    # 6.283185307179586

    div-double/2addr v2, v6

    const-wide v6, 0x3fefffffc0000000L    # 0.9999998807907104

    .line 202
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    .line 203
    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 205
    iget p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mRadius:I

    int-to-double v8, p1

    div-double/2addr v4, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 207
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    .line 208
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    .line 210
    iget-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mHSV:[F

    double-to-float v0, v2

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v0, v2

    const/4 v2, 0x0

    aput v0, p1, v2

    const/4 v0, 0x1

    double-to-float v2, v4

    .line 211
    aput v2, p1, v0

    .line 212
    aput p2, p1, v1

    .line 214
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1

    .line 193
    :cond_1
    :goto_0
    iget p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mDefaultColor:I

    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 194
    iget-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mHSV:[F

    aput p2, p1, v1

    .line 195
    invoke-static {p1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result p1

    return p1
.end method

.method public getBrightness()F
    .locals 1

    .line 348
    iget v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mBrightness:F

    return v0
.end method

.method getCurrentColor()I
    .locals 1

    .line 249
    iget v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mBrightness:F

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->getCurrentColor(F)I

    move-result v0

    return v0
.end method

.method public getCurrentColor(F)I
    .locals 3

    .line 256
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    invoke-direct {v0, v1}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->viewToImageSpace(Landroid/graphics/Point;)Landroid/graphics/Point;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->colorAtPoint(Landroid/graphics/Point;F)I

    move-result p1

    .line 257
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    const/16 v2, 0xff

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    return p1
.end method

.method public isSelected()Z
    .locals 1

    .line 340
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mSelected:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 360
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    if-eqz p1, :cond_1

    .line 366
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->getHeight()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mRadius:I

    .line 367
    iget-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->getWidth()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Point;->x:I

    .line 368
    iget-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->getHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x2

    iput p2, p1, Landroid/graphics/Point;->y:I

    .line 369
    iget-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->x:I

    if-gez p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-gez p1, :cond_0

    .line 370
    iget p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mDefaultColor:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->setCurrentColor(I)V

    .line 378
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->updateKnob()V

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 384
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 385
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 390
    :cond_1
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v2, p1}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->setTouchPoint(Landroid/graphics/Point;)V

    .line 392
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/common/UiISColorWheel;->setSelected(Z)V

    .line 394
    iget-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorWheelSelectionChanged;

    if-eqz p1, :cond_2

    .line 395
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->getCurrentColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$IColorWheelSelectionChanged;->onColorWheelSelected(I)V

    :cond_2
    :goto_0
    return v1

    .line 405
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setBrightness(F)V
    .locals 0

    .line 344
    iput p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mBrightness:F

    .line 345
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->updateKnob()V

    return-void
.end method

.method setCurrentColor(I)V
    .locals 8

    .line 268
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mHSV:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 269
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mHSV:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr v1, v2

    const/4 v2, 0x1

    .line 270
    aget v2, v0, v2

    const/4 v3, 0x2

    .line 271
    aget v0, v0, v3

    .line 273
    iput v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mBrightness:F

    .line 275
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    float-to-double v0, v1

    const-wide v3, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v0, v3

    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v0, v3

    .line 281
    iget p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mRadius:I

    int-to-float p1, p1

    mul-float/2addr v2, p1

    .line 283
    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 284
    iget-object v3, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    float-to-double v6, v2

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-int v2, v4

    add-int/2addr v3, v2

    iput v3, p1, Landroid/graphics/Point;->x:I

    .line 285
    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int v0, v0

    add-int/2addr v2, v0

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 287
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->setTouchPoint(Landroid/graphics/Point;)V

    .line 289
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->updateKnob()V

    return-void

    .line 276
    :cond_1
    :goto_0
    iput p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mDefaultColor:I

    return-void
.end method

.method setKnobView(Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;)V
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->removeView(Landroid/view/View;)V

    .line 320
    :cond_0
    iput-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    if-eqz p1, :cond_1

    .line 324
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiISColorWheel;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 329
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->updateKnob()V

    return-void
.end method

.method public setSelected(Z)V
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 334
    :goto_0
    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->setVisibility(I)V

    .line 336
    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mSelected:Z

    return-void
.end method

.method public setSelectionChangedListener(Lcom/metamoji/ui/common/UiColorSelectionView2$IColorWheelSelectionChanged;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mOuterSelectEventListener:Lcom/metamoji/ui/common/UiColorSelectionView2$IColorWheelSelectionChanged;

    return-void
.end method

.method setTouchPoint(Landroid/graphics/Point;)V
    .locals 7

    .line 297
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    invoke-static {v0, p1}, Lcom/metamoji/ui/common/UiISColorWheel;->UiISColorWheel_PointDistance(Landroid/graphics/Point;Landroid/graphics/Point;)D

    move-result-wide v0

    iget v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mRadius:I

    int-to-double v2, v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 298
    iput-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    goto :goto_0

    .line 302
    :cond_0
    new-instance v0, Landroid/graphics/Point;

    iget v1, p1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v1, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr p1, v2

    invoke-direct {v0, v1, p1}, Landroid/graphics/Point;-><init>(II)V

    .line 304
    iget p1, v0, Landroid/graphics/Point;->x:I

    iget v1, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Point;->y:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v1, v2

    add-int/2addr p1, v1

    int-to-double v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    .line 306
    iget p1, v0, Landroid/graphics/Point;->x:I

    int-to-double v3, p1

    div-double/2addr v3, v1

    .line 307
    iget p1, v0, Landroid/graphics/Point;->y:I

    int-to-double v5, p1

    div-double/2addr v5, v1

    .line 309
    new-instance p1, Landroid/graphics/Point;

    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    iget v1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mRadius:I

    int-to-double v1, v1

    mul-double/2addr v3, v1

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mCenter:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mRadius:I

    int-to-double v2, v2

    mul-double/2addr v5, v2

    double-to-float v2, v5

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {p1, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    .line 312
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->updateKnob()V

    return-void
.end method

.method public showKnob(Z)V
    .locals 1

    .line 352
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 353
    :goto_0
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method updateKnob()V
    .locals 3

    .line 235
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->setLeft(I)V

    .line 240
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->setTop(I)V

    .line 241
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->setRight(I)V

    .line 242
    iget-object v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobView:Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;

    iget-object v1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mTouchPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    iget-object v2, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mKnobSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/common/UiISColorWheel$UiISColorKnob;->setBottom(I)V

    return-void
.end method

.method viewToImageSpace(Landroid/graphics/Point;)Landroid/graphics/Point;
    .locals 9

    .line 218
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->getWidth()I

    move-result v0

    .line 219
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiISColorWheel;->getHeight()I

    move-result v1

    .line 221
    iget v2, p1, Landroid/graphics/Point;->y:I

    sub-int v2, v1, v2

    iput v2, p1, Landroid/graphics/Point;->y:I

    .line 223
    new-instance v2, Landroid/graphics/Point;

    int-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    div-double/2addr v3, v5

    iget v0, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mRadius:I

    int-to-double v7, v0

    sub-double/2addr v3, v7

    double-to-float v0, v3

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-double v3, v1

    div-double/2addr v3, v5

    iget v1, p0, Lcom/metamoji/ui/common/UiISColorWheel;->mRadius:I

    int-to-double v5, v1

    sub-double/2addr v3, v5

    double-to-float v1, v3

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-direct {v2, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 225
    iget v0, p1, Landroid/graphics/Point;->x:I

    iget v1, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 226
    iget v0, p1, Landroid/graphics/Point;->y:I

    iget v1, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Point;->y:I

    return-object p1
.end method
