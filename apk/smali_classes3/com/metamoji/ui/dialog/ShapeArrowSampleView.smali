.class public Lcom/metamoji/ui/dialog/ShapeArrowSampleView;
.super Landroid/view/View;
.source "ShapeArrowSampleView.java"


# instance fields
.field private mPaint:Landroid/graphics/Paint;

.field private mStyle:Lcom/metamoji/nt/share/NtPenStyle;

.field mTmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mTmpRect:Landroid/graphics/Rect;

    .line 23
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mTmpRect:Landroid/graphics/Rect;

    .line 33
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mTmpRect:Landroid/graphics/Rect;

    .line 28
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawArrow(Landroid/graphics/Canvas;)V
    .locals 7

    .line 67
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mTmpRect:Landroid/graphics/Rect;

    .line 68
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 70
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    .line 71
    iget-object v2, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mPaint:Landroid/graphics/Paint;

    iget-object v4, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    iget v5, v4, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    const/4 v6, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lcom/metamoji/ui/UIUtils;->drawArrow(Landroid/graphics/Canvas;Landroid/graphics/Paint;Landroid/graphics/RectF;Lcom/metamoji/nt/share/NtPenStyle;F[F)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 39
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mPaint:Landroid/graphics/Paint;

    .line 42
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 44
    iget-object v0, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->drawArrow(Landroid/graphics/Canvas;)V

    .line 59
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setArrowStyle(Lcom/metamoji/nt/share/NtPenStyle;)V
    .locals 1

    .line 48
    iput-object p1, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 v0, -0x1000000

    .line 49
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setLineColor(I)V

    .line 50
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setLineWidth(F)V

    .line 51
    iget-object p1, p0, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->mStyle:Lcom/metamoji/nt/share/NtPenStyle;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/share/NtPenStyle;->setLineAlpha(F)V

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/ShapeArrowSampleView;->invalidate()V

    return-void
.end method
