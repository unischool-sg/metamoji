.class public Lcom/metamoji/ci/StrokeCutter;
.super Ljava/lang/Object;
.source "StrokeCutter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field public cuttedPenAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field public cuttedReducedPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field public cuttedSegmentAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field ip:Lcom/metamoji/ci/Q2bInterpolator2;

.field public penAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
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

.field public segmentAttr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static applyMatrix(Landroid/graphics/PointF;Landroid/graphics/Matrix;)V
    .locals 4

    .line 211
    iget v0, p0, Landroid/graphics/PointF;->x:F

    .line 212
    iget v1, p0, Landroid/graphics/PointF;->y:F

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    .line 213
    invoke-virtual {p1, v2}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 214
    aget p1, v2, v3

    iput p1, p0, Landroid/graphics/PointF;->x:F

    .line 215
    aget p1, v2, v0

    iput p1, p0, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public static penAttrDataApplyMatrix(Ljava/util/List;Landroid/graphics/Matrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;",
            "Landroid/graphics/Matrix;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 220
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    const/4 v0, 0x1

    .line 222
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Lcom/metamoji/ci/CI;->isHiddenHeadRecord(B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 223
    new-instance v2, Lcom/metamoji/ci/HiddenPointsRecord;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ci/HiddenPointsRecord;-><init>(Ljava/util/List;I)V

    .line 224
    iget-object v3, v2, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    invoke-static {v3, p1}, Lcom/metamoji/ci/StrokeCutter;->applyMatrix(Landroid/graphics/PointF;Landroid/graphics/Matrix;)V

    .line 225
    invoke-static {v1}, Lcom/metamoji/ci/CI;->isHiddenPoint2Record(B)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, v2, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    invoke-static {v1, p1}, Lcom/metamoji/ci/StrokeCutter;->applyMatrix(Landroid/graphics/PointF;Landroid/graphics/Matrix;)V

    .line 226
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 227
    invoke-virtual {v2, v1}, Lcom/metamoji/ci/HiddenPointsRecord;->toBytes(Ljava/util/List;)V

    .line 228
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    add-int/lit8 v3, v0, 0x1

    invoke-interface {p0, v0, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v3

    goto :goto_0

    .line 230
    :cond_1
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    invoke-static {v1}, Lcom/metamoji/ci/CI;->isHiddenTailRecord(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 231
    new-instance v2, Lcom/metamoji/ci/HiddenPointsRecord;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/ci/HiddenPointsRecord;-><init>(Ljava/util/List;I)V

    .line 232
    iget-object v3, v2, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    invoke-static {v3, p1}, Lcom/metamoji/ci/StrokeCutter;->applyMatrix(Landroid/graphics/PointF;Landroid/graphics/Matrix;)V

    .line 233
    invoke-static {v1}, Lcom/metamoji/ci/CI;->isHiddenPoint2Record(B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v2, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    invoke-static {v1, p1}, Lcom/metamoji/ci/StrokeCutter;->applyMatrix(Landroid/graphics/PointF;Landroid/graphics/Matrix;)V

    .line 234
    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {v2, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->toBytes(Ljava/util/List;)V

    .line 236
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    add-int/lit8 v2, v0, 0x1

    invoke-interface {p0, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_1

    :cond_3
    return-void
.end method


# virtual methods
.method convertParam(F)F
    .locals 4

    .line 70
    iget-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v0, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/metamoji/ci/CI;->bezier(Ljava/util/List;F)Landroid/graphics/PointF;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v1, v1, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v1, v1, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    iget v1, v1, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    float-to-int v1, v1

    int-to-float v2, v1

    add-float/2addr p1, v2

    float-to-int v3, p1

    if-ne v1, v3, :cond_0

    .line 76
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/StrokeCutter;->nearestParamOnRealBezier(Landroid/graphics/PointF;I)F

    move-result p1

    add-float/2addr v2, p1

    return v2

    .line 80
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v1, v1, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz v1, :cond_2

    .line 81
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v1, v1, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTail:Lcom/metamoji/ci/HiddenPointsRecord;

    iget v1, v1, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    float-to-int v1, v1

    .line 82
    iget-object v2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v2, v2, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    div-int/lit8 v2, v2, 0x2

    if-ne v1, v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    :cond_1
    float-to-int v2, p1

    if-gt v1, v2, :cond_2

    int-to-float p1, v1

    .line 85
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ci/StrokeCutter;->nearestParamOnRealBezier(Landroid/graphics/PointF;I)F

    move-result v0

    add-float/2addr p1, v0

    :cond_2
    return p1
.end method

.method public cut(FF)V
    .locals 11

    .line 128
    invoke-virtual {p0}, Lcom/metamoji/ci/StrokeCutter;->setupInterpolator()V

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedReducedPoints:Ljava/util/List;

    .line 130
    iget-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->segmentAttr:Ljava/util/List;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedSegmentAttr:Ljava/util/List;

    .line 131
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedPenAttr:Ljava/util/List;

    const/16 v1, -0x10

    .line 133
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-virtual {p0, p1}, Lcom/metamoji/ci/StrokeCutter;->convertParam(F)F

    move-result v0

    .line 136
    invoke-virtual {p0, p2}, Lcom/metamoji/ci/StrokeCutter;->convertParam(F)F

    move-result v1

    float-to-int v2, v0

    .line 139
    iget-object v3, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v3, v3, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    .line 142
    new-instance v5, Lcom/metamoji/ci/HiddenPointsRecord;

    invoke-direct {v5}, Lcom/metamoji/ci/HiddenPointsRecord;-><init>()V

    const/4 v6, 0x5

    .line 143
    iput-byte v6, v5, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    int-to-float v6, v2

    sub-float v7, v0, v6

    .line 144
    iput v7, v5, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    float-to-double v7, p1

    .line 145
    invoke-virtual {p0, v7, v8}, Lcom/metamoji/ci/StrokeCutter;->offset(D)F

    move-result p1

    iget-object v7, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    invoke-virtual {v7}, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHeadOffset()F

    move-result v7

    add-float/2addr p1, v7

    iput p1, v5, Lcom/metamoji/ci/HiddenPointsRecord;->offset:F

    const/high16 p1, 0x3f800000    # 1.0f

    if-eqz v4, :cond_1

    const/4 v7, 0x6

    .line 148
    iput-byte v7, v5, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    add-int/lit8 v7, v3, -0x2

    .line 150
    iget v8, v5, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    add-float/2addr v8, p1

    iput v8, v5, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    goto :goto_0

    :cond_1
    move v7, v4

    :goto_0
    if-eqz v2, :cond_2

    .line 154
    iget-object v8, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v8, v8, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v3, v2, :cond_2

    iget v2, v5, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    add-float/2addr v2, p1

    iput v2, v5, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    .line 157
    :cond_2
    iget p1, v5, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    float-to-int p1, p1

    .line 158
    iget-object v2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v2, v2, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iput-object v2, v5, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    .line 159
    iget-byte v2, v5, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {v2}, Lcom/metamoji/ci/CI;->isHiddenPoint2Record(B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 160
    iget-object v2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v2, v2, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    add-int/lit8 v8, v7, 0x1

    invoke-interface {v2, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iput-object v2, v5, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    .line 162
    :cond_3
    iget-object v2, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedPenAttr:Ljava/util/List;

    invoke-virtual {v5, v2}, Lcom/metamoji/ci/HiddenPointsRecord;->toBytes(Ljava/util/List;)V

    float-to-int v2, v1

    .line 165
    iget-object v8, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v8, v8, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v2, v8, :cond_4

    add-int/lit8 v2, v2, -0x1

    .line 166
    :cond_4
    iget-object v8, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v8, v8, Lcom/metamoji/ci/Q2bInterpolator2;->followPointIndexes:Ljava/util/List;

    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v8, v2, -0x1

    const/4 v9, 0x7

    .line 169
    iput-byte v9, v5, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    sub-float v6, v1, v6

    int-to-float p1, p1

    add-float/2addr v6, p1

    .line 170
    iput v6, v5, Lcom/metamoji/ci/HiddenPointsRecord;->param:F

    .line 171
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    invoke-virtual {p1}, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenTailOffset()F

    move-result p1

    iget-object v6, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v6, v6, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    div-int/lit8 v6, v6, 0x2

    int-to-double v9, v6

    invoke-virtual {p0, v9, v10}, Lcom/metamoji/ci/StrokeCutter;->offset(D)F

    move-result v6

    add-float/2addr p1, v6

    float-to-double v9, p2

    invoke-virtual {p0, v9, v10}, Lcom/metamoji/ci/StrokeCutter;->offset(D)F

    move-result p2

    sub-float/2addr p1, p2

    iput p1, v5, Lcom/metamoji/ci/HiddenPointsRecord;->offset:F

    .line 172
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p1, p1, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iput-object p1, v5, Lcom/metamoji/ci/HiddenPointsRecord;->point1:Landroid/graphics/PointF;

    .line 173
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p1, p1, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    if-eq v2, p1, :cond_5

    const/16 p1, 0x8

    .line 174
    iput-byte p1, v5, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    .line 175
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p1, p1, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    add-int/lit8 p2, v2, 0x1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    iput-object p1, v5, Lcom/metamoji/ci/HiddenPointsRecord;->point2:Landroid/graphics/PointF;

    goto :goto_1

    :cond_5
    move p2, v2

    .line 178
    :goto_1
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedPenAttr:Ljava/util/List;

    invoke-virtual {v5, p1}, Lcom/metamoji/ci/HiddenPointsRecord;->toBytes(Ljava/util/List;)V

    .line 180
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedPenAttr:Ljava/util/List;

    iget-object v5, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v5, v5, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget-object v6, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget v6, v6, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedPenAttr:Ljava/util/List;

    iget-object v5, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v5, v5, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget-object v6, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget v6, v6, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedPenAttr:Ljava/util/List;

    iget-object v5, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v5, v5, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    iget-object v6, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget v6, v6, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    add-int/lit8 v6, v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Byte;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    const/4 p1, 0x0

    if-ge v7, p2, :cond_7

    .line 185
    iget-object v5, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget v5, v5, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrPos:I

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v7

    .line 186
    iget-object v6, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedPenAttr:Ljava/util/List;

    iget-object v9, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v9, v9, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_6

    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p1, p1, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    :cond_6
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {v6, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 193
    :cond_7
    iget-object p2, p0, Lcom/metamoji/ci/StrokeCutter;->segmentAttr:Ljava/util/List;

    if-eqz p2, :cond_9

    .line 195
    iget-object p2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p2, p2, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p2, p2, Lcom/metamoji/ci/Q2bInterpolator2;->hiddenHead:Lcom/metamoji/ci/HiddenPointsRecord;

    iget-byte p2, p2, Lcom/metamoji/ci/HiddenPointsRecord;->magic:B

    invoke-static {p2}, Lcom/metamoji/ci/CI;->isHiddenPoint2Record(B)Z

    move-result p2

    if-eqz p2, :cond_8

    add-int/lit8 v4, v3, -0x2

    :cond_8
    :goto_3
    sub-int p2, v8, v3

    add-int/lit8 p2, p2, 0x2

    if-ge p1, p2, :cond_9

    add-int p2, p1, v4

    .line 199
    invoke-virtual {p0, p2}, Lcom/metamoji/ci/StrokeCutter;->segmentAttr(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ci/StrokeCutter;->putSegmentAttr(II)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 204
    :cond_9
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedReducedPoints:Ljava/util/List;

    iget-object p2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p2, p2, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-static {p2, v0}, Lcom/metamoji/ci/CI;->bezier(Ljava/util/List;F)Landroid/graphics/PointF;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedReducedPoints:Ljava/util/List;

    iget-object p2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p2, p2, Lcom/metamoji/ci/Q2bInterpolator2;->realReducedPoints:Ljava/util/List;

    invoke-interface {p2, v3, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 206
    iget-object p1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedReducedPoints:Ljava/util/List;

    iget-object p2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object p2, p2, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    invoke-static {p2, v1}, Lcom/metamoji/ci/CI;->bezier(Ljava/util/List;F)Landroid/graphics/PointF;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method nearestParamOnRealBezier(Landroid/graphics/PointF;I)F
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v0, v0, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    mul-int/lit8 p2, p2, 0x2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 63
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v1, v1, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    add-int/lit8 v2, p2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 64
    iget-object v2, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v2, v2, Lcom/metamoji/ci/Q2bInterpolator2;->realBezierPoints:Ljava/util/List;

    add-int/lit8 p2, p2, 0x2

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/PointF;

    .line 65
    invoke-static {p1, v0, v1, p2}, Lcom/metamoji/ci/CI;->nearestParamOnBezier(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)F

    move-result p1

    return p1
.end method

.method offset(D)F
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    .line 118
    iget-object v5, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    if-lez v4, :cond_0

    float-to-double v6, v1

    .line 114
    iget-object v1, v5, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v4, v4, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    add-int/lit8 v0, v0, 0x2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/PointF;

    invoke-static {v1, v4}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v4

    add-double/2addr v6, v4

    double-to-float v1, v6

    sub-double/2addr p1, v2

    goto :goto_0

    :cond_0
    float-to-double v1, v1

    .line 118
    iget-object v3, v5, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v4, v4, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    add-int/lit8 v0, v0, 0x2

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    invoke-static {v3, v0}, Lcom/metamoji/ci/CI;->dist(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v3

    mul-double/2addr v3, p1

    add-double/2addr v1, v3

    double-to-float p1, v1

    return p1
.end method

.method putSegmentAttr(II)V
    .locals 3

    .line 93
    div-int/lit8 v0, p1, 0x4

    .line 94
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedSegmentAttr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gt v1, v0, :cond_0

    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedSegmentAttr:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_0
    rem-int/lit8 p1, p1, 0x4

    .line 96
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedSegmentAttr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    mul-int/lit8 p1, p1, 0x2

    const/4 v2, 0x3

    shl-int/2addr v2, p1

    not-int v2, v2

    int-to-byte v2, v2

    and-int/2addr v1, v2

    int-to-byte v1, v1

    shl-int p1, p2, p1

    int-to-byte p1, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 99
    iget-object p2, p0, Lcom/metamoji/ci/StrokeCutter;->cuttedSegmentAttr:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method segmentAttr(I)I
    .locals 3

    .line 103
    div-int/lit8 v0, p1, 0x4

    .line 104
    rem-int/lit8 p1, p1, 0x4

    .line 105
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->segmentAttr:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-lt v0, v1, :cond_0

    return v2

    .line 106
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->segmentAttr:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    mul-int/2addr p1, v2

    shr-int p1, v0, p1

    and-int/lit8 p1, p1, 0x3

    return p1
.end method

.method setupInterpolator()V
    .locals 2

    .line 53
    new-instance v0, Lcom/metamoji/ci/Q2bInterpolator2;

    invoke-direct {v0}, Lcom/metamoji/ci/Q2bInterpolator2;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    .line 54
    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->reducedPoints:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->reducedPoints:Ljava/util/List;

    .line 55
    iget-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    iget-object v1, p0, Lcom/metamoji/ci/StrokeCutter;->penAttr:Ljava/util/List;

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttr:Ljava/util/List;

    .line 56
    iget-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->bezierPoints:Ljava/util/List;

    .line 57
    iget-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/ci/Q2bInterpolator2;->penAttrArray:Ljava/util/List;

    .line 58
    iget-object v0, p0, Lcom/metamoji/ci/StrokeCutter;->ip:Lcom/metamoji/ci/Q2bInterpolator2;

    invoke-virtual {v0}, Lcom/metamoji/ci/Q2bInterpolator2;->solve()V

    return-void
.end method
