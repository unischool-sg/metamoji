.class public Lcom/metamoji/tle/TextLineExtractUtil;
.super Ljava/lang/Object;
.source "TextLineExtractUtil.java"


# static fields
.field private static final _useableFontSizeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x19

    .line 204
    new-array v0, v0, [Ljava/lang/Integer;

    const/4 v1, 0x4

    .line 205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v0, v4

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x2

    aput-object v4, v0, v5

    const/4 v4, 0x7

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v0, v6

    const/16 v5, 0x8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v3

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v4

    const/16 v4, 0xe

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const/16 v5, 0x10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    const/16 v1, 0x12

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    const/16 v2, 0x14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    aput-object v6, v0, v7

    const/16 v6, 0x16

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v3

    const/16 v3, 0x18

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v8, 0xd

    aput-object v7, v0, v8

    const/16 v7, 0x1a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v4

    const/16 v4, 0x1c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v7, 0xf

    aput-object v4, v0, v7

    const/16 v4, 0x20

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    const/16 v4, 0x24

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v5, 0x11

    aput-object v4, v0, v5

    const/16 v4, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const/16 v1, 0x2c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v4, 0x13

    aput-object v1, v0, v4

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x15

    aput-object v1, v0, v2

    const/16 v1, 0x40

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v6

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x17

    aput-object v1, v0, v2

    const/16 v1, 0x60

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 204
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/metamoji/tle/TextLineExtractUtil;->_useableFontSizeList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addBaseLine(Ljava/util/List;Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    return-void

    .line 24
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 27
    new-instance p0, Lcom/metamoji/tle/TextLineExtractUtil$1;

    invoke-direct {p0}, Lcom/metamoji/tle/TextLineExtractUtil$1;-><init>()V

    invoke-static {v0, p0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p0, 0x0

    .line 51
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    const/4 v2, 0x1

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    .line 53
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    move-object v11, v2

    move-object v2, v1

    move-object v1, v11

    .line 59
    :cond_1
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/PointF;

    const/4 v3, 0x2

    .line 60
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 61
    iget v3, p0, Landroid/graphics/PointF;->x:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    goto :goto_0

    :cond_2
    move-object v11, v0

    move-object v0, p0

    move-object p0, v11

    .line 70
    :goto_0
    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v4, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 71
    iget v4, v2, Landroid/graphics/PointF;->y:F

    iget v5, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 72
    iget v5, p0, Landroid/graphics/PointF;->x:F

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 73
    iget v6, p0, Landroid/graphics/PointF;->y:F

    iget v7, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v7, v4

    float-to-double v3, v3

    .line 75
    invoke-static {v7, v8, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    float-to-double v6, v6

    float-to-double v8, v5

    .line 76
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v5

    sub-double v7, v3, v5

    .line 80
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3fd657184ae74487L    # 0.3490658503988659

    cmpg-double v7, v7, v9

    if-gez v7, :cond_3

    .line 82
    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v4, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v4

    float-to-double v3, v3

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget v7, v1, Landroid/graphics/PointF;->y:F

    iget v8, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    iget v5, v0, Landroid/graphics/PointF;->x:F

    iget v6, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    float-to-double v5, v5

    iget v7, v0, Landroid/graphics/PointF;->y:F

    iget v8, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    cmpl-double v3, v3, v5

    if-lez v3, :cond_4

    goto :goto_1

    :cond_3
    cmpg-double v3, v3, v5

    if-gez v3, :cond_4

    .line 94
    :goto_1
    new-instance p0, Landroid/graphics/PointF;

    iget v0, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 95
    new-instance v0, Landroid/graphics/PointF;

    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_2

    .line 97
    :cond_4
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 98
    new-instance v0, Landroid/graphics/PointF;

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget p0, p0, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, p0}, Landroid/graphics/PointF;-><init>(FF)V

    move-object p0, v1

    .line 101
    :goto_2
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static boundToRect(Ljava/util/List;)Landroid/graphics/RectF;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Landroid/graphics/RectF;"
        }
    .end annotation

    .line 156
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 158
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x4

    if-ne v2, v1, :cond_1

    const/4 v0, 0x0

    .line 159
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 161
    iget v1, v0, Landroid/graphics/PointF;->x:F

    .line 162
    iget v3, v0, Landroid/graphics/PointF;->y:F

    .line 163
    iget v4, v0, Landroid/graphics/PointF;->x:F

    .line 164
    iget v0, v0, Landroid/graphics/PointF;->y:F

    const/4 v5, 0x1

    :goto_0
    if-ge v5, v2, :cond_0

    .line 167
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 169
    iget v7, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v1, v7}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 170
    iget v7, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v7}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 171
    iget v7, v6, Landroid/graphics/PointF;->x:F

    invoke-static {v4, v7}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 172
    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 175
    :cond_0
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v1, v3, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0

    :cond_1
    return-object v0
