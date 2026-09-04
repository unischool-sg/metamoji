.class public Lcom/metamoji/ui/WristGuardView;
.super Landroid/widget/FrameLayout;
.source "WristGuardView.java"


# instance fields
.field private _context:Landroid/content/Context;

.field mClose:Landroid/view/View;

.field mDrag:Z

.field mParent:Lcom/metamoji/ui/WristGuardFrame;

.field mResize:Landroid/view/View;

.field mRotate:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/WristGuardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/WristGuardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/WristGuardView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private checkHandle(Landroid/view/MotionEvent;)Z
    .locals 4

    const/high16 v0, 0x42200000    # 40.0f

    .line 94
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 95
    iget-object v1, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v1, v1, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v2, 0x10e

    const/4 v3, 0x1

    if-ne v1, v2, :cond_0

    .line 96
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v2, v0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    return v3

    .line 98
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v1, v1, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v2, 0xb4

    if-ne v1, v2, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardView;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v0, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    return v3

    .line 101
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v1, v1, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v2, 0x5a

    if-ne v1, v2, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardView;->getWidth()I

    move-result v1

    sub-int/2addr v1, v0

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    return v3

    .line 105
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    int-to-float v0, v0

    cmpg-float v1, v1, v0

    if-gez v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpg-float p1, p1, v0

    if-gez p1, :cond_3

    return v3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method btnClick(Landroid/view/View;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    if-ne p1, v0, :cond_0

    .line 151
    iget-object p1, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p1}, Lcom/metamoji/ui/WristGuardFrame;->wgClose()V

    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    if-ne p1, v0, :cond_1

    .line 155
    iget-object p1, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/metamoji/ui/WristGuardFrame;->wgRotate()V

    :cond_1
    return-void
.end method

.method init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/WristGuardView;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 v0, 0x0

    .line 55
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/WristGuardView;->setWillNotDraw(Z)V

    .line 56
    iput-object p1, p0, Lcom/metamoji/ui/WristGuardView;->_context:Landroid/content/Context;

    .line 58
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->wg_3bon:I

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/WristGuardView;->makeButton(IZ)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/WristGuardView;->mResize:Landroid/view/View;

    .line 59
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->wg_marurefresh:I

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/WristGuardView;->makeButton(IZ)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    .line 60
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->wg_marusankaku:I

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/WristGuardView;->makeButton(IZ)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    return-void
.end method

