.class public Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;
.super Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;
.source "DrUtFountainReducer.java"


# instance fields
.field private m_addedBezierPointCount:I

.field private m_addedReducedPointCount:I

.field private m_lineReducer:Lcom/metamoji/ci/LineReducer;

.field private m_penAttrArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private m_penAttrData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private m_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

.field private m_reducerBegan:Z

.field private m_times:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private m_updateBezierPoints:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;-><init>()V

    return-void
.end method


# virtual methods
.method public addPoint(Landroid/graphics/PointF;ZJ)V
    .locals 3

    .line 99
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_reducerBegan:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 100
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 108
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v2, p1, p3, p4, p2}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;JZ)V

    .line 110
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_times:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 111
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {v2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p3

    sub-int/2addr p3, v0

    iput p3, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedReducedPointCount:I

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 119
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 123
    :cond_2
    iget p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedReducedPointCount:I

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_updateBezierPoints:Z

    if-nez p1, :cond_3

    goto :goto_0

    .line 131
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    .line 134
    iget-object p3, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-virtual {p3, p2}, Lcom/metamoji/ci/Q2bInterpolator;->update(Z)V

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p3

    sub-int/2addr p3, p1

    iput p3, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedBezierPointCount:I

    if-eqz p2, :cond_5

    .line 141
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_reducerBegan:Z

    return-void

    :cond_4
    :goto_0
    if-eqz p2, :cond_5

    .line 125
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_reducerBegan:Z

    :cond_5
    return-void
.end method

.method public addedBezierPointCount()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedBezierPointCount:I

    return v0
.end method

.method public addedReducedPointCount()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedReducedPointCount:I

    return v0
.end method

.method public beginReducerAtPoint(Landroid/graphics/PointF;ZJ)V
    .locals 2

    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_reducerBegan:Z

    .line 51
    iput-boolean p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_updateBezierPoints:Z

    .line 54
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->setReducedPoints(Lcom/metamoji/cm/PointArray;)V

    .line 55
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->setSegmentData(Ljava/util/List;)V

    .line 56
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    .line 57
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrArray:Ljava/util/List;

    const/4 p2, 0x0

    .line 58
    iput p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedReducedPointCount:I

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->createLineReducer()Lcom/metamoji/ci/LineReducer;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 63
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->segmentData()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0}, Lcom/metamoji/ci/LineReducer;->initSequential()V

    .line 70
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_updateBezierPoints:Z

    if-eqz v0, :cond_1

    .line 71
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    goto :goto_0

    .line 74
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 76
    :goto_0
    iput p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedBezierPointCount:I

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->createQ2bInterpolator()Lcom/metamoji/ci/Q2bInterpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    .line 79
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->segmentData()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->segmentAttr:Ljava/util/List;

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    .line 81
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrArray:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    invoke-virtual {v0, p1, p3, p4, p2}, Lcom/metamoji/ci/LineReducer;->addPoint(Landroid/graphics/PointF;JZ)V

    .line 88
    iget-object p2, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_times:Ljava/util/List;

    if-eqz p2, :cond_2

    .line 89
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 94
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    :cond_3
    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    .line 218
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrArray:Ljava/util/List;

    .line 219
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_q2bInterpolator:Lcom/metamoji/ci/Q2bInterpolator;

    .line 220
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_lineReducer:Lcom/metamoji/ci/LineReducer;

    const/4 v1, 0x0

    .line 221
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedReducedPointCount:I

    .line 222
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_addedBezierPointCount:I

    .line 223
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_reducerBegan:Z

    .line 224
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_times:Ljava/util/List;

    .line 225
    invoke-super {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtReducer;->clear()V

    return-void
.end method

.method protected createQ2bInterpolator()Lcom/metamoji/ci/Q2bInterpolator;
    .locals 3

    .line 234
    new-instance v0, Lcom/metamoji/ci/Q2bInterpolator;

    invoke-direct {v0}, Lcom/metamoji/ci/Q2bInterpolator;-><init>()V

    .line 235
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->delta()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->zoom()F

    move-result v2

    mul-float/2addr v1, v2

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->deltaOfInputTime:D

    .line 236
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->zoom()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->scaleOfInputTime:D

    return-object v0
.end method

.method public penAttrArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrArray:Ljava/util/List;

    return-object v0
.end method

.method public penAttrData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    return-object v0
.end method

.method public reducePoints()Z
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_times:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducePoints(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public reducePoints(Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 161
    :cond_0
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->setReducedPoints(Lcom/metamoji/cm/PointArray;)V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->setSegmentData(Ljava/util/List;)V

    .line 163
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->createLineReducer()Lcom/metamoji/ci/LineReducer;

    move-result-object v0

    .line 167
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->reducedPoints:Ljava/util/List;

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->segmentData()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->segmentAttr:Ljava/util/List;

    .line 169
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/LineReducer;->penAttr:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 172
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    goto :goto_0

    .line 174
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->points()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/ci/LineReducer;->reducePoints(Ljava/util/List;)Ljava/util/List;

    :goto_0
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_1
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 156
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0
.end method

.method public setPenAttrData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .line 42
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    return-void
.end method

.method public setTimes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .line 44
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_times:Ljava/util/List;

    return-void
.end method

.method public times()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_times:Ljava/util/List;

    return-object v0
.end method

.method public updateBezierPoints()Z
    .locals 2

    .line 182
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->segmentData()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 189
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    goto :goto_0

    .line 191
    :cond_1
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->setBezierPoints(Lcom/metamoji/cm/PointArray;)V

    .line 194
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrArray:Ljava/util/List;

    .line 197
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->createQ2bInterpolator()Lcom/metamoji/ci/Q2bInterpolator;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->reducedPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    .line 199
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->segmentData()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->segmentAttr:Ljava/util/List;

    .line 200
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrData:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    .line 201
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->bezierPoints()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/PointArray;->getBackingStoreList()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    .line 202
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/reducer/DrUtFountainReducer;->m_penAttrArray:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    .line 204
    invoke-virtual {v0}, Lcom/metamoji/ci/Q2bInterpolator;->solve()V

    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 183
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1
.end method