.end method

.method public static calcUnitRotatePos(Landroid/graphics/PointF;Landroid/graphics/PointF;D)Landroid/graphics/PointF;
    .locals 4

    .line 266
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 267
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide p2

    double-to-float p2, p2

    .line 269
    new-instance p3, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    iget v2, p0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    sub-float/2addr v1, v2

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget v2, p0, Landroid/graphics/PointF;->x:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, p2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p2

    mul-float/2addr p0, v0

    add-float/2addr v2, p0

    iget p0, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr v2, p0

    invoke-direct {p3, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p3
.end method

.method public static getTextLineRotateInfo(Ljava/util/List;Ljava/util/List;)Lcom/metamoji/tle/TextLineRotateInfo;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/metamoji/tle/TextLineRotateInfo;"
        }
    .end annotation

    .line 108
    new-instance v0, Lcom/metamoji/tle/TextLineRotateInfo;

    invoke-direct {v0}, Lcom/metamoji/tle/TextLineRotateInfo;-><init>()V

    const/4 v1, 0x0

    .line 109
    iput v1, v0, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    .line 110
    iput v1, v0, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    const-wide/16 v1, 0x0

    .line 111
    iput-wide v1, v0, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 114
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v4, v3, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x2

    if-ne v5, v3, :cond_0

    .line 115
    new-array v3, v4, [Landroid/graphics/PointF;

    const/4 v4, 0x0

    .line 116
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    aput-object v6, v3, v4

    const/4 v6, 0x1

    .line 117
    invoke-interface {p0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    aput-object v7, v3, v6

    .line 118
    invoke-interface {p0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    aput-object v7, v3, v5

    const/4 v7, 0x3

    .line 119
    invoke-interface {p0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    aput-object v8, v3, v7

    .line 127
    aget-object v8, v3, v4

    iget v8, v8, Landroid/graphics/PointF;->x:F

    aget-object v9, v3, v6

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    aget-object v9, v3, v5

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    aget-object v9, v3, v7

    iget v9, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v9

    const/high16 v9, 0x40800000    # 4.0f

    div-float/2addr v8, v9

    iput v8, v0, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    .line 128
    aget-object v8, v3, v4

    iget v8, v8, Landroid/graphics/PointF;->y:F

    aget-object v10, v3, v6

    iget v10, v10, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v10

    aget-object v5, v3, v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v5

    aget-object v3, v3, v7

    iget v3, v3, Landroid/graphics/PointF;->y:F

    add-float/2addr v8, v3

    div-float/2addr v8, v9

    iput v8, v0, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    .line 132
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    .line 133
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/PointF;

    .line 137
    iget v4, p1, Landroid/graphics/PointF;->y:F

    iget v5, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr p1, v3

    float-to-double v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    iput-wide v3, v0, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    .line 141
    :cond_0
    iget-wide v3, v0, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    iget p1, v0, Lcom/metamoji/tle/TextLineRotateInfo;->cx:F

    iget v5, v0, Lcom/metamoji/tle/TextLineRotateInfo;->cy:F

    invoke-static {p0, v3, v4, p1, v5}, Lcom/metamoji/tle/TextLineExtractUtil;->rotateBound(Ljava/util/List;DFF)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/tle/TextLineExtractUtil;->boundToRect(Ljava/util/List;)Landroid/graphics/RectF;

    move-result-object p0

    .line 145
    invoke-virtual {p0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/RectF;->height()F

    move-result p0

    div-float/2addr p1, p0

    float-to-double p0, p1

    const-wide v3, 0x3fe6666666666666L    # 0.7

    cmpg-double v3, v3, p0

    if-gtz v3, :cond_1

    const-wide v3, 0x3ff4cccccccccccdL    # 1.3

    cmpg-double p0, p0, v3

    if-gez p0, :cond_1

    .line 147
    iput-wide v1, v0, Lcom/metamoji/tle/TextLineRotateInfo;->radian:D

    :cond_1
    return-object v0
.end method

.method public static mmjExpandStrokeInfoRect(Landroid/graphics/RectF;Lcom/metamoji/nt/NtStrokeInfo;)Landroid/graphics/RectF;
    .locals 10

    .line 221
    invoke-virtual {p1}, Lcom/metamoji/nt/NtStrokeInfo;->stroke()Lcom/metamoji/cm/PointArray;

    move-result-object p1

    .line 222
    invoke-virtual {p1}, Lcom/metamoji/cm/PointArray;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 227
    iget v3, p0, Landroid/graphics/RectF;->left:F

    .line 228
    iget v4, p0, Landroid/graphics/RectF;->top:F

    .line 229
    iget v5, p0, Landroid/graphics/RectF;->right:F

    .line 230
    iget v6, p0, Landroid/graphics/RectF;->bottom:F

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_1
    move v7, v1

    :goto_2
    if-ge v7, v0, :cond_3

    .line 234
    invoke-virtual {p1, v7}, Lcom/metamoji/cm/PointArray;->get(I)Landroid/graphics/PointF;

    move-result-object v8

    if-eqz v2, :cond_2

    .line 236
    iget v2, v8, Landroid/graphics/PointF;->x:F

    .line 237
    iget v3, v8, Landroid/graphics/PointF;->y:F

    .line 238
    iget v4, v8, Landroid/graphics/PointF;->x:F

    .line 239
    iget v5, v8, Landroid/graphics/PointF;->y:F

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    goto :goto_3

    .line 242
    :cond_2
    iget v9, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v3, v9}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 243
    iget v9, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v9}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 244
    iget v9, v8, Landroid/graphics/PointF;->x:F

    invoke-static {v5, v9}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 245
    iget v8, v8, Landroid/graphics/PointF;->y:F

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v6

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    :cond_3
    if-nez v2, :cond_4

    .line 250
    new-instance p0, Landroid/graphics/RectF;

    invoke-direct {p0, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    :cond_4
    return-object p0
.end method

.method public static rotateBound(Ljava/util/List;DFF)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;DFF)",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 187
    invoke-static {v1, p1, p2, p3, p4}, Lcom/metamoji/tle/TextLineExtractUtil;->rotatePoint(Landroid/graphics/PointF;DFF)Landroid/graphics/PointF;

    move-result-object v1

    .line 189
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static rotatePoint(Landroid/graphics/PointF;DFF)Landroid/graphics/PointF;
    .locals 6

    .line 198
    iget v0, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, p3

    float-to-double v0, v0

    neg-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, p4

    float-to-double v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    sub-double/2addr v0, v2

    float-to-double v2, p3

    add-double/2addr v0, v2

    .line 199
    iget v2, p0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, p3

    float-to-double v2, v2

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    iget p0, p0, Landroid/graphics/PointF;->y:F

    sub-float/2addr p0, p4

    float-to-double v4, p0

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    float-to-double p0, p4

    add-double/2addr v2, p0

    .line 200
    new-instance p0, Landroid/graphics/PointF;

    double-to-float p1, v0

    double-to-float p2, v2

    invoke-direct {p0, p1, p2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p0
.end method

.method public static toUseableFontSize(F)F
    .locals 4

    .line 208
    sget-object v0, Lcom/metamoji/tle/TextLineExtractUtil;->_useableFontSizeList:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x1

    .line 210
    :goto_0
    sget-object v2, Lcom/metamoji/tle/TextLineExtractUtil;->_useableFontSizeList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 211
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpl-float v3, v3, p0

    if-lez v3, :cond_0

    goto :goto_1

    .line 214
    :cond_0
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method
