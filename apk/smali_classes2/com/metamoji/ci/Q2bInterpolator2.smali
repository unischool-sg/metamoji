.class Lcom/metamoji/ci/Q2bInterpolator2;
.super Ljava/lang/Object;
.source "Q2bInterpolator2.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field bezierPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field equalitySupplementAngle:D

.field followPointIndexes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

.field hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

.field penAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field penAttrArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field penAttrPos:I

.field realBezierPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field realReducedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field reducedCounts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field reducedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field supplementAngle:D


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide v0, 0x4056800000000000L    # 90.0

    .line 19
    iput-wide v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->supplementAngle:D

    .line 20
    iput-wide v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->equalitySupplementAngle:D

    return-void
.end method


# virtual methods
.method createRealReducedPoints()V
    .locals 7

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    .line 31
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    const/4 v1, 0x1

    iput v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    const/4 v0, 0x0

    .line 34
    iput-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    .line 35
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Byte;

    invoke-virtual {v3}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-static {v3}, Lcom/metamoji/ci/CI;->isHiddenHeadRecord(B)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 36
    new-instance v4, Lcom/metamoji/ci/HiddenPointsRecord;

    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget v6, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    invoke-direct {v4, v5, v6}, Lcom/metamoji/ci/HiddenPointsRecord;-><init>(Ljava/util/List;I)V

    iput-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    .line 37
    iget v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    invoke-static {v3}, Lcom/metamoji/ci/CI;->hiddenRecordSize(B)I

    move-result v5

    add-int/2addr v4, v5

    iput v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    .line 38
    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    iget-object v5, v5, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    invoke-static {v3}, Lcom/metamoji/ci/CI;->isHiddenPoint2Record(B)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    iget-object v4, v4, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    :cond_0
    iput-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    .line 45
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    invoke-static {v0}, Lcom/metamoji/ci/CI;->isHiddenTailRecord(B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    new-instance v3, Lcom/metamoji/ci/HiddenPointsRecord;

    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget v5, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    invoke-direct {v3, v4, v5}, Lcom/metamoji/ci/HiddenPointsRecord;-><init>(Ljava/util/List;I)V

    iput-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    .line 47
    iget v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    invoke-static {v0}, Lcom/metamoji/ci/CI;->hiddenRecordSize(B)I

    move-result v0

    add-int/2addr v3, v0

    iput v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    .line 53
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v0, :cond_2

    move v2, v1

    .line 54
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    .line 55
    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v4, :cond_3

    add-int/lit8 v3, v0, -0x2

    .line 56
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedPoints:Ljava/util/List;

    add-int/2addr v3, v1

    invoke-interface {v4, v2, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 58
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v0, :cond_4

    .line 59
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    iget-object v0, v0, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    iget-byte v0, v0, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v0}, Lcom/metamoji/ci/CI;->isHiddenPoint2Record(B)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 61
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    iget-object v1, v1, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method hiddenHeadOffset()F
    .locals 1

    .line 235
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v0, :cond_0

    iget-byte v0, v0, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v0}, Lcom/metamoji/ci/CI;->isHiddenOldRecord(B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    iget v0, v0, Lcom/metamoji/ci/HiddenPointsRecord;->offset:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method hiddenTailOffset()F
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v0, :cond_0

    iget-byte v0, v0, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v0}, Lcom/metamoji/ci/CI;->isHiddenOldRecord(B)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    iget v0, v0, Lcom/metamoji/ci/HiddenPointsRecord;->offset:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method reducedCount(I)I
    .locals 1

    .line 67
    iget v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    add-int/lit8 v0, v0, 0x3

    add-int/2addr v0, p1

    .line 68
    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v0, p1, :cond_0

    iget-object p1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    shr-int/lit8 p1, p1, 0x2

    and-int/lit8 p1, p1, 0xf

    return p1
.end method

