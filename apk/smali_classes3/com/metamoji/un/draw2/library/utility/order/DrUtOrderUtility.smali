.class public Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;
.super Ljava/lang/Object;
.source "DrUtOrderUtility.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;,
        Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static alignmentConstant(Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;)F
    .locals 2

    .line 155
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    const/high16 v1, 0x3f000000    # 0.5f

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    .line 166
    const-string p0, "invalid argument in alignmentConstant()"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(Ljava/lang/String;)V

    :cond_0
    return v1

    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private static halign([Lcom/metamoji/cm/RectEx;FFLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;)V
    .locals 4

    .line 191
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->alignmentConstant(Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;)F

    move-result p3

    .line 192
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 193
    iget v3, v2, Lcom/metamoji/cm/RectEx;->width:F

    mul-float/2addr v3, p3

    sub-float v3, p1, v3

    iput v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    .line 194
    iget v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v3, p2

    iput v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static hspace([Lcom/metamoji/cm/RectEx;IFFFLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)V
    .locals 5

    .line 210
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p0, v3

    .line 211
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 214
    :cond_0
    invoke-virtual {p0}, [Lcom/metamoji/cm/RectEx;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/metamoji/cm/RectEx;

    .line 215
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sub-float v0, p3, v1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float/2addr v0, p1

    cmpg-float v3, v0, p4

    if-gez v3, :cond_1

    .line 226
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    mul-float/2addr p1, p4

    add-float/2addr v1, p1

    sub-float/2addr v1, p3

    .line 227
    iput v1, v0, Lcom/metamoji/cm/RectEx;->width:F

    .line 228
    invoke-static {v0, p5}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->positionOfRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p1

    goto :goto_1

    :cond_1
    move p4, v0

    .line 231
    :goto_1
    array-length p1, p0

    :goto_2
    if-ge v2, p1, :cond_2

    aget-object p3, p0, v2

    .line 232
    iput p2, p3, Lcom/metamoji/cm/RectEx;->x:F

    .line 233
    iget p3, p3, Lcom/metamoji/cm/RectEx;->width:F

    add-float/2addr p3, p4

    add-float/2addr p2, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static synthetic lambda$hspace$0(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)I
    .locals 0

    .line 216
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    .line 217
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 218
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$vspace$1(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)I
    .locals 0

    .line 246
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    .line 247
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    .line 248
    invoke-static {p0, p1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    return p0
.end method

.method private static lattice([Lcom/metamoji/cm/RectEx;ILcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)Z
    .locals 8

    .line 269
    new-array p2, p1, [F

    new-array p3, p1, [F

    new-array v0, p1, [F

    new-array v1, p1, [F

    .line 270
    new-array v2, p1, [F

    new-array v2, p1, [F

    .line 273
    invoke-virtual {p4}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->ordinal()I

    move-result p4

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v3, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    if-eq p4, v3, :cond_3

    const/4 v3, 0x2

    if-eq p4, v3, :cond_4

    const/4 v3, 0x3

    if-eq p4, v3, :cond_2

    const/4 v3, 0x4

    if-eq p4, v3, :cond_1

    :cond_0
    :goto_0
    move v4, v2

    goto :goto_1

    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v7, v4

    move v4, v2

    move v2, v7

    :cond_4
    :goto_1
    const/4 p4, 0x0

    move v3, p4

    :goto_2
    if-ge v3, p1, :cond_5

    .line 299
    aget-object v5, p0, v3

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    aput v5, v0, v3

    .line 300
    aget-object v5, p0, v3

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    aput v5, v1, v3

    .line 301
    aget-object v5, p0, v3

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    aget v6, v0, v3

    mul-float/2addr v6, v2

    add-float/2addr v5, v6

    aput v5, p2, v3

    .line 302
    aget-object v5, p0, v3

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result v5

    aget v6, v1, v3

    mul-float/2addr v6, v4

    add-float/2addr v5, v6

    aput v5, p3, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 326
    :cond_5
    const-string/jumbo p0, "\u6574\u5217\u5931\u6557"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(Ljava/lang/String;)V

    return p4
.end method

.method public static orderRects(Ljava/lang/Object;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;FLcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;Z)Z
    .locals 8

    .line 77
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->checkRectArray(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 78
    const-string p0, "invalid argument"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(Ljava/lang/String;)V

    return v1

    .line 82
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->count(Ljava/lang/Object;)I

    move-result v0

    .line 83
    new-array v2, v0, [Lcom/metamoji/cm/RectEx;

    move v3, v1

    :goto_0
    if-ge v3, v0, :cond_1

    .line 85
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->rectAtIndex(ILjava/lang/Object;)Lcom/metamoji/cm/RectEx;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    .line 88
    invoke-static/range {v2 .. v7}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->orderRects([Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;FLcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_1
    if-ge v1, v0, :cond_2

    .line 93
    aget-object p2, v2, v1

    invoke-static {v1, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcRectArray;->replaceRectAtIndex(ILcom/metamoji/cm/RectEx;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return p1
.end method

.method public static orderRects(Ljava/util/List;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;FLcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;Z)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/cm/RectEx;",
            ">;",
            "Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;",
            "F",
            "Lcom/metamoji/cm/RectEx;",
            "Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;",
            "Z)Z"
        }
    .end annotation

    .line 66
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/metamoji/cm/RectEx;

    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, [Lcom/metamoji/cm/RectEx;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    .line 67
    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->orderRects([Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;FLcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;Z)Z

    move-result p0

    return p0
.end method

.method public static orderRects([Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;FLcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;Z)Z
    .locals 6

    move-object v0, p1

    .line 105
    array-length p1, p0

    .line 107
    invoke-static {}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectNull()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    .line 108
    array-length v2, p0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, p0, v4

    .line 109
    invoke-static {v1, v5, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectUnion(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Lcom/metamoji/cm/RectEx;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 112
    :cond_0
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p3, v1

    .line 116
    :cond_1
    invoke-static {p3, p4}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->positionOfRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)Landroid/graphics/PointF;

    move-result-object v2

    .line 117
    invoke-static {v1, p4}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->positionOfRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)Landroid/graphics/PointF;

    move-result-object v1

    if-eqz p5, :cond_2

    .line 118
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->isfinite(F)Z

    move-result p5

    if-eqz p5, :cond_2

    goto :goto_1

    :cond_2
    const/high16 p2, -0x800000    # Float.NEGATIVE_INFINITY

    .line 121
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;->ordinal()I

    move-result p5

    const/4 v4, 0x1

    packed-switch p5, :pswitch_data_0

    .line 147
    const-string p0, "invalid argument"

    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v3

    .line 143
    :pswitch_0
    invoke-static {p0, p1, p3, p2, p4}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->lattice([Lcom/metamoji/cm/RectEx;ILcom/metamoji/cm/RectEx;FLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)Z

    move-result p0

    return p0

    :pswitch_1
    move-object p5, p4

    move p4, p2

    .line 139
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result p3

    invoke-static/range {p0 .. p5}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->vspace([Lcom/metamoji/cm/RectEx;IFFFLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)V

    return v4

    :pswitch_2
    move-object p5, p4

    move p4, p2

    .line 135
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetWidth(Lcom/metamoji/cm/RectEx;)F

    move-result p3

    invoke-static/range {p0 .. p5}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->hspace([Lcom/metamoji/cm/RectEx;IFFFLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)V

    return v4

    .line 131
    :pswitch_3
    iget p1, v2, Landroid/graphics/PointF;->y:F

    iget p2, v2, Landroid/graphics/PointF;->x:F

    iget p3, v1, Landroid/graphics/PointF;->x:F

    sub-float/2addr p2, p3

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->valign([Lcom/metamoji/cm/RectEx;FFLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;)V

    return v4

    .line 125
    :pswitch_4
    iget p1, v2, Landroid/graphics/PointF;->x:F

    iget p2, v2, Landroid/graphics/PointF;->y:F

    iget p3, v1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p3

    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->halign([Lcom/metamoji/cm/RectEx;FFLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;)V

    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static positionOfRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)Landroid/graphics/PointF;
    .locals 1

    .line 172
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;->ordinal()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    .line 184
    const-string p1, "invalid argument in positionOfRect()"

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(Ljava/lang/String;)V

    .line 185
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 182
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 180
    :cond_1
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 178
    :cond_2
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 176
    :cond_3
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMaxX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0

    .line 174
    :cond_4
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMinY(Lcom/metamoji/cm/RectEx;)F

    move-result p0

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGPointMake(FF)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method private static valign([Lcom/metamoji/cm/RectEx;FFLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;)V
    .locals 4

    .line 200
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->alignmentConstant(Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtOrderType;)F

    move-result p3

    .line 201
    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    .line 202
    iget v3, v2, Lcom/metamoji/cm/RectEx;->height:F

    mul-float/2addr v3, p3

    sub-float v3, p1, v3

    iput v3, v2, Lcom/metamoji/cm/RectEx;->y:F

    .line 203
    iget v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v3, p2

    iput v3, v2, Lcom/metamoji/cm/RectEx;->x:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static vspace([Lcom/metamoji/cm/RectEx;IFFFLcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)V
    .locals 5

    .line 240
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-object v4, p0, v3

    .line 241
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetHeight(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    add-float/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-virtual {p0}, [Lcom/metamoji/cm/RectEx;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/metamoji/cm/RectEx;

    .line 245
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    sub-float v0, p3, v1

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    div-float/2addr v0, p1

    cmpg-float v3, v0, p4

    if-gez v3, :cond_1

    .line 256
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-direct {v0}, Lcom/metamoji/cm/RectEx;-><init>()V

    mul-float/2addr p1, p4

    add-float/2addr v1, p1

    sub-float/2addr v1, p3

    .line 257
    iput v1, v0, Lcom/metamoji/cm/RectEx;->height:F

    .line 258
    invoke-static {v0, p5}, Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility;->positionOfRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/un/draw2/library/utility/order/DrUtOrderUtility$DrUtBasePosition;)Landroid/graphics/PointF;

    move-result-object p1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr p2, p1

    goto :goto_1

    :cond_1
    move p4, v0

    .line 261
    :goto_1
    array-length p1, p0

    :goto_2
    if-ge v2, p1, :cond_2

    aget-object p3, p0, v2

    .line 262
    iput p2, p3, Lcom/metamoji/cm/RectEx;->y:F

    .line 263
    iget p3, p3, Lcom/metamoji/cm/RectEx;->height:F

    add-float/2addr p3, p4

    add-float/2addr p2, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method