.method makeBaloonPath()Landroid/graphics/Path;
    .locals 9

    .line 230
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x41600000    # 14.0f

    .line 232
    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v2

    .line 233
    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    .line 234
    iget-object v4, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v4, v4, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/high16 v5, 0x40000000    # 2.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    if-nez v4, :cond_0

    .line 235
    invoke-virtual {v3, v7, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 237
    new-instance v4, Landroid/graphics/RectF;

    mul-float/2addr v2, v5

    invoke-direct {v4, v7, v7, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {v3, v4, v2, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 238
    invoke-virtual {v3, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 239
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 240
    invoke-virtual {v3, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 241
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3

    .line 242
    :cond_0
    iget-object v4, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v4, v4, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v8, 0x10e

    if-ne v4, v8, :cond_1

    .line 243
    invoke-virtual {v3, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 244
    invoke-virtual {v3, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 245
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 246
    invoke-virtual {v3, v2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 247
    new-instance v0, Landroid/graphics/RectF;

    mul-float/2addr v2, v5

    sub-float v4, v1, v2

    invoke-direct {v0, v7, v4, v2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v0, v6, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 248
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3

    .line 249
    :cond_1
    iget-object v4, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v4, v4, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v8, 0xb4

    if-ne v4, v8, :cond_2

    .line 250
    invoke-virtual {v3, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 251
    invoke-virtual {v3, v0, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 252
    new-instance v4, Landroid/graphics/RectF;

    mul-float/2addr v2, v5

    sub-float v5, v0, v2

    sub-float v2, v1, v2

    invoke-direct {v4, v5, v2, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v3, v4, v7, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 253
    invoke-virtual {v3, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3

    .line 256
    :cond_2
    invoke-virtual {v3, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    .line 257
    new-instance v4, Landroid/graphics/RectF;

    mul-float/2addr v2, v5

    sub-float v5, v0, v2

    invoke-direct {v4, v5, v7, v0, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v3, v4, v2, v6}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FF)V

    .line 258
    invoke-virtual {v3, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 259
    invoke-virtual {v3, v7, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 260
    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    return-object v3
.end method

.method makeButton(IZ)Landroid/view/View;
    .locals 5

    const/high16 v0, 0x42000000    # 32.0f

    .line 113
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 114
    new-instance v1, Landroid/view/View;

    iget-object v2, p0, Lcom/metamoji/ui/WristGuardView;->_context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 118
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 120
    invoke-static {v0, v0, p1}, Lcom/metamoji/ui/HoverCm;->makeImage(III)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 121
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v3, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 122
    invoke-static {p1}, Lcom/metamoji/ui/HoverCm;->makeDisableImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 123
    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v2, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 125
    new-instance p1, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {p1}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    const v2, -0x10100a7

    .line 126
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, v2, v3}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    const v2, 0x10100a7

    .line 127
    filled-new-array {v2}, [I

    move-result-object v2

    invoke-virtual {p1, v2, v4}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 129
    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p2, :cond_0

    .line 134
    new-instance p1, Lcom/metamoji/ui/WristGuardView$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/WristGuardView$1;-><init>(Lcom/metamoji/ui/WristGuardView;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :cond_0
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 143
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/ui/WristGuardView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v1
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/ui/WristGuardView;->makeBaloonPath()Landroid/graphics/Path;

    move-result-object v0

    .line 216
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 217
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    const/4 v2, 0x1

    .line 218
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 v2, 0xdd

    const/16 v3, 0xee

    const/16 v4, 0x50

    const/16 v5, 0xaa

    .line 219
    invoke-static {v4, v5, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 222
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 223
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 224
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 169
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    const/high16 v0, 0x41000000    # 8.0f

    .line 170
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x42000000    # 32.0f

    .line 171
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 176
    iget-object v2, p1, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v2, v2, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v3, 0x10e

    if-ne v2, v3, :cond_0

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    sub-int/2addr p5, v1

    .line 178
    iget-object p2, p1, Lcom/metamoji/ui/WristGuardView;->mResize:Landroid/view/View;

    add-int p3, v0, v1

    add-int p4, p5, v1

    invoke-virtual {p2, v0, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr p5, p3

    .line 180
    iget-object p2, p1, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    add-int p4, p5, v1

    invoke-virtual {p2, v0, p5, p3, p4}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr p5, p3

    .line 182
    iget-object p2, p1, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    add-int/2addr v1, p5

    invoke-virtual {p2, v0, p5, p3, v1}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 183
    :cond_0
    iget-object v2, p1, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v2, v2, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    const/16 v3, 0xb4

    if-ne v2, v3, :cond_1

    sub-int/2addr p5, p3

    sub-int/2addr p5, v0

    sub-int/2addr p5, v1

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    sub-int/2addr p4, v1

    .line 186
    iget-object p2, p1, Lcom/metamoji/ui/WristGuardView;->mResize:Landroid/view/View;

    add-int p3, p4, v1

    add-int v2, p5, v1

    invoke-virtual {p2, p4, p5, p3, v2}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, v1

    sub-int/2addr p4, v0

    .line 188
    iget-object p2, p1, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    add-int p3, p4, v1

    invoke-virtual {p2, p4, p5, p3, v2}, Landroid/view/View;->layout(IIII)V

    sub-int/2addr p4, v0

    .line 190
    iget-object p2, p1, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    add-int/2addr v1, p4

    invoke-virtual {p2, p4, p5, v1, v2}, Landroid/view/View;->layout(IIII)V

    return-void

    .line 191
    :cond_1
    iget-object p3, p1, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget p3, p3, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    .line 199
    iget-object p5, p1, Lcom/metamoji/ui/WristGuardView;->mResize:Landroid/view/View;

    const/16 v2, 0x5a

    if-ne p3, v2, :cond_2

    sub-int/2addr p4, p2

    sub-int/2addr p4, v0

    sub-int/2addr p4, v1

    add-int p2, p4, v1

    add-int p3, v0, v1

    .line 193
    invoke-virtual {p5, p4, v0, p2, p3}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, p3

    .line 195
    iget-object p5, p1, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    add-int v2, v0, v1

    invoke-virtual {p5, p4, v0, p2, v2}, Landroid/view/View;->layout(IIII)V

    add-int/2addr v0, p3

    .line 197
    iget-object p3, p1, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    add-int/2addr v1, v0

    invoke-virtual {p3, p4, v0, p2, v1}, Landroid/view/View;->layout(IIII)V

    return-void

    :cond_2
    add-int p2, v0, v1

    .line 199
    invoke-virtual {p5, v0, v0, p2, p2}, Landroid/view/View;->layout(IIII)V

    add-int p3, v0, p2

    .line 201
    iget-object p4, p1, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    add-int p5, p3, v1

    invoke-virtual {p4, p3, v0, p5, p2}, Landroid/view/View;->layout(IIII)V

    add-int/2addr p3, p2

    .line 203
    iget-object p4, p1, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    add-int/2addr v1, p3

    invoke-virtual {p4, p3, v0, v1, p2}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 67
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 84
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/WristGuardView;->mDrag:Z

    if-eqz v0, :cond_4

    .line 85
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/WristGuardFrame;->dragMove(Landroid/view/View;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 78
    :cond_1
    iget-boolean p1, p0, Lcom/metamoji/ui/WristGuardView;->mDrag:Z

    if-eqz p1, :cond_4

    .line 79
    iget-object p1, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    invoke-virtual {p1}, Lcom/metamoji/ui/WristGuardFrame;->endDrag()V

    .line 80
    iput-boolean v1, p0, Lcom/metamoji/ui/WristGuardView;->mDrag:Z

    goto :goto_0

    .line 69
    :cond_2
    invoke-direct {p0, p1}, Lcom/metamoji/ui/WristGuardView;->checkHandle(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    invoke-virtual {v0, p0, p1}, Lcom/metamoji/ui/WristGuardFrame;->startDrag(Landroid/view/View;Landroid/view/MotionEvent;)V

    .line 71
    iput-boolean v2, p0, Lcom/metamoji/ui/WristGuardView;->mDrag:Z

    goto :goto_0

    .line 73
    :cond_3
    iput-boolean v1, p0, Lcom/metamoji/ui/WristGuardView;->mDrag:Z

    :cond_4
    :goto_0
    return v2
.end method

.method public setParent(Lcom/metamoji/ui/WristGuardFrame;)V
    .locals 0

    .line 209
    iput-object p1, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    return-void
.end method

.method public updateRotate()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mResize:Landroid/view/View;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 270
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mResize:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 271
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mResize:Landroid/view/View;

    iget-object v2, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v2, v2, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 273
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 274
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 275
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mRotate:Landroid/view/View;

    iget-object v2, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v2, v2, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setRotation(F)V

    .line 277
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    .line 278
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    .line 279
    iget-object v0, p0, Lcom/metamoji/ui/WristGuardView;->mClose:Landroid/view/View;

    iget-object v1, p0, Lcom/metamoji/ui/WristGuardView;->mParent:Lcom/metamoji/ui/WristGuardFrame;

    iget v1, v1, Lcom/metamoji/ui/WristGuardFrame;->mDirection:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setRotation(F)V

    return-void
.end method
