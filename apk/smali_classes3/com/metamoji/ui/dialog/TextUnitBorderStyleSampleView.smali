.class public Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;
.super Landroid/view/View;
.source "TextUnitBorderStyleSampleView.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field tmpRect:Landroid/graphics/Rect;

.field private unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 22
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 27
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawNormalUnitBorder(Landroid/graphics/Canvas;III[F)V
    .locals 6

    .line 125
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->paint:Landroid/graphics/Paint;

    if-eqz p5, :cond_0

    .line 122
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x0

    invoke-direct {v1, p5, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 125
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 127
    :goto_0
    iget-object p5, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->paint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-static {v0, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 130
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 131
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float v2, p3, p4

    .line 132
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, p2

    iget-object v5, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->paint:Landroid/graphics/Paint;

    move v4, v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawUnitBorder(Landroid/graphics/Canvas;)V
    .locals 11

    .line 67
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 68
    sget-object v1, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView$1;->$SwitchMap$com$metamoji$un$text$model$UnitBorderStyle:[I

    iget-object v2, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/text/model/UnitBorderStyle;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/high16 v1, 0x40400000    # 3.0f

    mul-float/2addr v0, v1

    .line 92
    new-array v10, v4, [F

    aput v0, v10, v3

    aput v0, v10, v2

    const/16 v8, 0xcc

    const/16 v9, 0xcc

    const/16 v7, 0xcc

    move-object v5, p0

    move-object v6, p1

    .line 93
    invoke-direct/range {v5 .. v10}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->drawNormalUnitBorder(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_1
    move-object v1, p1

    const/high16 p1, 0x3f800000    # 1.0f

    mul-float/2addr v0, p1

    .line 86
    new-array v5, v4, [F

    aput v0, v5, v3

    aput v0, v5, v2

    const/16 v3, 0xcc

    const/16 v4, 0xcc

    const/16 v2, 0xcc

    move-object v0, p0

    .line 87
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->drawNormalUnitBorder(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_2
    move-object v1, p1

    const/16 v4, 0xcc

    const/4 v5, 0x0

    const/16 v2, 0xcc

    const/16 v3, 0xcc

    move-object v0, p0

    .line 82
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->drawNormalUnitBorder(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_3
    move-object v1, p1

    const/16 v4, 0xaa

    const/4 v5, 0x0

    const/16 v2, 0xff

    const/16 v3, 0xcc

    move-object v0, p0

    .line 79
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->drawNormalUnitBorder(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_4
    move-object v1, p1

    const/16 v4, 0xcc

    const/4 v5, 0x0

    const/16 v2, 0xff

    const/16 v3, 0xaa

    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->drawNormalUnitBorder(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_5
    move-object v1, p1

    const/16 v4, 0xbb

    const/4 v5, 0x0

    const/16 v2, 0x99

    const/16 v3, 0xee

    move-object v0, p0

    .line 73
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->drawNormalUnitBorder(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_6
    move-object v1, p1

    const/16 v4, 0xff

    const/4 v5, 0x0

    const/16 v2, 0xaa

    const/16 v3, 0xcc

    move-object v0, p0

    .line 70
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->drawNormalUnitBorder(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 40
    sget-object v0, Lcom/metamoji/un/text/model/UnitBorderStyle;->None:Lcom/metamoji/un/text/model/UnitBorderStyle;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->paint:Landroid/graphics/Paint;

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
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->drawUnitBorder(Landroid/graphics/Canvas;)V

    .line 56
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setUnitBorderStyle(Lcom/metamoji/un/text/model/UnitBorderStyle;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->unitBorderStyle:Lcom/metamoji/un/text/model/UnitBorderStyle;

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitBorderStyleSampleView;->invalidate()V

    return-void
.end method
