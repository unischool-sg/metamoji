.class public Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;
.super Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer;
.source "DrShShapeRecognizer.java"


# instance fields
.field private m_coordinateZoom:F

.field private m_physical_scale:F

.field private m_points:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer;-><init>()V

    .line 18
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_points:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 19
    iput v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_physical_scale:F

    return-void
.end method

.method private static toFloatArray(Ljava/util/ArrayList;)[F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)[F"
        }
    .end annotation

    .line 191
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [F

    .line 193
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    add-int/lit8 v3, v1, 0x1

    .line 194
    iget v4, v2, Landroid/graphics/PointF;->x:F

    aput v4, v0, v1

    add-int/lit8 v1, v1, 0x2

    .line 195
    iget v2, v2, Landroid/graphics/PointF;->y:F

    aput v2, v0, v3

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static toPointArray([F)[Landroid/graphics/PointF;
    .locals 7

    .line 182
    array-length v0, p0

    div-int/lit8 v0, v0, 0x2

    .line 183
    new-array v1, v0, [Landroid/graphics/PointF;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_0

    .line 185
    new-instance v4, Landroid/graphics/PointF;

    aget v5, p0, v3

    add-int/lit8 v6, v3, 0x1

    aget v6, p0, v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public addLineToPoint(Landroid/graphics/PointF;)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addQuadCurveToPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 2

    .line 42
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_points:Ljava/util/ArrayList;

    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public beginAtPoint(Landroid/graphics/PointF;)V
    .locals 3

    .line 34
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_points:Ljava/util/ArrayList;

    new-instance v1, Landroid/graphics/PointF;

    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, p1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearPoints()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_points:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public coordinateZoom()F
    .locals 1

    .line 27
    iget v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_coordinateZoom:F

    return v0
.end method

.method public recognizeWithOption(Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;)Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;
    .locals 13

    .line 49
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_points:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->toFloatArray(Ljava/util/ArrayList;)[F

    move-result-object v0

    .line 52
    new-instance v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;-><init>()V

    .line 60
    iget v2, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_physical_scale:F

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    iget v4, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_coordinateZoom:F

    div-float/2addr v2, v4

    iput v2, v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->absoluteScale:F

    .line 62
    iget v2, p1, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->closingThreshold:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->closingThreshold:F

    .line 63
    iget v2, p1, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->horizontalAndVerticalThreshold:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->horizontalAndVerticalThreshold:F

    .line 64
    iget v2, p1, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->lineThreshold:F

    mul-float/2addr v2, v3

    iput v2, v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->lineThreshold:F

    .line 65
    iget v2, p1, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->rightAngleThreshold:F

    iput v2, v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->rightAngleThreshold:F

    .line 66
    iget v2, p1, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->zeroAngleThreshold:F

    iput v2, v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->zeroAngleThreshold:F

    .line 67
    iget v2, p1, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->regularCircleThreshold:F

    iput v2, v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->regularCircleThreshold:F

    .line 68
    iget p1, p1, Lcom/metamoji/un/draw2/library/shape/DrShRecognizerOption;->ellipseMaxRadius:F

    mul-float/2addr p1, v3

    iput p1, v1, Lcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;->ellipseMaxRadius:F

    .line 70
    new-instance v2, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;-><init>()V

    const/4 p1, 0x0

    .line 74
    :try_start_0
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->recognize([FLcom/metamoji/un/draw2/jni/library/reshape/Recognizer$Options;)Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    iget v1, v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->count:I

    .line 80
    iget-object v3, v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->traits:Ljava/util/EnumSet;

    sget-object v4, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->CLOSED:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 81
    iget-object v4, v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->data:[F

    .line 83
    sget-object v5, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer$1;->$SwitchMap$com$metamoji$un$draw2$jni$library$reshape$Recognition$Type:[I

    iget-object v6, v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->type:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Type;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x5

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    packed-switch v5, :pswitch_data_0

    .line 166
    invoke-static {v9, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    :pswitch_0
    if-ge v1, v11, :cond_0

    .line 153
    invoke-static {v11, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 156
    :cond_0
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->toPointArray([F)[Landroid/graphics/PointF;

    move-result-object p1

    if-ne v1, v11, :cond_1

    .line 158
    aget-object v0, p1, v10

    aget-object v1, p1, v11

    aget-object p1, p1, v9

    invoke-virtual {v2, v0, v1, p1}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setCurveStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-object v2

    .line 160
    :cond_1
    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/cm/PointArray;-><init>(Ljava/util/List;)V

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setMultiCurvePoints(Lcom/metamoji/cm/PointArray;)V

    return-object v2

    .line 138
    :pswitch_1
    aget p1, v4, v10

    aget v0, v4, v11

    aget v1, v4, v9

    aget v3, v4, v8

    .line 139
    aget v4, v4, v7

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    double-to-float v4, v4

    .line 140
    new-instance v5, Lcom/metamoji/cm/PointArray;

    invoke-direct {v5, v6}, Lcom/metamoji/cm/PointArray;-><init>(I)V

    .line 141
    new-instance v6, Landroid/graphics/PointF;

    mul-float v8, v1, v7

    add-float v9, p1, v8

    mul-float/2addr v1, v4

    add-float v10, v0, v1

    invoke-direct {v6, v9, v10}, Landroid/graphics/PointF;-><init>(FF)V

    .line 142
    invoke-virtual {v5, v6}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 143
    new-instance v9, Landroid/graphics/PointF;

    mul-float/2addr v4, v3

    sub-float v10, p1, v4

    mul-float/2addr v3, v7

    add-float v7, v0, v3

    invoke-direct {v9, v10, v7}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v9}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 144
    new-instance v7, Landroid/graphics/PointF;

    sub-float v8, p1, v8

    sub-float v1, v0, v1

    invoke-direct {v7, v8, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v7}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 145
    new-instance v1, Landroid/graphics/PointF;

    add-float/2addr p1, v4

    sub-float/2addr v0, v3

    invoke-direct {v1, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v1}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 146
    invoke-virtual {v5, v6}, Lcom/metamoji/cm/PointArray;->add(Landroid/graphics/PointF;)Z

    .line 147
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setPolygonPoints(Lcom/metamoji/cm/PointArray;)V

    return-object v2

    .line 134
    :pswitch_2
    new-instance p1, Lcom/metamoji/cm/RectEx;

    aget v0, v4, v10

    aget v1, v4, v11

    aget v3, v4, v9

    aget v5, v4, v8

    invoke-direct {p1, v0, v1, v3, v5}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    aget v0, v4, v7

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setRectangleBaseRect(Lcom/metamoji/cm/RectEx;F)V

    return-object v2

    :pswitch_3
    if-eqz v3, :cond_2

    .line 126
    new-instance p1, Landroid/graphics/PointF;

    aget v0, v4, v10

    aget v1, v4, v11

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aget v0, v4, v9

    aget v1, v4, v8

    aget v3, v4, v7

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setEllipseCenter(Landroid/graphics/PointF;FFF)V

    return-object v2

    .line 129
    :cond_2
    new-instance v3, Landroid/graphics/PointF;

    aget p1, v4, v10

    aget v0, v4, v11

    invoke-direct {v3, p1, v0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object v5, v4

    aget v4, v5, v9

    move-object v12, v5

    aget v5, v12, v8

    aget v6, v12, v6

    const/4 p1, 0x6

    aget p1, v12, p1

    aget v8, v12, v7

    move v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setEllipseArcCenter(Landroid/graphics/PointF;FFFFF)V

    return-object v2

    :pswitch_4
    move-object v12, v4

    if-eqz v3, :cond_3

    .line 118
    new-instance p1, Landroid/graphics/PointF;

    aget v0, v12, v10

    aget v1, v12, v11

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aget v0, v12, v9

    invoke-virtual {v2, p1, v0}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setCircleCenter(Landroid/graphics/PointF;F)V

    return-object v2

    .line 120
    :cond_3
    new-instance p1, Landroid/graphics/PointF;

    aget v0, v12, v10

    aget v1, v12, v11

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    aget v0, v12, v9

    aget v1, v12, v8

    aget v3, v12, v7

    invoke-virtual {v2, p1, v0, v1, v3}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setCircleArcCenter(Landroid/graphics/PointF;FFF)V

    return-object v2

    :pswitch_5
    move-object v12, v4

    if-ge v1, v11, :cond_4

    .line 89
    invoke-static {v10, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 92
    :cond_4
    invoke-static {v12}, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->toPointArray([F)[Landroid/graphics/PointF;

    move-result-object p1

    if-ne v1, v11, :cond_7

    .line 94
    iget-object v1, v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->traits:Ljava/util/EnumSet;

    sget-object v3, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->FORWARD_ARROWHEAD:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    invoke-virtual {v1, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    .line 95
    iget-object v0, v0, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition;->traits:Ljava/util/EnumSet;

    sget-object v3, Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;->BACKWARD_ARROWHEAD:Lcom/metamoji/un/draw2/jni/library/reshape/Recognition$Trait;

    invoke-virtual {v0, v3}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v1, :cond_6

    if-eqz v0, :cond_5

    goto :goto_0

    .line 99
    :cond_5
    aget-object v0, p1, v10

    aget-object p1, p1, v11

    invoke-virtual {v2, v0, p1}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setLineStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-object v2

    .line 97
    :cond_6
    :goto_0
    aget-object v3, p1, v10

    aget-object p1, p1, v11

    invoke-virtual {v2, v3, p1, v0, v1}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setArrow(Landroid/graphics/PointF;Landroid/graphics/PointF;ZZ)V

    return-object v2

    :cond_7
    if-eqz v3, :cond_8

    if-ne v1, v8, :cond_8

    .line 104
    aget-object v0, p1, v10

    aget-object v1, p1, v11

    aget-object p1, p1, v9

    invoke-virtual {v2, v0, v1, p1}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setTrianglePoint1(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V

    return-object v2

    .line 107
    :cond_8
    new-instance v0, Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/cm/PointArray;-><init>(Ljava/util/List;)V

    if-eqz v3, :cond_9

    .line 109
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setPolygonPoints(Lcom/metamoji/cm/PointArray;)V

    return-object v2

    .line 111
    :cond_9
    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->setMultiLinePoints(Lcom/metamoji/cm/PointArray;)V

    :pswitch_6
    return-object v2

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    .line 76
    invoke-static {v1, p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;Ljava/lang/Exception;)V

    return-object v2

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

.method public setCoordinateZoom(F)V
    .locals 0

    .line 28
    iput p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShShapeRecognizer;->m_coordinateZoom:F

    return-void
.end method