.method solve()V
    .locals 17

    move-object/from16 v0, p0

    .line 154
    invoke-virtual {v0}, Lcom/metamoji/ci/Q2bInterpolator2;->createRealReducedPoints()V

    .line 155
    invoke-virtual {v0}, Lcom/metamoji/ci/Q2bInterpolator2;->solveRealBezierPoints()V

    .line 156
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 157
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 158
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    iget-object v2, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    iget-object v2, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    const/4 v4, 0x2

    add-int/2addr v3, v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    div-int/2addr v1, v4

    int-to-float v1, v1

    .line 166
    iget-object v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v3, :cond_0

    .line 167
    iget v2, v3, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    .line 168
    iget-object v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    iget-byte v3, v3, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v3}, Lcom/metamoji/ci/CI;->isHiddenOldRecord(B)Z

    move-result v3

    if-nez v3, :cond_0

    .line 169
    iget-object v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    iget-object v5, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    iget v5, v5, Lcom/metamoji/ci/HiddenPointsRecord;->offset:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_0
    iget-object v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    const/4 v5, 0x3

    if-eqz v3, :cond_1

    .line 173
    iget v1, v3, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    .line 174
    iget-object v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    iget-byte v3, v3, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v3}, Lcom/metamoji/ci/CI;->isHiddenOldRecord(B)Z

    move-result v3

    if-nez v3, :cond_1

    .line 175
    iget-object v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    iget-object v6, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    iget v6, v6, Lcom/metamoji/ci/HiddenPointsRecord;->offset:F

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v3, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    float-to-int v3, v2

    float-to-int v6, v1

    .line 181
    iget-object v7, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    div-int/2addr v7, v4

    if-lt v6, v7, :cond_2

    add-int/lit8 v6, v7, -0x1

    :cond_2
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    if-ne v3, v6, :cond_3

    .line 184
    iget-object v5, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    mul-int/lit8 v7, v3, 0x2

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 185
    iget-object v12, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    add-int/lit8 v13, v7, 0x1

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    .line 186
    iget-object v13, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    add-int/2addr v7, v4

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    int-to-float v7, v3

    sub-float/2addr v2, v7

    .line 187
    invoke-static {v5, v12, v4, v2}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    int-to-float v6, v6

    sub-float/2addr v1, v6

    .line 188
    invoke-static {v5, v12, v4, v1}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    .line 189
    iget-object v6, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v6, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    const/high16 v7, 0x3f000000    # 0.5f

    invoke-static {v2, v1, v7}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v6, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v6, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    iget-object v7, v0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v12, v3

    div-double/2addr v12, v8

    add-double/2addr v12, v10

    invoke-static {v2, v1}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v1

    add-double/2addr v1, v10

    mul-double/2addr v12, v1

    invoke-static {v5, v4}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v1

    add-double/2addr v1, v10

    div-double/2addr v12, v1

    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 196
    :cond_3
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v1, :cond_4

    .line 197
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    mul-int/lit8 v12, v3, 0x2

    invoke-interface {v1, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 198
    iget-object v13, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    add-int/lit8 v14, v12, 0x1

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/graphics/PointF;

    .line 199
    iget-object v14, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    add-int/2addr v12, v4

    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    int-to-float v14, v3

    sub-float/2addr v2, v14

    .line 200
    invoke-static {v1, v13, v12, v2}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v14

    .line 201
    iget-object v15, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-interface {v15, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v15, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-static {v13, v12, v2}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    invoke-interface {v15, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    iget-object v2, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    iget-object v13, v0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-interface {v13, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    move/from16 v16, v4

    move v15, v5

    int-to-double v4, v13

    div-double/2addr v4, v8

    add-double/2addr v4, v10

    invoke-static {v14, v12}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v13

    add-double/2addr v13, v10

    mul-double/2addr v4, v13

    invoke-static {v1, v12}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v12

    add-double/2addr v12, v10

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    move/from16 v16, v4

    move v15, v5

    .line 209
    :goto_0
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v1, :cond_5

    add-int/lit8 v6, v6, -0x1

    .line 213
    :cond_5
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    iget-object v2, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    mul-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v6, 0x2

    add-int/2addr v5, v15

    invoke-interface {v2, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_1
    if-gt v3, v6, :cond_6

    .line 216
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    iget-object v2, v0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-double v4, v2

    div-double/2addr v4, v8

    add-double/2addr v4, v10

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 219
    :cond_6
    iget-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v1, :cond_9

    .line 220
    iget v1, v1, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    float-to-int v1, v1

    if-lt v1, v7, :cond_7

    add-int/lit8 v1, v7, -0x1

    .line 222
    :cond_7
    iget-object v2, v0, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    iget v2, v2, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    int-to-float v3, v1

    sub-float/2addr v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v4, v2, v3

    if-lez v4, :cond_8

    move v2, v3

    .line 224
    :cond_8
    iget-object v3, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    mul-int/lit8 v4, v1, 0x2

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 225
    iget-object v5, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    add-int/lit8 v6, v4, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/PointF;

    .line 226
    iget-object v6, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    add-int/lit8 v4, v4, 0x2

    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 227
    iget-object v6, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-static {v3, v5, v2}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    invoke-static {v3, v5, v4, v2}, Lcom/metamoji/ci/CI;->bezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v2

    .line 229
    iget-object v5, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v5, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    iget-object v6, v0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-double v6, v1

    div-double/2addr v6, v8

    add-double/2addr v6, v10

    invoke-static {v3, v2}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v1

    add-double/2addr v1, v10

    mul-double/2addr v6, v1

    invoke-static {v3, v4}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v1

    add-double/2addr v1, v10

    div-double/2addr v6, v1

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void
.end method

.method solveRealBezierPoints()V
    .locals 14

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    .line 87
    iget-object v0, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 89
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    const/4 v3, 0x0

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 89
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, 0x1

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x2

    .line 108
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    if-ne v0, v6, :cond_0

    .line 94
    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    .line 95
    iget-object v6, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 96
    iget-object v7, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-static {v4, v6, v1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_0
    const/4 v8, 0x3

    if-ne v0, v8, :cond_1

    .line 100
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 101
    iget-object v8, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 102
    iget-object v9, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 103
    iget-object v9, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    const v10, 0x3ecccccd    # 0.4f

    invoke-static {v1, v8, v10}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    iget-object v9, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-interface {v9, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v5, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-virtual {p0, v3}, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    const v5, 0x3f4ccccd    # 0.8f

    invoke-static {v1, v8, v5}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v8, v6, v3}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v8, v6, v3}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-virtual {p0, v2}, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x0

    move-object v5, v3

    :goto_0
    if-ge v6, v0, :cond_6

    .line 116
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    add-int/lit8 v5, v6, -0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 117
    iget-object v7, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    add-int/lit8 v8, v6, -0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 118
    iget-object v9, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 119
    iget-object v10, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-static {v3, v7, v1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    iget-object v10, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v8, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCount(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    invoke-static {v3, v7}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v10

    double-to-float v5, v10

    .line 123
    invoke-static {v7, v9}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v10

    double-to-float v8, v10

    .line 124
    invoke-static {v3, v7, v9}, Lcom/metamoji/ci/CI;->angle(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpg-double v12, v10, v12

    if-gez v12, :cond_2

    neg-double v10, v10

    .line 126
    :cond_2
    iget-wide v12, p0, Lcom/metamoji/ci/Q2bInterpolator2;->equalitySupplementAngle:D

    cmpl-double v12, v10, v12

    if-lez v12, :cond_4

    cmpl-float v10, v5, v8

    const/high16 v11, 0x42480000    # 50.0f

    if-lez v10, :cond_3

    div-float v10, v8, v11

    goto :goto_1

    :cond_3
    div-float v10, v5, v11

    .line 130
    :goto_1
    iget-object v11, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    sub-float v12, v5, v10

    div-float/2addr v12, v5

    invoke-static {v3, v7, v12}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    div-float/2addr v10, v8

    invoke-static {v7, v9, v10}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 136
    :cond_4
    iget-wide v12, p0, Lcom/metamoji/ci/Q2bInterpolator2;->supplementAngle:D

    cmpl-double v5, v10, v12

    .line 143
    iget-object v8, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    if-lez v5, :cond_5

    const v5, 0x3f7ae148    # 0.98f

    .line 137
    invoke-static {v3, v7, v5}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v3

    invoke-interface {v8, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    const v5, 0x3ca3d70a    # 0.02f

    invoke-static {v7, v9, v5}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 143
    :cond_5
    new-instance v5, Landroid/graphics/PointF;

    iget v10, v3, Landroid/graphics/PointF;->x:F

    iget v11, v7, Landroid/graphics/PointF;->x:F

    const/high16 v12, 0x40000000    # 2.0f

    mul-float/2addr v11, v12

    add-float/2addr v10, v11

    iget v11, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v11

    const/high16 v11, 0x40800000    # 4.0f

    div-float/2addr v10, v11

    iget v3, v3, Landroid/graphics/PointF;->y:F

    iget v13, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v13, v12

    add-float/2addr v3, v13

    iget v12, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v3, v12

    div-float/2addr v3, v11

    invoke-direct {v5, v10, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object v3, v7

    move-object v5, v9

    goto/16 :goto_0

    .line 146
    :cond_6
    iget-object v4, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-static {v3, v5, v1}, Lcom/metamoji/ci/CI;->im(Landroid/graphics/PointF;Landroid/graphics/PointF;F)Landroid/graphics/PointF;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 147
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    add-int/lit8 v3, v0, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCounts:Ljava/util/List;

    add-int/lit8 v3, v0, -0x2

    invoke-virtual {p0, v3}, Lcom/metamoji/ci/Q2bInterpolator2;->reducedCount(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 150
    :goto_3
    iget-object v1, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    sub-int/2addr v0, v2

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
