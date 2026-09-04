.class public Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;
.super Ljava/lang/Object;
.source "DrUtMiddlePointSmoother.java"

# interfaces
.implements Lcom/metamoji/un/draw2/library/utility/smoother/DrUtSmoother;


# instance fields
.field private m_added:Z

.field private m_began:Z

.field private m_centerPoints:Lcom/metamoji/cm/PointArray;

.field private m_ending:Z

.field private m_inferenceRatio1:F

.field private m_inferenceRatio2:F

.field private m_inferentialPoints:Lcom/metamoji/cm/PointArray;

.field private m_resultPoints:Lcom/metamoji/cm/PointArray;

.field private m_smoothness:I

.field private final m_tmp1:Landroid/graphics/PointF;

.field private final m_tmp2:Landroid/graphics/PointF;

.field private final m_tmp3:Landroid/graphics/PointF;

.field private final m_tmp4:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_tmp1:Landroid/graphics/PointF;

    .line 34
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_tmp2:Landroid/graphics/PointF;

    .line 35
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_tmp3:Landroid/graphics/PointF;

    .line 36
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_tmp4:Landroid/graphics/PointF;

    .line 44
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    .line 45
    invoke-static {}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArray()Lcom/metamoji/cm/PointArray;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferentialPoints:Lcom/metamoji/cm/PointArray;

    const/4 v0, 0x0

    .line 46
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    const/4 v1, 0x0

    .line 47
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio1:F

    .line 48
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio2:F

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    .line 50
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_added:Z

    .line 51
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_ending:Z

    return-void
.end method

.method private copy(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    .line 37
    invoke-virtual {p2, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-object p2
.end method

.method static smoothPoints(Lcom/metamoji/cm/PointArray;I)Lcom/metamoji/cm/PointArray;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 220
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 223
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    .line 239
    new-instance v1, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;-><init>()V

    .line 240
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->setSmoothness(I)V

    .line 241
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->beginAtPoint(Landroid/graphics/PointF;)I

    move p1, v3

    :goto_0
    add-int/lit8 v0, v2, -0x2

    if-ge p1, v0, :cond_1

    .line 243
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    sub-int/2addr v2, v3

    .line 245
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->endAtPoint(Landroid/graphics/PointF;)I

    .line 246
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->resultPoints()Lcom/metamoji/cm/PointArray;

    move-result-object p0

    return-object p0

    .line 229
    :cond_2
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->lastPoint(Lcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p0

    const/4 p1, 0x3

    .line 230
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 231
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 232
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 233
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return-object p1

    .line 226
    :cond_3
    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public beginAtPoint(Landroid/graphics/PointF;)I
    .locals 4

    .line 69
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 70
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 73
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    .line 74
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_added:Z

    .line 75
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    add-int/2addr v2, v0

    .line 76
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithCapacity(I)Lcom/metamoji/cm/PointArray;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    :goto_0
    if-ge v1, v2, :cond_1

    .line 78
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    return v0
.end method

.method public clear()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 159
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferentialPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 160
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    if-eqz v0, :cond_0

    .line 161
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    :cond_0
    const/4 v0, 0x0

    .line 163
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    .line 164
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_added:Z

    return-void
.end method

.method public endAtPoint(Landroid/graphics/PointF;)I
    .locals 5

    .line 125
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    .line 126
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    .line 130
    iget-boolean v2, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_added:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    if-nez v2, :cond_1

    goto :goto_1

    .line 135
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 136
    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    .line 138
    :cond_2
    iput-boolean v4, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_ending:Z

    .line 140
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->moveAtPoint(Landroid/graphics/PointF;)I

    .line 141
    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    if-nez v3, :cond_3

    .line 146
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_ending:Z

    .line 147
    iput v2, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    .line 144
    iput v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    goto :goto_0

    .line 131
    :cond_4
    :goto_1
    iget v2, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 132
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 149
    :goto_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 150
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferentialPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 151
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    .line 152
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_added:Z

    .line 153
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result p1

    sub-int/2addr p1, v0

    return p1
.end method

.method public inferenceRatio1()F
    .locals 1

    .line 190
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio1:F

    return v0
.end method

.method public inferenceRatio2()F
    .locals 1

    .line 199
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio2:F

    return v0
.end method

.method public inferentialPoints()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferentialPoints:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public moveAtPoint(Landroid/graphics/PointF;)I
    .locals 9

    .line 86
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferentialPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->removeAllPoints(Lcom/metamoji/cm/PointArray;)V

    .line 91
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_tmp1:Landroid/graphics/PointF;

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_tmp2:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v1}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->copy(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 93
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_tmp3:Landroid/graphics/PointF;

    invoke-direct {p0, v0, v2}, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->copy(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 94
    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    iget-object v4, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, p1, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 95
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_tmp4:Landroid/graphics/PointF;

    .line 96
    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    :goto_0
    if-lez v3, :cond_2

    add-int/lit8 v4, v3, -0x1

    if-nez v4, :cond_1

    .line 99
    invoke-virtual {v2, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 101
    :cond_1
    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v5, v6

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v7, v8

    div-float/2addr v7, v6

    invoke-virtual {p1, v5, v7}, Landroid/graphics/PointF;->set(FF)V

    .line 102
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 103
    invoke-virtual {v1, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 104
    iget-object v5, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, p1, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->replacePointAtIndex(ILandroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 106
    :cond_2
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 107
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 108
    iget-boolean v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_ending:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_added:Z

    if-eqz v3, :cond_3

    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio1:F

    const/4 v5, 0x0

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio2:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_3

    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    if-lez v3, :cond_3

    .line 110
    iget-object v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 111
    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    iget-object v5, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 112
    iget v3, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    sub-int/2addr v3, v4

    iget-object v5, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_centerPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 113
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v5, v0, Landroid/graphics/PointF;->x:F

    add-float/2addr v3, v5

    iget v5, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget v5, v2, Landroid/graphics/PointF;->y:F

    iget v6, v0, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, v1

    invoke-virtual {p1, v3, v5}, Landroid/graphics/PointF;->set(FF)V

    .line 114
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio1:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDivisionOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 115
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio2:F

    invoke-static {v2, p1, v0, v3}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getDivisionOfSegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FF)Landroid/graphics/PointF;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    .line 116
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferentialPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 117
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferentialPoints:Lcom/metamoji/cm/PointArray;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->addPoint(Landroid/graphics/PointF;Lcom/metamoji/cm/PointArray;)V

    .line 119
    :cond_3
    iput-boolean v4, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_added:Z

    const/4 p1, 0x2

    return p1
.end method

.method public resultPoints()Lcom/metamoji/cm/PointArray;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_resultPoints:Lcom/metamoji/cm/PointArray;

    return-object v0
.end method

.method public setInferenceRatio1(F)V
    .locals 1

    .line 192
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 193
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 196
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio1:F

    return-void
.end method

.method public setInferenceRatio2(F)V
    .locals 1

    .line 201
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 202
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 205
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_inferenceRatio2:F

    return-void
.end method

.method public setSmoothness(I)V
    .locals 1

    .line 176
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_began:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 177
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 180
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    return-void
.end method

.method public smoothness()I
    .locals 1

    .line 174
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/smoother/DrUtMiddlePointSmoother;->m_smoothness:I

    return v0
.end method
