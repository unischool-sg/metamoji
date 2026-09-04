.class public Lcom/metamoji/ci/Q2bInterpolator;
.super Ljava/lang/Object;
.source "Q2bInterpolator.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final DENSITY_RECORD_NONE:I = -0x2

.field static final DENSITY_RECORD_UNKNOWN:I = -0x1


# instance fields
.field public bezierPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field cursor:I

.field public deltaOfInputTime:D

.field densityRecordOff:I

.field public equalitySupplementAngle:D

.field hasHiddenPointRecord:Z

.field public penAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public penAttrArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field public reducedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public scaleOfInputTime:D

.field public segmentAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public supplementAngle:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 88
    iput-wide v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->scaleOfInputTime:D

    const-wide v0, 0x3fee666666666666L    # 0.95

    .line 89
    iput-wide v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->deltaOfInputTime:D

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 90
    iput-wide v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->supplementAngle:D

    .line 91
    iput-wide v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->equalitySupplementAngle:D

    return-void
.end method


# virtual methods
.method addReduceCount(I)V
    .locals 5

    .line 128
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    int-to-double v1, p1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getRestoredPoints(D)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 257
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x1

    move v3, v2

    .line 258
    :goto_0
    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 259
    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 260
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    add-int/lit8 v6, v3, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    const/high16 v6, 0x3f000000    # 0.5f

    .line 261
    invoke-static {v1, v4, v5, v6}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    .line 262
    invoke-static {v1, v6}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v7

    invoke-static {v6, v5}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v9

    add-double/2addr v7, v9

    div-double/2addr v7, p1

    double-to-int v6, v7

    add-int/2addr v6, v2

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_0

    int-to-float v8, v7

    int-to-float v9, v6

    div-float/2addr v8, v9

    .line 265
    invoke-static {v1, v4, v5, v8}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 267
    :cond_0
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x2

    move-object v1, v5

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method reducedCount(I)I
    .locals 3

    .line 115
    iget v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->densityRecordOff:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    .line 117
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lt v0, p1, :cond_1

    return v2

    .line 118
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 78
    iput v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    .line 79
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 80
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 81
    iput v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->densityRecordOff:I

    return-void
.end method

