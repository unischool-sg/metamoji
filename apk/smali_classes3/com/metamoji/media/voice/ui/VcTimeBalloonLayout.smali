.class public Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;
.super Landroid/widget/FrameLayout;
.source "VcTimeBalloonLayout.java"


# static fields
.field private static Baloon_HalfOfWidth:I = 0x2e

.field private static Baloon_HeightOfBody:I = 0x1c

.field private static Baloon_SizeOfStackOut:I = 0x8


# instance fields
.field _viewheight:F

.field _viewwidth:F

.field mPaint:Landroid/graphics/Paint;

.field mPath:Landroid/graphics/Path;

.field mRect:Landroid/graphics/RectF;

.field mText:Ljava/lang/String;

.field mTextPaint:Landroid/graphics/Paint;

.field mTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->init(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method init(Landroid/content/Context;)V
    .locals 5

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 40
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x0

    .line 41
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->setWillNotDraw(Z)V

    .line 42
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mPaint:Landroid/graphics/Paint;

    .line 43
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 44
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mPaint:Landroid/graphics/Paint;

    const/16 v1, 0x9f

    const/16 v2, 0xbe

    const/16 v3, 0xff

    const/16 v4, 0xd

    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 45
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 47
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mTextPaint:Landroid/graphics/Paint;

    .line 48
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 49
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mTextPaint:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 50
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 51
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mPath:Landroid/graphics/Path;

    .line 52
    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->makeBalloon(Landroid/graphics/Path;)V

    return-void
.end method

.method makeBalloon(Landroid/graphics/Path;)V
    .locals 10

    .line 118
    sget v0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->Baloon_HalfOfWidth:I

    .line 119
    sget v1, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->Baloon_HeightOfBody:I

    mul-int/lit8 v2, v0, 0x2

    .line 121
    sget v3, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->Baloon_SizeOfStackOut:I

    add-int v4, v1, v3

    int-to-float v5, v0

    int-to-float v6, v4

    .line 123
    invoke-virtual {p1, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    sub-int v5, v0, v3

    int-to-float v5, v5

    sub-int/2addr v4, v3

    int-to-float v4, v4

    .line 124
    invoke-virtual {p1, v5, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 125
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v1, v1

    const/high16 v5, 0x40c00000    # 6.0f

    sub-float v6, v1, v5

    const/4 v7, 0x0

    invoke-direct {v4, v7, v6, v5, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v8, 0x42b40000    # 90.0f

    invoke-virtual {p1, v4, v8, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 126
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v7, v7, v5, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v9, 0x43340000    # 180.0f

    invoke-virtual {p1, v4, v9, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 127
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v2, v2

    sub-float v9, v2, v5

    invoke-direct {v4, v9, v7, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v5, 0x43870000    # 270.0f

    invoke-virtual {p1, v4, v5, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 128
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v9, v6, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p1, v4, v7, v8}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    add-int/2addr v0, v3

    int-to-float v0, v0

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 59
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 68
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 69
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 70
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 72
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mText:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 73
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    .line 74
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mText:Ljava/lang/String;

    sget v2, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->Baloon_HalfOfWidth:I

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    const/high16 v0, 0x41a00000    # 20.0f

    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 77
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 84
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    int-to-float p2, p4

    .line 85
    iput p2, p1, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->_viewwidth:F

    int-to-float p2, p5

    .line 86
    iput p2, p1, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->_viewheight:F

    return-void
.end method

.method public setPos(Lcom/metamoji/media/voice/ui/VcWaveView;FD)V
    .locals 5

    .line 94
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    .line 95
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    iget-object v3, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    float-to-int v3, v3

    iget-object v4, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, v0}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->invalidate(Landroid/graphics/Rect;)V

    .line 97
    :cond_0
    sget v0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->Baloon_HeightOfBody:I

    sget v1, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->Baloon_SizeOfStackOut:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    .line 98
    sget v1, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->Baloon_HalfOfWidth:I

    .line 99
    new-instance v2, Landroid/graphics/RectF;

    int-to-float v1, v1

    sub-float v3, p2, v1

    neg-int v0, v0

    int-to-float v0, v0

    add-float/2addr p2, v1

    const/4 v1, 0x0

    invoke-direct {v2, v3, v0, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 100
    invoke-static {v2, p1, p0}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/RectF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    .line 101
    iput-wide p3, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mTime:D

    double-to-int p1, p3

    .line 104
    div-int/lit16 p2, p1, 0xe10

    mul-int/lit16 p3, p2, 0xe10

    sub-int/2addr p1, p3

    .line 105
    div-int/lit8 p3, p1, 0x3c

    .line 106
    rem-int/lit8 p1, p1, 0x3c

    .line 107
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p2, p3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%1$02d:%2$02d:%3$02d"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mText:Ljava/lang/String;

    .line 111
    new-instance p1, Landroid/graphics/Rect;

    iget-object p2, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget p2, p2, Landroid/graphics/RectF;->left:F

    float-to-int p2, p2

    iget-object p3, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget p3, p3, Landroid/graphics/RectF;->top:F

    float-to-int p3, p3

    iget-object p4, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget p4, p4, Landroid/graphics/RectF;->right:F

    float-to-int p4, p4

    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->mRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v0, v0

    invoke-direct {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {p0, p1}, Lcom/metamoji/media/voice/ui/VcTimeBalloonLayout;->invalidate(Landroid/graphics/Rect;)V

    return-void
.end method
