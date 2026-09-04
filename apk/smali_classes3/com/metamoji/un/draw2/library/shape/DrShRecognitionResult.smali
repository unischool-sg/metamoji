.class public Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;
.super Ljava/lang/Object;
.source "DrShRecognitionResult.java"


# instance fields
.field m_angle1:F

.field m_angle2:F

.field m_angle3:F

.field m_point1:Landroid/graphics/PointF;

.field m_point2:Landroid/graphics/PointF;

.field m_point3:Landroid/graphics/PointF;

.field m_points:Lcom/metamoji/cm/PointArray;

.field m_radius1:F

.field m_radius2:F

.field m_rect:Lcom/metamoji/cm/RectEx;

.field m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

.field m_withEndHead:Z

.field m_withStartHead:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->NONE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    return-void
.end method


# virtual methods
.method public checkArrow(Landroid/graphics/PointF;Landroid/graphics/PointF;[Z)Z
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ARROW:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 355
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 359
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point2:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 360
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_withStartHead:Z

    aput-boolean p1, p3, v2

    .line 361
    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_withEndHead:Z

    const/4 p2, 0x1

    aput-boolean p1, p3, p2

    return p2
.end method

.method public checkCircleArcCenter(Landroid/graphics/PointF;[F)Z
    .locals 3

    .line 180
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CIRCLE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 181
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 185
    iget p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius1:F

    aput p1, p2, v2

    .line 186
    iget p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle1:F

    const/4 v0, 0x1

    aput p1, p2, v0

    const/4 p1, 0x2

    .line 187
    iget v1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle2:F

    aput v1, p2, p1

    return v0
.end method

.method public checkCircleCenter(Landroid/graphics/PointF;[F)Z
    .locals 3

    .line 153
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CIRCLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 154
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 158
    iget p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius1:F

    aput p1, p2, v2

    const/4 p1, 0x1

    return p1
.end method

.method public checkCurveStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 106
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p2

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 110
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point2:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 111
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point3:Landroid/graphics/PointF;

    invoke-virtual {p3, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public checkEllipseArcCenter(Landroid/graphics/PointF;[F)Z
    .locals 3

    .line 242
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ELLIPSE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 243
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 247
    iget p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius1:F

    aput p1, p2, v2

    .line 248
    iget p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius2:F

    const/4 v0, 0x1

    aput p1, p2, v0

    const/4 p1, 0x2

    .line 249
    iget v1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle1:F

    aput v1, p2, p1

    const/4 p1, 0x3

    .line 250
    iget v1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle2:F

    aput v1, p2, p1

    const/4 p1, 0x4

    .line 251
    iget v1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle3:F

    aput v1, p2, p1

    return v0
.end method

.method public checkEllipseCenter(Landroid/graphics/PointF;[F)Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ELLIPSE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 210
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 214
    iget p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius1:F

    aput p1, p2, v2

    .line 215
    iget p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius2:F

    const/4 v0, 0x1

    aput p1, p2, v0

    const/4 p1, 0x2

    .line 216
    iget v1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle1:F

    aput v1, p2, p1

    return v0
.end method

.method public checkLineStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 2

    .line 57
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 58
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p2

    .line 61
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 62
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point2:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public checkRectangleBaseRect(Lcom/metamoji/cm/RectEx;[F)Z
    .locals 3

    .line 293
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 294
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_rect:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/RectEx;->set(Lcom/metamoji/cm/RectEx;)V

    .line 298
    iget p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle1:F

    aput p1, p2, v2

    const/4 p1, 0x1

    return p1
.end method

.method public checkTrianglePoint1(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Z
    .locals 2

    .line 269
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 p2, 0x0

    .line 270
    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return p2

    .line 273
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 274
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point2:Landroid/graphics/PointF;

    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 275
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point3:Landroid/graphics/PointF;

    invoke-virtual {p3, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    const/4 p1, 0x1

    return p1
.end method

.method public getMultiCurvePoints()Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 134
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->MULTI_CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_points:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public getMultiLinePoints()Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->MULTI_LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 85
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_points:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public getPolygonPoints()Lcom/metamoji/cm/PointArray;
    .locals 2

    .line 320
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    sget-object v1, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->POLYGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 321
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_points:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public setArrow(Landroid/graphics/PointF;Landroid/graphics/PointF;ZZ)V
    .locals 1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    .line 344
    :cond_0
    sget-object p3, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object p3, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    goto :goto_1

    .line 340
    :cond_1
    :goto_0
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ARROW:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 341
    iput-boolean p3, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_withStartHead:Z

    .line 342
    iput-boolean p4, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_withEndHead:Z

    .line 346
    :goto_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    .line 347
    iput-object p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point2:Landroid/graphics/PointF;

    return-void
.end method

.method public setCircleArcCenter(Landroid/graphics/PointF;FFF)V
    .locals 1

    .line 171
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CIRCLE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 172
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    .line 173
    iput p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius1:F

    .line 174
    iput p3, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle1:F

    .line 175
    iput p4, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle2:F

    return-void
.end method

.method public setCircleCenter(Landroid/graphics/PointF;F)V
    .locals 1

    .line 148
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CIRCLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 149
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    .line 150
    iput p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius1:F

    return-void
.end method

.method public setCurveStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 99
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 100
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    .line 101
    iput-object p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point2:Landroid/graphics/PointF;

    .line 102
    iput-object p3, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point3:Landroid/graphics/PointF;

    return-void
.end method

.method public setEllipseArcCenter(Landroid/graphics/PointF;FFFFF)V
    .locals 1

    .line 231
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ELLIPSE_ARC:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 232
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    .line 233
    iput p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius1:F

    .line 234
    iput p3, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius2:F

    .line 235
    iput p4, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle1:F

    .line 236
    iput p5, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle2:F

    .line 237
    iput p6, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle3:F

    return-void
.end method

.method public setEllipseCenter(Landroid/graphics/PointF;FFF)V
    .locals 1

    .line 200
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->ELLIPSE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 201
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    .line 202
    iput p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius1:F

    .line 203
    iput p3, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_radius2:F

    .line 204
    iput p4, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle1:F

    return-void
.end method

.method public setLineStartPoint(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 52
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 53
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    .line 54
    iput-object p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point2:Landroid/graphics/PointF;

    return-void
.end method

.method public setMultiCurvePoints(Lcom/metamoji/cm/PointArray;)V
    .locals 3

    .line 121
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 122
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 125
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v2, 0x5

    if-lt v0, v2, :cond_2

    .line 126
    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    goto :goto_0

    .line 130
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->MULTI_CURVE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 131
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_points:Lcom/metamoji/cm/PointArray;

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 127
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setMultiLinePoints(Lcom/metamoji/cm/PointArray;)V
    .locals 3

    .line 72
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 73
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 76
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    const/4 p1, 0x1

    .line 77
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 80
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->MULTI_LINE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 81
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method public setPolygonPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 3

    .line 308
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->checkPointArray(Lcom/metamoji/cm/PointArray;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 309
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 312
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    const/4 v2, 0x3

    if-ge v0, v2, :cond_1

    const/4 p1, 0x1

    .line 313
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 316
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->POLYGON:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 317
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_points:Lcom/metamoji/cm/PointArray;

    return-void
.end method

.method public setRectangleBaseRect(Lcom/metamoji/cm/RectEx;F)V
    .locals 1

    .line 286
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->RECTANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 287
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_rect:Lcom/metamoji/cm/RectEx;

    .line 288
    iput p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_angle1:F

    return-void
.end method

.method public setShapeType(Lcom/metamoji/un/draw2/library/shape/DrShShapeType;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    return-void
.end method

.method public setTrianglePoint1(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .locals 1

    .line 263
    sget-object v0, Lcom/metamoji/un/draw2/library/shape/DrShShapeType;->TRIANGLE:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    .line 264
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point1:Landroid/graphics/PointF;

    .line 265
    iput-object p2, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point2:Landroid/graphics/PointF;

    .line 266
    iput-object p3, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_point3:Landroid/graphics/PointF;

    return-void
.end method

.method public shapeType()Lcom/metamoji/un/draw2/library/shape/DrShShapeType;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/shape/DrShRecognitionResult;->m_shapeType:Lcom/metamoji/un/draw2/library/shape/DrShShapeType;

    return-object v0
.end method