.method public searchNearest(Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 1

    .line 303
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/metamoji/ci/Q2bInterpolator;->searchNearestParam(Landroid/graphics/PointF;)F

    move-result p1

    invoke-static {v0, p1}, Lcom/metamoji/ci/CI;->bezier(Ljava/util/List;F)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public searchNearestParam(Landroid/graphics/PointF;)F
    .locals 9

    const/high16 v0, -0x40800000    # -1.0f

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v4, v0

    .line 283
    :goto_0
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    if-ge v3, v5, :cond_2

    .line 284
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    mul-int/lit8 v6, v3, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 285
    iget-object v7, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    add-int/lit8 v8, v6, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 286
    iget-object v8, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    add-int/lit8 v6, v6, 0x2

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 287
    invoke-static {p1, v5, v7, v6}, Lcom/metamoji/ci/CI;->nearestParamOnBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result v8

    .line 288
    invoke-static {v5, v7, v6, v8}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    invoke-static {p1, v5}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v5

    cmpl-float v7, v4, v0

    if-eqz v7, :cond_0

    cmpg-double v7, v5, v1

    if-gez v7, :cond_1

    :cond_0
    int-to-float v1, v3

    add-float v4, v1, v8

    move-wide v1, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v4
.end method

.method setDensityRecordOff()V
    .locals 4

    .line 95
    iget v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->densityRecordOff:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 96
    iput v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->densityRecordOff:I

    .line 97
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 99
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    const/16 v2, -0x10

    if-eq v0, v2, :cond_2

    :goto_0
    return-void

    .line 100
    :cond_2
    iput-boolean v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->hasHiddenPointRecord:Z

    .line 102
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ci/CI;->isHiddenHeadRecord(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 103
    iput-boolean v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->hasHiddenPointRecord:Z

    .line 104
    invoke-static {v0}, Lcom/metamoji/ci/CI;->hiddenRecordSize(B)I

    move-result v0

    add-int/2addr v0, v1

    goto :goto_1

    :cond_3
    move v0, v1

    .line 106
    :goto_1
    iget-object v2, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    invoke-static {v2}, Lcom/metamoji/ci/CI;->isHiddenTailRecord(B)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 107
    iput-boolean v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->hasHiddenPointRecord:Z

    .line 108
    invoke-static {v2}, Lcom/metamoji/ci/CI;->hiddenRecordSize(B)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_4
    iput v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->densityRecordOff:I

    return-void
.end method

.method public solve()V
    .locals 3

    .line 232
    invoke-virtual {p0}, Lcom/metamoji/ci/Q2bInterpolator;->reset()V

    .line 233
    invoke-virtual {p0}, Lcom/metamoji/ci/Q2bInterpolator;->setDensityRecordOff()V

    .line 235
    iget-boolean v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->hasHiddenPointRecord:Z

    if-eqz v0, :cond_0

    .line 236
    new-instance v0, Lcom/metamoji/ci/Q2bInterpolator2;

    invoke-direct {v0}, Lcom/metamoji/ci/Q2bInterpolator2;-><init>()V

    .line 237
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedPoints:Ljava/util/List;

    .line 238
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    .line 239
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    .line 240
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    .line 241
    iget-wide v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->supplementAngle:D

    iput-wide v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->supplementAngle:D

    .line 242
    iget-wide v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->equalitySupplementAngle:D

    iput-wide v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->equalitySupplementAngle:D

    .line 243
    invoke-virtual {v0}, Lcom/metamoji/ci/Q2bInterpolator2;->solve()V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 245
    invoke-virtual {p0, v0}, Lcom/metamoji/ci/Q2bInterpolator;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 14

    .line 140
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 141
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 143
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    new-instance v3, Ljava/lang/Byte;

    invoke-direct {v3, v2}, Ljava/lang/Byte;-><init>(B)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 146
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ci/Q2bInterpolator;->setDensityRecordOff()V

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/ci/Q2bInterpolator;->updateGoStop()V

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eqz p1, :cond_3

    const/4 v5, 0x3

    if-gt v0, v5, :cond_3

    .line 166
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    if-ne v0, v4, :cond_2

    .line 161
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 162
    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 163
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-static {p1, v4, v1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/Q2bInterpolator;->reducedCount(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    goto :goto_0

    .line 166
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 167
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 168
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 169
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    const v6, 0x3ecccccd    # 0.4f

    invoke-static {p1, v1, v6}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    const v6, 0x3f4ccccd    # 0.8f

    invoke-static {p1, v1, v6}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    invoke-interface {v5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    const v5, 0x3e4ccccd    # 0.2f

    invoke-static {v1, v4, v5}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    const v5, 0x3f19999a    # 0.6f

    invoke-static {v1, v4, v5}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/Q2bInterpolator;->reducedCount(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    .line 175
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    .line 176
    invoke-virtual {p0, v3}, Lcom/metamoji/ci/Q2bInterpolator;->reducedCount(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    .line 178
    :goto_0
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    sub-int/2addr v0, v3

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_3
    if-gt v0, v4, :cond_4

    goto/16 :goto_4

    .line 184
    :cond_4
    iget v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    if-nez v5, :cond_5

    iput v4, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    .line 185
    :cond_5
    :goto_1
    iget v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    if-ge v5, v0, :cond_a

    .line 186
    iget-object v6, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v5, v5, -0x2

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 187
    iget-object v6, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    iget v7, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    sub-int/2addr v7, v3

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 188
    iget-object v7, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    iget v8, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 189
    iget-object v8, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-static {v5, v6, v1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    invoke-static {v5, v6}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v8

    double-to-float v8, v8

    .line 191
    invoke-static {v6, v7}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v9

    double-to-float v9, v9

    .line 193
    invoke-static {v5, v6, v7}, Lcom/metamoji/ci/CI;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v12, v10, v12

    if-gez v12, :cond_6

    neg-double v10, v10

    .line 195
    :cond_6
    iget-wide v12, p0, Lcom/metamoji/ci/Q2bInterpolator;->equalitySupplementAngle:D

    cmpl-double v12, v10, v12

    if-lez v12, :cond_8

    cmpl-float v10, v8, v9

    const/high16 v11, 0x42480000    # 50.0f

    if-lez v10, :cond_7

    div-float v10, v9, v11

    goto :goto_2

    :cond_7
    div-float v10, v8, v11

    .line 199
    :goto_2
    iget-object v11, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    sub-float v12, v8, v10

    div-float/2addr v12, v8

    invoke-static {v5, v6, v12}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    div-float/2addr v10, v9

    invoke-static {v6, v7, v10}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/metamoji/ci/Q2bInterpolator;->reducedCount(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    .line 203
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    goto :goto_3

    .line 204
    :cond_8
    iget-wide v8, p0, Lcom/metamoji/ci/Q2bInterpolator;->supplementAngle:D

    cmpl-double v8, v10, v8

    .line 211
    iget-object v9, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    if-lez v8, :cond_9

    const v8, 0x3f7ae148    # 0.98f

    .line 205
    invoke-static {v5, v6, v8}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    const v8, 0x3ca3d70a    # 0.02f

    invoke-static {v6, v7, v8}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    iget v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/metamoji/ci/Q2bInterpolator;->reducedCount(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    .line 209
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    goto :goto_3

    .line 211
    :cond_9
    new-instance v8, Landroid/graphics/PointF;

    iget v10, v5, Landroid/graphics/PointF;->x:F

    iget v11, v6, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget v11, v7, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v10, v11

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    mul-float/2addr v6, v12

    add-float/2addr v5, v6

    iget v6, v7, Landroid/graphics/PointF;->y:F

    add-float/2addr v5, v6

    div-float/2addr v5, v11

    invoke-direct {v8, v10, v5}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    iget v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    sub-int/2addr v5, v4

    invoke-virtual {p0, v5}, Lcom/metamoji/ci/Q2bInterpolator;->reducedCount(I)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    .line 214
    :goto_3
    iget v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/metamoji/ci/Q2bInterpolator;->cursor:I

    goto/16 :goto_1

    :cond_a
    if-eqz p1, :cond_b

    .line 218
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    add-int/lit8 v2, v0, -0x2

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 219
    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator;->reducedPoints:Ljava/util/List;

    sub-int/2addr v0, v3

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 220
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-static {p1, v0, v1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object p1

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator;->bezierPoints:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 222
    invoke-virtual {p0, v2}, Lcom/metamoji/ci/Q2bInterpolator;->reducedCount(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ci/Q2bInterpolator;->addReduceCount(I)V

    :cond_b
    :goto_4
    return-void
.end method

.method updateGoStop()V
    .locals 4

    .line 122
    iget v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->densityRecordOff:I

    const/4 v1, -0x2

    if-ne v0, v1, :cond_0

    return-void

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    const/4 v3, 0x1

    add-int/2addr v0, v3

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 124
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttrArray:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator;->penAttr:Ljava/util/List;

    iget v2, p0, Lcom/metamoji/ci/Q2bInterpolator;->densityRecordOff:I

    add-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
