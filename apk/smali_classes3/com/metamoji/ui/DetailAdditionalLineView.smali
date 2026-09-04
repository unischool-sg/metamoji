.class public Lcom/metamoji/ui/DetailAdditionalLineView;
.super Landroid/widget/RelativeLayout;
.source "DetailAdditionalLineView.java"


# instance fields
.field private m_dwindow:Lcom/metamoji/ui/DetailWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private drawDashLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V
    .locals 6

    move v1, p2

    :goto_0
    cmpg-float p2, v1, p4

    if-gez p2, :cond_0

    const/high16 p2, 0x41200000    # 10.0f

    add-float p5, v1, p2

    .line 154
    invoke-static {p4, p5}, Ljava/lang/Math;->min(FF)F

    move-result v3

    move v4, p3

    move-object v0, p1

    move v2, p3

    move-object v5, p6

    .line 155
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-float v1, p5, p2

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 24

    move-object/from16 v0, p0

    .line 53
    iget-object v1, v0, Lcom/metamoji/ui/DetailAdditionalLineView;->m_dwindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v1}, Lcom/metamoji/ui/DetailWindow;->getFeedStep()F

    move-result v7

    const-wide v1, 0x3fefffeb074a771dL    # 0.99999

    float-to-double v3, v7

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_c

    .line 54
    iget-object v1, v0, Lcom/metamoji/ui/DetailAdditionalLineView;->m_dwindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v1}, Lcom/metamoji/ui/DetailWindow;->isForceWindowStep()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_b

    .line 58
    :cond_0
    invoke-super/range {p0 .. p1}, Landroid/widget/RelativeLayout;->draw(Landroid/graphics/Canvas;)V

    .line 60
    iget-object v1, v0, Lcom/metamoji/ui/DetailAdditionalLineView;->m_dwindow:Lcom/metamoji/ui/DetailWindow;

    invoke-virtual {v1}, Lcom/metamoji/ui/DetailWindow;->getPosition()Landroid/graphics/RectF;

    move-result-object v1

    .line 61
    new-instance v8, Lcom/metamoji/cm/RectEx;

    invoke-direct {v8, v1}, Lcom/metamoji/cm/RectEx;-><init>(Landroid/graphics/RectF;)V

    .line 63
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    .line 64
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 65
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->formPosData()Lcom/metamoji/un/form/UnFormPositionData;

    move-result-object v1

    .line 66
    invoke-virtual {v1, v8}, Lcom/metamoji/un/form/UnFormPositionData;->inRectHLines(Lcom/metamoji/cm/RectEx;)Ljava/util/HashMap;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 68
    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_b

    .line 72
    :cond_1
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    const/high16 v1, 0x40000000    # 2.0f

    .line 73
    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 74
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/16 v1, 0x80

    const/16 v2, 0xff

    const/4 v10, 0x0

    .line 75
    invoke-virtual {v6, v1, v2, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 76
    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v6, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    int-to-float v11, v1

    .line 80
    iget v1, v8, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 83
    invoke-virtual {v9}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cm/RectEx;

    .line 84
    invoke-virtual {v9, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;

    .line 85
    invoke-virtual {v1}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->startX()F

    move-result v14

    .line 86
    invoke-virtual {v1}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->endX()F

    move-result v15

    .line 89
    iget v2, v8, Lcom/metamoji/cm/RectEx;->y:F

    .line 90
    iget v3, v8, Lcom/metamoji/cm/RectEx;->height:F

    add-float v16, v2, v3

    .line 91
    iget v3, v8, Lcom/metamoji/cm/RectEx;->width:F

    div-float v17, v11, v3

    .line 93
    invoke-virtual {v1}, Lcom/metamoji/un/form/UnFormPositionData$NtUnitHLineInfo;->hLines()Ljava/util/ArrayList;

    move-result-object v1

    move v3, v10

    .line 95
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 97
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v4, v4, v2

    if-gez v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move/from16 v18, v3

    goto :goto_2

    :cond_3
    move/from16 v18, v10

    :goto_2
    move/from16 v3, v18

    .line 105
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_7

    .line 106
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpg-float v5, v16, v4

    if-gez v5, :cond_4

    goto/16 :goto_6

    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 110
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v19

    sub-float v5, v19, v4

    mul-float v20, v5, v7

    add-float v4, v4, v20

    move/from16 v21, v4

    :goto_4
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v19, v4

    cmpg-float v4, v21, v4

    if-gez v4, :cond_6

    cmpg-float v4, v2, v21

    if-gez v4, :cond_5

    cmpg-float v4, v21, v16

    if-gez v4, :cond_5

    sub-float v4, v14, v12

    mul-float v4, v4, v17

    sub-float v5, v21, v2

    mul-float v5, v5, v17

    .line 116
    iget v10, v8, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v10, v12

    invoke-static {v15, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    mul-float v10, v10, v17

    move/from16 v22, v3

    move v3, v5

    move/from16 v23, v10

    move v10, v2

    move v2, v4

    move/from16 v4, v23

    move/from16 v23, v7

    move-object v7, v1

    move-object/from16 v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/DetailAdditionalLineView;->drawDashLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_5
    move v10, v2

    move/from16 v22, v3

    move/from16 v23, v7

    move-object v7, v1

    :goto_5
    add-float v21, v21, v20

    move-object/from16 v0, p0

    move-object v1, v7

    move v2, v10

    move/from16 v3, v22

    move/from16 v7, v23

    const/4 v10, 0x0

    goto :goto_4

    :cond_6
    move/from16 v22, v3

    move/from16 v23, v7

    const/4 v10, 0x0

    move-object/from16 v0, p0

    goto :goto_3

    :cond_7
    :goto_6
    move v10, v2

    move/from16 v23, v7

    move-object v7, v1

    move/from16 v0, v18

    :goto_7
    if-lez v0, :cond_b

    .line 122
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v2, v1, v10

    if-gez v2, :cond_8

    goto :goto_a

    :cond_8
    add-int/lit8 v2, v0, -0x1

    .line 126
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v18

    sub-float v2, v1, v18

    mul-float v19, v2, v23

    sub-float v1, v1, v19

    move/from16 v20, v1

    :goto_8
    cmpg-float v1, v18, v20

    if-gez v1, :cond_a

    cmpg-float v1, v10, v20

    if-gez v1, :cond_9

    cmpg-float v1, v20, v16

    if-gez v1, :cond_9

    sub-float v1, v14, v12

    mul-float v2, v1, v17

    sub-float v1, v20, v10

    mul-float v3, v1, v17

    .line 131
    iget v1, v8, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr v1, v12

    invoke-static {v15, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float v4, v1, v17

    move v5, v3

    move-object/from16 v1, p1

    move/from16 v21, v0

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/ui/DetailAdditionalLineView;->drawDashLine(Landroid/graphics/Canvas;FFFFLandroid/graphics/Paint;)V

    goto :goto_9

    :cond_9
    move/from16 v21, v0

    :goto_9
    sub-float v20, v20, v19

    move/from16 v0, v21

    goto :goto_8

    :cond_a
    move/from16 v21, v0

    add-int/lit8 v0, v21, -0x1

    goto :goto_7

    :cond_b
    :goto_a
    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v7, v23

    goto/16 :goto_0

    :cond_c
    :goto_b
    return-void

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public init(Lcom/metamoji/ui/DetailWindow;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/ui/DetailAdditionalLineView;->m_dwindow:Lcom/metamoji/ui/DetailWindow;

    return-void
.end method
