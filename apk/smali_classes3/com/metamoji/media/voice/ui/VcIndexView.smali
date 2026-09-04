.class public Lcom/metamoji/media/voice/ui/VcIndexView;
.super Ljava/lang/Object;
.source "VcIndexView.java"


# static fields
.field private static IDX_BH:F = 11.0f

.field private static IDX_BHW:F = 6.5f

.field private static IDX_H:F = 18.0f

.field private static IDX_LHW:F = 0.5f

.field private static IDX_R:F = 4.0f

.field private static final TOUCH_MARGIN:I = 0x14


# instance fields
.field private fillColor:I

.field private lineColor:I

.field mCanEdit:Z

.field mDragIsStart:Z

.field mDragOffset:F

.field mEndPath:Landroid/graphics/Path;

.field mEndPoint:I

.field mEndTime:D

.field mHeight:I

.field mIndexId:Ljava/lang/String;

.field mIsRange:Z

.field mPaint:Landroid/graphics/Paint;

.field mPaint2:Landroid/graphics/Paint;

.field mStartPath:Landroid/graphics/Path;

.field mStartPoint:I

.field mStartTime:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDZ)V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 136
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mDragIsStart:Z

    .line 137
    iput-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mIsRange:Z

    .line 26
    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mIndexId:Ljava/lang/String;

    .line 27
    iput-wide p2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartTime:D

    .line 28
    iput-wide p4, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndTime:D

    .line 30
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 31
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/16 p1, 0xff

    const/16 p3, 0xd

    const/16 p4, 0x9f

    const/16 p5, 0xbe

    .line 33
    invoke-static {p1, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->lineColor:I

    iput v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->fillColor:I

    .line 34
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    invoke-static {p1, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 36
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint2:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 40
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint2:Landroid/graphics/Paint;

    const/16 p2, 0x50

    invoke-static {p2, p3, p4, p5}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 41
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint2:Landroid/graphics/Paint;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 42
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint2:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    invoke-virtual {p0, p6}, Lcom/metamoji/media/voice/ui/VcIndexView;->setCanEdit(Z)V

    return-void
.end method


# virtual methods
.method public TouchEnd(Lcom/metamoji/media/voice/ui/VcWaveView;)V
    .locals 0

    return-void
.end method

.method public TouchMove(Lcom/metamoji/media/voice/ui/VcWaveView;FD)D
    .locals 4

    .line 166
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mDragIsStart:Z

    if-nez v0, :cond_2

    float-to-int p2, p2

    .line 168
    invoke-virtual {p1, p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->getTimeFromLocation(I)D

    move-result-wide v0

    .line 169
    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartTime:D

    cmpl-double p2, v2, v0

    if-lez p2, :cond_0

    move-wide p3, v2

    goto :goto_0

    :cond_0
    cmpl-double p2, v0, p3

    if-ltz p2, :cond_1

    goto :goto_0

    :cond_1
    move-wide p3, v0

    .line 174
    :goto_0
    iput-wide p3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndTime:D

    .line 175
    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->invalidate()V

    return-wide p3

    :cond_2
    float-to-int p2, p2

    .line 178
    invoke-virtual {p1, p2}, Lcom/metamoji/media/voice/ui/VcWaveView;->getTimeFromLocation(I)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double p2, v0, v2

    if-gez p2, :cond_3

    move-wide p3, v2

    goto :goto_1

    :cond_3
    cmpl-double p2, v0, p3

    if-ltz p2, :cond_4

    goto :goto_1

    :cond_4
    move-wide p3, v0

    .line 184
    :goto_1
    iget-boolean p2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mIsRange:Z

    if-eqz p2, :cond_5

    .line 185
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndTime:D

    cmpg-double v2, v0, p3

    if-gez v2, :cond_5

    move-wide p3, v0

    :cond_5
    if-nez p2, :cond_6

    .line 191
    iput-wide p3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartTime:D

    iput-wide p3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndTime:D

    goto :goto_2

    .line 193
    :cond_6
    iput-wide p3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartTime:D

    .line 195
    :goto_2
    invoke-virtual {p1}, Lcom/metamoji/media/voice/ui/VcWaveView;->invalidate()V

    return-wide p3
.end method

.method public TouchStart(Lcom/metamoji/media/voice/ui/VcWaveView;FF)D
    .locals 5

    .line 140
    iget-boolean v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mCanEdit:Z

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    if-nez v0, :cond_0

    return-wide v1

    .line 143
    :cond_0
    iget-wide v3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartTime:D

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/media/voice/ui/VcWaveView;->getLocationFromTime(D)I

    move-result v0

    .line 144
    iget-wide v3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndTime:D

    invoke-virtual {p1, v3, v4}, Lcom/metamoji/media/voice/ui/VcWaveView;->getLocationFromTime(D)I

    move-result p1

    add-int/lit8 v3, p1, -0x14

    int-to-float v3, v3

    cmpg-float v3, v3, p2

    if-gtz v3, :cond_2

    add-int/lit8 v3, p1, 0x14

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gtz v3, :cond_2

    if-ne v0, p1, :cond_1

    .line 146
    iget v3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mHeight:I

    mul-int/lit8 v3, v3, 0x2

    div-int/lit8 v3, v3, 0x3

    int-to-float v3, v3

    cmpl-float p3, p3, v3

    if-lez p3, :cond_2

    :cond_1
    const/4 p3, 0x0

    .line 147
    iput-boolean p3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mDragIsStart:Z

    int-to-float p1, p1

    sub-float/2addr p1, p2

    .line 148
    iput p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mDragOffset:F

    .line 149
    iget-wide p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndTime:D

    return-wide p1

    :cond_2
    add-int/lit8 p3, v0, -0x14

    int-to-float p3, p3

    cmpg-float p3, p3, p2

    if-gtz p3, :cond_4

    add-int/lit8 p3, v0, 0x14

    int-to-float p3, p3

    cmpg-float p3, p2, p3

    if-gtz p3, :cond_4

    const/4 p3, 0x1

    .line 153
    iput-boolean p3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mDragIsStart:Z

    int-to-float v1, v0

    sub-float/2addr v1, p2

    .line 154
    iput v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mDragOffset:F

    if-eq v0, p1, :cond_3

    .line 156
    iput-boolean p3, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mIsRange:Z

    .line 158
    :cond_3
    iget-wide p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartTime:D

    return-wide p1

    :cond_4
    return-wide v1
.end method

.method public draw(Lcom/metamoji/media/voice/ui/VcWaveView;Landroid/graphics/Canvas;II)V
    .locals 9

    .line 50
    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartTime:D

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/media/voice/ui/VcWaveView;->getLocationFromTime(D)I

    move-result v6

    .line 51
    iget-wide v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndTime:D

    invoke-virtual {p1, v2, v3}, Lcom/metamoji/media/voice/ui/VcWaveView;->getLocationFromTime(D)I

    move-result v7

    add-int/lit8 v0, v7, 0xa

    if-ltz v0, :cond_3

    add-int/lit8 v0, v6, -0xa

    if-ge p3, v0, :cond_0

    goto/16 :goto_0

    .line 55
    :cond_0
    iput p4, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mHeight:I

    .line 56
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartPath:Landroid/graphics/Path;

    const/4 v8, 0x0

    if-nez v0, :cond_1

    int-to-float v0, p4

    .line 57
    invoke-virtual {p0, v8, v8, v0}, Lcom/metamoji/media/voice/ui/VcIndexView;->makeTumami(FFF)V

    :cond_1
    if-eq v6, v7, :cond_2

    int-to-float v1, v6

    int-to-float v3, v7

    .line 60
    iget v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mHeight:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint2:Landroid/graphics/Paint;

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->lineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    int-to-float v7, v7

    .line 64
    invoke-virtual {p2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 65
    iget v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mHeight:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 66
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 67
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    int-to-float v6, v6

    .line 68
    invoke-virtual {p2, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 69
    iget v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mHeight:I

    int-to-float v4, v1

    iget-object v5, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 70
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 71
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 73
    invoke-virtual {p2, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 74
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->fillColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 76
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 77
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->lineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 79
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 80
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    .line 81
    invoke-virtual {p2}, Landroid/graphics/Canvas;->save()I

    .line 82
    invoke-virtual {p2, v6, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 83
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->fillColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 84
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 85
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 86
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->lineColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 88
    iget-object v1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartPath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 89
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    :goto_0
    return-void
.end method

.method public getEndTime()D
    .locals 2

    .line 215
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndTime:D

    return-wide v0
.end method

.method public getIndexId()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mIndexId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()D
    .locals 2

    .line 212
    iget-wide v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartTime:D

    return-wide v0
.end method

.method makeEndTumami(Landroid/graphics/Path;FF)V
    .locals 4

    .line 124
    sget v0, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_LHW:F

    .line 125
    sget v1, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_BHW:F

    .line 126
    sget v2, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_H:F

    sub-float v2, p3, v2

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Path;->moveTo(FF)V

    add-float v2, p2, v1

    .line 127
    sget v3, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_BH:F

    sub-float v3, p3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float v0, p3, v0

    .line 130
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    sub-float/2addr p2, v1

    .line 131
    invoke-virtual {p1, p2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 132
    sget v0, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_BH:F

    sub-float/2addr p3, v0

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method makeStartTumami(Landroid/graphics/Path;FF)V
    .locals 3

    .line 109
    sget p3, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_LHW:F

    .line 110
    sget v0, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_BHW:F

    .line 111
    sget v1, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_H:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    sub-float v1, p2, v0

    .line 112
    sget v2, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_BH:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Path;->lineTo(FF)V

    add-float/2addr p2, v0

    .line 116
    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 117
    sget p3, Lcom/metamoji/media/voice/ui/VcIndexView;->IDX_BH:F

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 118
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    return-void
.end method

.method makeTumami(FFF)V
    .locals 1

    .line 93
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartPath:Landroid/graphics/Path;

    .line 94
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndPath:Landroid/graphics/Path;

    .line 95
    iget-object v0, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mStartPath:Landroid/graphics/Path;

    invoke-virtual {p0, v0, p1, p3}, Lcom/metamoji/media/voice/ui/VcIndexView;->makeStartTumami(Landroid/graphics/Path;FF)V

    .line 96
    iget-object p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mEndPath:Landroid/graphics/Path;

    invoke-virtual {p0, p1, p2, p3}, Lcom/metamoji/media/voice/ui/VcIndexView;->makeEndTumami(Landroid/graphics/Path;FF)V

    return-void
.end method

.method public setCanEdit(Z)V
    .locals 3

    .line 219
    iput-boolean p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->mCanEdit:Z

    const/16 v0, 0xff

    if-eqz p1, :cond_0

    const/16 p1, 0x9f

    const/16 v1, 0xbe

    const/16 v2, 0xd

    .line 221
    invoke-static {v0, v2, p1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->fillColor:I

    return-void

    .line 223
    :cond_0
    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/metamoji/media/voice/ui/VcIndexView;->fillColor:I

    return-void
.end method
