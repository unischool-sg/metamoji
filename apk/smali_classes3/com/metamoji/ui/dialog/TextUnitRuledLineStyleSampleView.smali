.class public Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;
.super Landroid/view/View;
.source "TextUnitRuledLineStyleSampleView.java"


# instance fields
.field private paint:Landroid/graphics/Paint;

.field private ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

.field tmpRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 21
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 18
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 22
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 27
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->init(Landroid/content/Context;)V

    return-void
.end method

.method private drawRuledLine(Landroid/graphics/Canvas;)V
    .locals 11

    .line 67
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 68
    sget-object v1, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    if-ne v1, v0, :cond_0

    :goto_0
    move-object v0, p0

    goto/16 :goto_1

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 72
    sget-object v2, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView$1;->$SwitchMap$com$metamoji$un$text$model$RuledLineStyle:[I

    invoke-virtual {v0}, Lcom/metamoji/un/text/model/RuledLineStyle;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/16 v5, 0xff

    const/16 v6, 0xcc

    const/16 v7, 0xaa

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 110
    :pswitch_0
    invoke-direct {p0, p1, v7, v7, v7}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineSolid(Landroid/graphics/Canvas;III)V

    return-void

    .line 107
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineStyledLine20(Landroid/graphics/Canvas;)V

    return-void

    :pswitch_2
    const/high16 v0, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    const/high16 v5, 0x40800000    # 4.0f

    mul-float/2addr v1, v5

    .line 102
    new-array v10, v4, [F

    aput v0, v10, v3

    aput v1, v10, v2

    const/16 v8, 0xdd

    const/16 v9, 0xdd

    const/16 v7, 0xdd

    move-object v5, p0

    move-object v6, p1

    .line 103
    invoke-direct/range {v5 .. v10}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineDashed(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_3
    move-object v6, p1

    const/high16 p1, 0x41000000    # 8.0f

    mul-float/2addr v1, p1

    .line 96
    new-array v5, v4, [F

    aput v1, v5, v3

    aput v1, v5, v2

    const/16 v3, 0xdd

    const/16 v4, 0xdd

    const/16 v2, 0xdd

    move-object v0, p0

    move-object v1, v6

    .line 97
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineDashed(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_4
    move-object v6, p1

    const/high16 p1, 0x40400000    # 3.0f

    mul-float/2addr v1, p1

    .line 90
    new-array v5, v4, [F

    aput v1, v5, v3

    aput v1, v5, v2

    const/16 v3, 0xdd

    const/16 v4, 0xdd

    const/16 v2, 0xdd

    move-object v0, p0

    move-object v1, v6

    .line 91
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineDashed(Landroid/graphics/Canvas;III[F)V

    return-void

    :pswitch_5
    move-object v0, p0

    move-object v1, p1

    const/16 p1, 0xdd

    .line 86
    invoke-direct {p0, v1, p1, p1, p1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineSolid(Landroid/graphics/Canvas;III)V

    return-void

    :pswitch_6
    move-object v0, p0

    move-object v1, p1

    .line 83
    invoke-direct {p0, v1, v5, v6, v7}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineSolid(Landroid/graphics/Canvas;III)V

    return-void

    :pswitch_7
    move-object v0, p0

    move-object v1, p1

    .line 80
    invoke-direct {p0, v1, v5, v7, v6}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineSolid(Landroid/graphics/Canvas;III)V

    return-void

    :pswitch_8
    move-object v0, p0

    move-object v1, p1

    const/16 p1, 0xee

    const/16 v2, 0xbb

    const/16 v3, 0x99

    .line 77
    invoke-direct {p0, v1, v3, p1, v2}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineSolid(Landroid/graphics/Canvas;III)V

    return-void

    :pswitch_9
    move-object v0, p0

    move-object v1, p1

    .line 74
    invoke-direct {p0, v1, v7, v6, v5}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineSolid(Landroid/graphics/Canvas;III)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private drawRuledLineDashed(Landroid/graphics/Canvas;III[F)V
    .locals 6

    .line 162
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

    if-eqz p5, :cond_0

    .line 159
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x0

    invoke-direct {v1, p5, v2}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    goto :goto_0

    :cond_0
    const/4 p5, 0x0

    .line 162
    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 164
    :goto_0
    iget-object p5, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

    const/16 v0, 0xff

    invoke-static {v0, p2, p3, p4}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 166
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 167
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 168
    iget p3, p2, Landroid/graphics/Rect;->top:I

    int-to-float p3, p3

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p4

    int-to-float p4, p4

    const/high16 p5, 0x40000000    # 2.0f

    div-float/2addr p4, p5

    add-float v2, p3, p4

    .line 169
    iget p3, p2, Landroid/graphics/Rect;->left:I

    int-to-float v1, p3

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float v3, p2

    iget-object v5, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

    move v4, v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawRuledLineSolid(Landroid/graphics/Canvas;III)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLineDashed(Landroid/graphics/Canvas;III[F)V

    return-void
.end method

.method private drawRuledLineStyledLine20(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    .line 189
    iget-object v1, v0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

    const/16 v2, 0xff

    const/16 v3, 0xdd

    invoke-static {v2, v3, v3, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 190
    iget-object v1, v0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 192
    invoke-virtual {v0}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 194
    iget-object v2, v0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->tmpRect:Landroid/graphics/Rect;

    .line 195
    invoke-virtual {v0, v2}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 196
    iget v3, v2, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    add-float/2addr v3, v4

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v4, v1

    sub-float v8, v3, v4

    .line 198
    iget v3, v2, Landroid/graphics/Rect;->left:I

    int-to-float v7, v3

    iget v3, v2, Landroid/graphics/Rect;->right:I

    int-to-float v9, v3

    iget-object v11, v0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

    move v10, v8

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    mul-float/2addr v1, v5

    add-float v14, v8, v1

    .line 200
    iget v1, v2, Landroid/graphics/Rect;->left:I

    int-to-float v13, v1

    iget v1, v2, Landroid/graphics/Rect;->right:I

    int-to-float v15, v1

    iget-object v1, v0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

    move/from16 v16, v14

    move-object/from16 v12, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v12 .. v17}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 38
    invoke-virtual {p0, v1, v0}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 40
    sget-object v0, Lcom/metamoji/un/text/model/RuledLineStyle;->None:Lcom/metamoji/un/text/model/RuledLineStyle;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 41
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

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
    iget-object v0, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->paint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float/2addr p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->drawRuledLine(Landroid/graphics/Canvas;)V

    .line 58
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setRuledLineStyle(Lcom/metamoji/un/text/model/RuledLineStyle;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->ruledLineStyle:Lcom/metamoji/un/text/model/RuledLineStyle;

    .line 49
    invoke-virtual {p0}, Lcom/metamoji/ui/dialog/TextUnitRuledLineStyleSampleView;->invalidate()V

    return-void
.end method
