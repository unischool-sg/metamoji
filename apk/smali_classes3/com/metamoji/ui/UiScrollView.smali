.class public Lcom/metamoji/ui/UiScrollView;
.super Landroid/widget/FrameLayout;
.source "UiScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/UiScrollView$IOnZoomed;,
        Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _fitOnLayout:Z

.field private _interceptPinch:Z

.field private _marginX:I

.field private _marginY:I

.field private _onZoomedListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiScrollView$IOnZoomed;",
            ">;"
        }
    .end annotation
.end field

.field _parcelable:Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

.field private _scaleGesture:Landroid/view/ScaleGestureDetector;

.field private _scaleRange:Lcom/metamoji/cm/MinMaxF;

.field private _scrollGesture:Landroid/view/GestureDetector;


# direct methods
.method static bridge synthetic -$$Nest$mgetContentRect(Lcom/metamoji/ui/UiScrollView;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/UiScrollView;->getContentRect()Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlimitScrollX(Lcom/metamoji/ui/UiScrollView;FFF)F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/UiScrollView;->limitScrollX(FFF)F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mlimitScrollY(Lcom/metamoji/ui/UiScrollView;FFF)F
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/UiScrollView;->limitScrollY(FFF)F

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 29
    new-instance v0, Lcom/metamoji/cm/MinMaxF;

    const v1, 0x3e4ccccd    # 0.2f

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-direct {v0, v1, v2}, Lcom/metamoji/cm/MinMaxF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    const/16 v0, 0xa

    .line 30
    iput v0, p0, Lcom/metamoji/ui/UiScrollView;->_marginX:I

    .line 31
    iput v0, p0, Lcom/metamoji/ui/UiScrollView;->_marginY:I

    const/4 v0, 0x1

    .line 32
    iput-boolean v0, p0, Lcom/metamoji/ui/UiScrollView;->_fitOnLayout:Z

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_onZoomedListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/metamoji/ui/UiScrollView;->_interceptPinch:Z

    .line 101
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    new-instance p2, Lcom/metamoji/cm/MinMaxF;

    const v0, 0x3e4ccccd    # 0.2f

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-direct {p2, v0, v1}, Lcom/metamoji/cm/MinMaxF;-><init>(FF)V

    iput-object p2, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    const/16 p2, 0xa

    .line 30
    iput p2, p0, Lcom/metamoji/ui/UiScrollView;->_marginX:I

    .line 31
    iput p2, p0, Lcom/metamoji/ui/UiScrollView;->_marginY:I

    const/4 p2, 0x1

    .line 32
    iput-boolean p2, p0, Lcom/metamoji/ui/UiScrollView;->_fitOnLayout:Z

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/UiScrollView;->_onZoomedListeners:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/metamoji/ui/UiScrollView;->_interceptPinch:Z

    .line 81
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    new-instance p2, Lcom/metamoji/cm/MinMaxF;

    const p3, 0x3e4ccccd    # 0.2f

    const/high16 v0, 0x41a00000    # 20.0f

    invoke-direct {p2, p3, v0}, Lcom/metamoji/cm/MinMaxF;-><init>(FF)V

    iput-object p2, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    const/16 p2, 0xa

    .line 30
    iput p2, p0, Lcom/metamoji/ui/UiScrollView;->_marginX:I

    .line 31
    iput p2, p0, Lcom/metamoji/ui/UiScrollView;->_marginY:I

    const/4 p2, 0x1

    .line 32
    iput-boolean p2, p0, Lcom/metamoji/ui/UiScrollView;->_fitOnLayout:Z

    .line 33
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/UiScrollView;->_onZoomedListeners:Ljava/util/ArrayList;

    const/4 p2, 0x0

    .line 34
    iput-boolean p2, p0, Lcom/metamoji/ui/UiScrollView;->_interceptPinch:Z

    .line 91
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiScrollView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private adjustContentPos(II)V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_parcelable:Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    if-eqz v0, :cond_0

    .line 394
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/UiScrollView;->restoreScroll(II)V

    return-void

    .line 395
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/UiScrollView;->_fitOnLayout:Z

    if-eqz v0, :cond_1

    .line 396
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/UiScrollView;->fitContents(II)V

    return-void

    .line 398
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/UiScrollView;->adjustScroll()V

    return-void
.end method

.method private adjustMinScale(F)V
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMin()F

    move-result v0

    cmpl-float v0, v0, p1

    if-lez v0, :cond_0

    .line 592
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/MinMaxF;->setMin(F)V

    :cond_0
    return-void
.end method

.method private adjustScroll()V
    .locals 7

    const/4 v0, 0x0

    .line 365
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 370
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/UiScrollView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v1

    .line 371
    invoke-virtual {p0}, Lcom/metamoji/ui/UiScrollView;->getScrollX()I

    move-result v2

    .line 372
    invoke-virtual {p0}, Lcom/metamoji/ui/UiScrollView;->getScrollY()I

    move-result v3

    int-to-float v4, v2

    .line 373
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-direct {p0, v4, v5, v6}, Lcom/metamoji/ui/UiScrollView;->limitScrollX(FFF)F

    move-result v4

    float-to-int v4, v4

    int-to-float v5, v3

    .line 374
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {p0, v5, v1, v0}, Lcom/metamoji/ui/UiScrollView;->limitScrollY(FFF)F

    move-result v0

    float-to-int v0, v0

    if-eq v4, v2, :cond_1

    .line 376
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/UiScrollView;->setScrollX(I)V

    :cond_1
    if-eq v0, v3, :cond_2

    .line 379
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiScrollView;->setScrollY(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private fireOnZoomedEvent(FF)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_onZoomedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/UiScrollView$IOnZoomed;

    .line 70
    invoke-interface {v1, p1, p2}, Lcom/metamoji/ui/UiScrollView$IOnZoomed;->onZoomed(FF)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private fitContents(II)V
    .locals 5

    const/4 v0, 0x0

    .line 290
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 295
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 296
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-lez v1, :cond_1

    if-lez v0, :cond_1

    .line 299
    iget v2, p0, Lcom/metamoji/ui/UiScrollView;->_marginX:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, p1, v2

    int-to-float v2, v2

    int-to-float v3, v0

    div-float/2addr v2, v3

    iget v3, p0, Lcom/metamoji/ui/UiScrollView;->_marginY:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v3, p2, v3

    int-to-float v3, v3

    int-to-float v4, v1

    div-float/2addr v3, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 300
    invoke-direct {p0, v2}, Lcom/metamoji/ui/UiScrollView;->adjustMinScale(F)V

    sub-int/2addr v0, p1

    .line 303
    div-int/lit8 v0, v0, 0x2

    int-to-float p1, v0

    sub-int/2addr v1, p2

    .line 304
    div-int/lit8 v1, v1, 0x2

    int-to-float p2, v1

    float-to-int p1, p1

    .line 305
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiScrollView;->setScrollX(I)V

    float-to-int p1, p2

    .line 306
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiScrollView;->setScrollY(I)V

    .line 309
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/UiScrollView;->setScale(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getContentRect()Landroid/graphics/RectF;
    .locals 7

    const/4 v0, 0x0

    .line 120
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 122
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    .line 123
    new-instance v3, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/metamoji/ui/UiScrollView;->getScrollX()I

    move-result v4

    int-to-float v4, v4

    sub-float v4, v1, v4

    invoke-virtual {p0}, Lcom/metamoji/ui/UiScrollView;->getScrollY()I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v2, v5

    invoke-direct {v3, v4, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 124
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v4

    mul-float/2addr v1, v4

    .line 125
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v0

    mul-float/2addr v2, v0

    .line 126
    new-instance v0, Landroid/graphics/RectF;

    iget v4, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v4, v1

    iget v5, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v2

    iget v6, v3, Landroid/graphics/PointF;->x:F

    add-float/2addr v6, v1

    iget v1, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v1, v2

    invoke-direct {v0, v4, v5, v6, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private getScrollRange(FFF)Lcom/metamoji/cm/MinMaxF;
    .locals 2

    .line 138
    new-instance v0, Lcom/metamoji/cm/MinMaxF;

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float v1, p3, p2

    sub-float/2addr p1, p2

    sub-float/2addr p3, p1

    invoke-direct {v0, v1, p3}, Lcom/metamoji/cm/MinMaxF;-><init>(FF)V

    return-object v0
.end method

.method private limitScroll(FFFF)F
    .locals 0

    .line 151
    invoke-direct {p0, p2, p3, p4}, Lcom/metamoji/ui/UiScrollView;->getScrollRange(FFF)Lcom/metamoji/cm/MinMaxF;

    move-result-object p2

    .line 152
    invoke-virtual {p2, p1}, Lcom/metamoji/cm/MinMaxF;->limit(F)F

    move-result p1

    return p1
.end method

.method private limitScrollX(FFF)F
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/ui/UiScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/metamoji/ui/UiScrollView;->limitScroll(FFFF)F

    move-result p1

    return p1
.end method

.method private limitScrollY(FFF)F
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/ui/UiScrollView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/metamoji/ui/UiScrollView;->limitScroll(FFFF)F

    move-result p1

    return p1
.end method

.method private restoreScroll(II)V
    .locals 6

    const/4 v0, 0x0

    .line 321
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 327
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 328
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v1, :cond_4

    if-nez v0, :cond_1

    goto :goto_2

    .line 335
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/UiScrollView;->getContentRect()Landroid/graphics/RectF;

    move-result-object v2

    if-ge v1, p1, :cond_2

    sub-int v3, v1, p1

    .line 340
    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    goto :goto_0

    .line 342
    :cond_2
    iget-object v3, p0, Lcom/metamoji/ui/UiScrollView;->_parcelable:Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    invoke-virtual {v3}, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->getScrollX()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-int/lit8 v5, v1, 0x2

    int-to-float v5, v5

    invoke-direct {p0, v3, v4, v5}, Lcom/metamoji/ui/UiScrollView;->limitScrollX(FFF)F

    move-result v3

    :goto_0
    if-ge v0, p2, :cond_3

    sub-int v2, v0, p2

    .line 345
    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    goto :goto_1

    .line 347
    :cond_3
    iget-object v4, p0, Lcom/metamoji/ui/UiScrollView;->_parcelable:Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    invoke-virtual {v4}, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->getScrollY()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-int/lit8 v5, v0, 0x2

    int-to-float v5, v5

    invoke-direct {p0, v4, v2, v5}, Lcom/metamoji/ui/UiScrollView;->limitScrollY(FFF)F

    move-result v2

    :goto_1
    float-to-int v3, v3

    .line 349
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/UiScrollView;->setScrollX(I)V

    float-to-int v2, v2

    .line 350
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/UiScrollView;->setScrollY(I)V

    .line 353
    iget v2, p0, Lcom/metamoji/ui/UiScrollView;->_marginX:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr p1, v2

    int-to-float p1, p1

    int-to-float v1, v1

    div-float/2addr p1, v1

    iget v1, p0, Lcom/metamoji/ui/UiScrollView;->_marginY:I

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr p2, v1

    int-to-float p2, p2

    int-to-float v0, v0

    div-float/2addr p2, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 354
    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiScrollView;->adjustMinScale(F)V

    .line 356
    iget-object p1, p0, Lcom/metamoji/ui/UiScrollView;->_parcelable:Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->getScale()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/ui/UiScrollView;->adjustMinScale(F)V

    .line 357
    iget-object p1, p0, Lcom/metamoji/ui/UiScrollView;->_parcelable:Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    invoke-virtual {p1}, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;->getScale()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiScrollView;->setScale(F)V

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method public addOnZoomedListener(Lcom/metamoji/ui/UiScrollView$IOnZoomed;)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_onZoomedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getMarginX()I
    .locals 1

    .line 519
    iget v0, p0, Lcom/metamoji/ui/UiScrollView;->_marginX:I

    return v0
.end method

.method public getMarginY()I
    .locals 1

    .line 537
    iget v0, p0, Lcom/metamoji/ui/UiScrollView;->_marginY:I

    return v0
.end method

.method public getMaxScale()F
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMax()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1

    .line 573
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    invoke-virtual {v0}, Lcom/metamoji/cm/MinMaxF;->getMax()F

    move-result v0

    return v0
.end method

.method init(Landroid/content/Context;)V
    .locals 2

    .line 201
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/metamoji/ui/UiScrollView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/UiScrollView$1;-><init>(Lcom/metamoji/ui/UiScrollView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleGesture:Landroid/view/ScaleGestureDetector;

    .line 230
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/metamoji/ui/UiScrollView$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/UiScrollView$2;-><init>(Lcom/metamoji/ui/UiScrollView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scrollGesture:Landroid/view/GestureDetector;

    return-void
.end method

.method limitScale(F)F
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/MinMaxF;->limit(F)F

    move-result p1

    return p1
.end method

.method protected measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 0

    .line 600
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 602
    iget p3, p2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    iget p4, p2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p3, p4

    const/4 p4, 0x0

    invoke-static {p3, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 604
    iget p5, p2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p2, p2, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p5, p2

    invoke-static {p5, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 607
    invoke-virtual {p1, p3, p2}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 617
    iget-boolean v0, p0, Lcom/metamoji/ui/UiScrollView;->_interceptPinch:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 618
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 620
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1

    .line 623
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 408
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    move-object p1, p0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 409
    invoke-direct {p0, p4, p5}, Lcom/metamoji/ui/UiScrollView;->adjustContentPos(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    const/4 v0, 0x0

    .line 489
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 490
    instance-of v0, p1, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    if-eqz v0, :cond_0

    .line 492
    check-cast p1, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    iput-object p1, p0, Lcom/metamoji/ui/UiScrollView;->_parcelable:Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 509
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    .line 510
    new-instance v0, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;

    invoke-virtual {p0}, Lcom/metamoji/ui/UiScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/ui/UiScrollView;->getScrollY()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/metamoji/ui/UiScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getScaleX()F

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/metamoji/ui/UiScrollView$ScrollerParcelable;-><init>(IIF)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 414
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    .line 415
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/UiScrollView;->adjustContentPos(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleGesture:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 277
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scrollGesture:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public removeOnZoomedListener(Lcom/metamoji/ui/UiScrollView$IOnZoomed;)V
    .locals 1

    .line 59
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_onZoomedListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setInterceptPinchGesture(Z)V
    .locals 0

    .line 612
    iput-boolean p1, p0, Lcom/metamoji/ui/UiScrollView;->_interceptPinch:Z

    return-void
.end method

.method public setMarginX(I)V
    .locals 0

    .line 528
    iput p1, p0, Lcom/metamoji/ui/UiScrollView;->_marginX:I

    return-void
.end method

.method public setMarginY(I)V
    .locals 0

    .line 546
    iput p1, p0, Lcom/metamoji/ui/UiScrollView;->_marginY:I

    return-void
.end method

.method public setMaxScale(F)V
    .locals 1

    .line 564
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/MinMaxF;->setMax(F)V

    return-void
.end method

.method public setMinScale(F)V
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/metamoji/ui/UiScrollView;->_scaleRange:Lcom/metamoji/cm/MinMaxF;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/MinMaxF;->setMin(F)V

    return-void
.end method

.method setScale(F)V
    .locals 1

    const/4 v0, 0x0

    .line 180
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/UiScrollView;->setScale(FZ)V

    return-void
.end method

.method setScale(FZ)V
    .locals 2

    .line 184
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiScrollView;->limitScale(F)F

    move-result p1

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/UiScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 186
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    if-nez p2, :cond_1

    cmpl-float p2, v1, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 188
    :cond_1
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleX(F)V

    .line 189
    invoke-virtual {v0, p1}, Landroid/view/View;->setScaleY(F)V

    .line 190
    invoke-direct {p0}, Lcom/metamoji/ui/UiScrollView;->adjustScroll()V

    .line 191
    invoke-direct {p0, v1, p1}, Lcom/metamoji/ui/UiScrollView;->fireOnZoomedEvent(FF)V

    return-void
.end method
