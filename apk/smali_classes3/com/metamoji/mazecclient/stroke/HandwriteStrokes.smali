.class public Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;
.super Ljava/lang/Object;
.source "HandwriteStrokes.java"

# interfaces
.implements Lcom/metamoji/mazecclient/stroke/IHandwriteStrokes;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation
.end field

.field static final HEIGHT_INTERVAL_LIIT_RATIO:D = 0.5

.field static final MERGE_BLOCK_WIDTH_HEIGHT_MAX_RATIO:D = 1.5

.field static final MERGE_BLOCK_WIDTH_RATIO:D = 0.6

.field static final MERGE_CHAR_BLOCK_HEIGHT_INTERVAL_RATIO:D = 0.25

.field static final MERGE_OVERLAP_RATIO:D = 0.05

.field static final PARTS_BLOCK_BOTTOM_RATIO:D = 0.5

.field static final PARTS_BLOCK_INTERVAL_RATIO:D = 0.2

.field static final PARTS_BLOCK_SIZE_RATIO:D = 0.2

.field static final TOP_SPACE_THRESHOLD_RATIO:D = 2.0

.field private static final kCodingMajorVer:I = 0x2

.field private static final kCodingMinorVer:I = 0x1


# instance fields
.field _baseLine:F

.field _centerOfGravity:Landroid/graphics/PointF;

.field _centerOfGravityEnable:Z

.field _countOfPoints:I

.field _innerBounds:Landroid/graphics/RectF;

.field _outerBounds:Landroid/graphics/RectF;

.field _strokes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStroke;",
            ">;"
        }
    .end annotation
.end field

.field _topLine:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1313
    new-instance v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes$1;

    invoke-direct {v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes$1;-><init>()V

    sput-object v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/high16 v0, -0x3c800000    # -256.0f

    const/4 v1, 0x0

    .line 61
    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(FF)V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_innerBounds:Landroid/graphics/RectF;

    .line 53
    sget-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravityEnable:Z

    .line 55
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravity:Landroid/graphics/PointF;

    .line 56
    iput v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_countOfPoints:I

    .line 71
    iput p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    .line 72
    iput p2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 1323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    .line 52
    sget-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_innerBounds:Landroid/graphics/RectF;

    .line 53
    sget-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravityEnable:Z

    .line 55
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravity:Landroid/graphics/PointF;

    .line 56
    iput v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_countOfPoints:I

    .line 1324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 1325
    new-array v2, v1, [B

    .line 1326
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 1327
    new-instance p1, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {p1, v2, v0, v1}, Lcom/metamoji/cm/DataArchiver;-><init>([BII)V

    .line 1328
    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private MAJOR_VER(I)I
    .locals 0

    shr-int/lit8 p1, p1, 0x10

    return p1
.end method

.method private MAKE_VER(II)I
    .locals 0

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p1, p2

    return p1
.end method

.method private calcBlockInterval(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)D
    .locals 0

    .line 685
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    .line 686
    invoke-virtual {p2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p2

    .line 687
    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->right:F

    sub-float/2addr p2, p1

    float-to-double p1, p2

    return-wide p1
.end method

.method private calcD2(Landroid/graphics/PointF;Landroid/graphics/PointF;)D
    .locals 2

    .line 781
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    .line 782
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    return-wide v0
.end method

.method private canMergeByBlockWidth(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z
    .locals 2

    .line 808
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 809
    invoke-virtual {p2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 810
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result p2

    div-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    cmpg-double p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private canMergeByXProjection(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z
    .locals 7

    .line 562
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p1

    .line 563
    invoke-virtual {p2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object p2

    .line 565
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float v0, v0, v1

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    .line 569
    :cond_0
    iget v0, p2, Landroid/graphics/RectF;->right:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    cmpg-float v0, v0, v2

    const/4 v2, 0x1

    if-gez v0, :cond_1

    return v2

    .line 574
    :cond_1
    iget v0, p1, Landroid/graphics/RectF;->right:F

    iget v3, p2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    float-to-double v3, v0

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    mul-double/2addr v3, v5

    .line 575
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    add-float/2addr p1, p2

    float-to-double p1, p1

    div-double/2addr v3, p1

    const-wide p1, 0x3fa999999999999aL    # 0.05

    cmpl-double p1, v3, p1

    if-lez p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method private divide2CharacterStrokesWithoutCoordinateTransform(Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 420
    invoke-direct {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->divide2EachStroke()Ljava/util/List;

    move-result-object v0

    .line 421
    invoke-direct {p0, v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->mergeStrokesByXProjection(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 422
    invoke-direct {p0, v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->mergeNeighborBackStroke(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 424
    invoke-direct {p0, v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->mergeCharStrokesVoicedConsonantMarks(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 425
    invoke-direct {p0, p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->mergeCharStrokesByBlockWidth(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 426
    invoke-direct {p0, p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->mergeCharStrokesByBlockInterval(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 429
    :cond_0
    invoke-direct {p0, v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setCharStrokesBounds(Ljava/util/List;)V

    .line 430
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 431
    invoke-direct {v1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->reorder()V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private divide2EachStroke()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 526
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 527
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 528
    new-instance v3, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    iget v4, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    iget v5, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    invoke-direct {v3, v4, v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(FF)V

    .line 529
    invoke-virtual {v3, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStroke(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)V

    .line 530
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getCenterOfGravity()Landroid/graphics/PointF;
    .locals 1

    .line 140
    iget-boolean v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravityEnable:Z

    if-nez v0, :cond_0

    .line 141
    invoke-direct {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->recalcCenterOfGravity()V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravity:Landroid/graphics/PointF;

    return-object v0
.end method

.method private getCountOfPoints()I
    .locals 1

    .line 164
    iget-boolean v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravityEnable:Z

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->recalcCenterOfGravity()V

    .line 167
    :cond_0
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_countOfPoints:I

    return v0
.end method

.method private mergeCharStrokesByBlockInterval(Ljava/util/List;)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 787
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getBaseHeight()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, v2

    .line 788
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 789
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    .line 790
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    add-int/lit8 v6, v4, -0x1

    .line 791
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 793
    invoke-direct {p0, v6, v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcBlockInterval(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)D

    move-result-wide v7

    cmpg-double v7, v7, v0

    if-gez v7, :cond_0

    .line 795
    invoke-direct {p0, v6, v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->canMergeByBlockWidth(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 797
    invoke-virtual {v6, v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)V

    .line 798
    invoke-interface {p1, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v4, v4, -0x1

    add-int/lit8 v2, v2, -0x1

    :cond_0
    add-int/2addr v4, v3

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private mergeCharStrokesByBlockWidth(Ljava/util/List;)Ljava/util/List;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 692
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_e

    .line 693
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    .line 695
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-wide v9, v2

    move-wide v11, v9

    :cond_0
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 696
    invoke-virtual {v13}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v13

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    float-to-double v13, v13

    add-double/2addr v11, v13

    cmpg-double v15, v4, v13

    if-gez v15, :cond_0

    cmpg-double v15, v9, v2

    if-lez v15, :cond_1

    cmpg-double v15, v13, v9

    if-gez v15, :cond_0

    :cond_1
    move-wide v9, v13

    goto :goto_1

    :cond_2
    cmpg-double v8, v9, v2

    if-gtz v8, :cond_3

    goto/16 :goto_5

    :cond_3
    int-to-double v13, v6

    div-double/2addr v11, v13

    const-wide v13, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v11, v13

    cmpg-double v8, v11, v9

    if-gez v8, :cond_4

    goto/16 :goto_5

    :cond_4
    const/4 v8, 0x0

    :goto_2
    if-ge v8, v6, :cond_d

    .line 717
    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 718
    invoke-virtual {v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v12

    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v12

    float-to-double v12, v12

    cmpg-double v14, v4, v12

    if-gez v14, :cond_c

    cmpg-double v12, v12, v9

    if-gtz v12, :cond_c

    const/4 v12, 0x0

    if-eqz v8, :cond_5

    add-int/lit8 v13, v8, -0x1

    .line 724
    invoke-interface {v1, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 725
    invoke-direct {v0, v13, v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->canMergeByBlockWidth(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z

    move-result v14

    if-nez v14, :cond_6

    :cond_5
    move-object v13, v12

    :cond_6
    add-int/lit8 v14, v6, -0x1

    if-eq v8, v14, :cond_7

    add-int/lit8 v14, v8, 0x1

    .line 732
    invoke-interface {v1, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 733
    invoke-direct {v0, v11, v14}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->canMergeByBlockWidth(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z

    move-result v15

    if-nez v15, :cond_8

    :cond_7
    move-object v14, v12

    :cond_8
    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    .line 741
    invoke-direct {v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCenterOfGravity()Landroid/graphics/PointF;

    move-result-object v15

    .line 742
    invoke-virtual {v0, v13, v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcCommonCenterOfGravity(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Landroid/graphics/PointF;

    move-result-object v2

    .line 743
    invoke-virtual {v0, v14, v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcCommonCenterOfGravity(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Landroid/graphics/PointF;

    move-result-object v3

    .line 744
    invoke-direct {v0, v15, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcD2(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v16

    .line 745
    invoke-direct {v0, v15, v3}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcD2(Landroid/graphics/PointF;Landroid/graphics/PointF;)D

    move-result-wide v2

    cmpg-double v2, v16, v2

    if-gez v2, :cond_a

    move-object v14, v12

    :cond_9
    move-object v12, v13

    :cond_a
    if-eqz v12, :cond_b

    .line 763
    invoke-virtual {v12, v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)V

    .line 764
    invoke-interface {v1, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v8, v8, -0x1

    :goto_3
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_b
    if-eqz v14, :cond_c

    .line 768
    invoke-virtual {v11, v14}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)V

    add-int/lit8 v2, v8, 0x1

    .line 769
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_3

    :cond_c
    :goto_4
    add-int/2addr v8, v7

    const-wide/16 v2, 0x0

    goto :goto_2

    :cond_d
    move-wide v4, v9

    goto/16 :goto_0

    :cond_e
    :goto_5
    return-object v1
.end method

.method private mergeCharStrokesVoicedConsonantMarks(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 659
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getBaseHeight()F

    move-result v0

    float-to-double v0, v0

    .line 660
    iget v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v4, v0

    add-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v0, v4

    .line 663
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_1

    .line 665
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 666
    invoke-virtual {v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v8

    .line 667
    iget v9, v8, Landroid/graphics/RectF;->bottom:F

    float-to-double v9, v9

    cmpg-double v9, v9, v2

    if-gez v9, :cond_0

    .line 668
    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v9

    float-to-double v9, v9

    cmpg-double v9, v9, v0

    if-gez v9, :cond_0

    .line 669
    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-double v8, v8

    cmpg-double v8, v8, v0

    if-gez v8, :cond_0

    add-int/lit8 v8, v6, -0x1

    .line 671
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 672
    invoke-direct {p0, v8, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcBlockInterval(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)D

    move-result-wide v9

    cmpg-double v9, v9, v0

    if-gez v9, :cond_0

    .line 674
    invoke-virtual {v8, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)V

    .line 675
    invoke-interface {p1, v6}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v6, v6, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_0
    add-int/2addr v6, v5

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method private mergeNeighborBackStroke(Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    .line 623
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_4

    .line 625
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 627
    invoke-virtual {v4}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v3, 0x1

    .line 631
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 632
    iget-object v7, v4, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 633
    invoke-interface {v0, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-gtz v7, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v7, -0x1

    .line 639
    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 640
    iget-object v8, v6, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    if-gez v7, :cond_2

    goto :goto_1

    .line 644
    :cond_2
    invoke-virtual {v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getBounds()Landroid/graphics/RectF;

    move-result-object v7

    .line 645
    invoke-virtual {v4}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getBounds()Landroid/graphics/RectF;

    move-result-object v8

    .line 647
    iget v8, v8, Landroid/graphics/RectF;->left:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v9

    add-float/2addr v8, v9

    iget v7, v7, Landroid/graphics/RectF;->left:F

    cmpg-float v7, v8, v7

    if-gez v7, :cond_3

    goto :goto_1

    .line 651
    :cond_3
    invoke-virtual {v4, v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)V

    .line 652
    invoke-interface {p1, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-object p1
.end method

.method private mergeStrokesByXProjection(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation

    .line 536
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_4

    .line 537
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokesCompareByXProjection;

    invoke-direct {v0}, Lcom/metamoji/mazecclient/stroke/StrokesCompareByXProjection;-><init>()V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 539
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 541
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    if-eqz v1, :cond_1

    .line 543
    invoke-direct {p0, v1, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->canMergeByXProjection(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 544
    invoke-virtual {v1, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)V

    goto :goto_0

    .line 548
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move-object v1, v2

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 553
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0

    :cond_4
    return-object p1
.end method

.method private recalcCenterOfGravity()V
    .locals 10

    .line 149
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    move v5, v3

    move-wide v3, v1

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 150
    invoke-virtual {v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/PointF;

    .line 151
    iget v8, v7, Landroid/graphics/PointF;->x:F

    float-to-double v8, v8

    add-double/2addr v1, v8

    .line 152
    iget v7, v7, Landroid/graphics/PointF;->y:F

    float-to-double v7, v7

    add-double/2addr v3, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravity:Landroid/graphics/PointF;

    int-to-double v6, v5

    div-double/2addr v1, v6

    double-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 158
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravity:Landroid/graphics/PointF;

    div-double/2addr v3, v6

    double-to-float v1, v3

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravityEnable:Z

    .line 160
    iput v5, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_countOfPoints:I

    return-void
.end method

.method private recalcInnerBounds()V
    .locals 5

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getBaseHeight()F

    move-result v0

    .line 113
    sget-object v1, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    .line 114
    iget-object v2, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 116
    invoke-virtual {v3, v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getBoundsForBaseHeight(F)Landroid/graphics/RectF;

    move-result-object v3

    .line 117
    sget-object v4, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    if-ne v4, v1, :cond_1

    move-object v1, v3

    goto :goto_0

    .line 119
    :cond_1
    sget-object v4, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    if-eq v4, v3, :cond_0

    .line 120
    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    goto :goto_0

    .line 123
    :cond_2
    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_innerBounds:Landroid/graphics/RectF;

    return-void
.end method

.method private reorder()V
    .locals 2

    .line 1066
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    new-instance v1, Lcom/metamoji/mazecclient/stroke/StrokeCompareBySerialNumber;

    invoke-direct {v1}, Lcom/metamoji/mazecclient/stroke/StrokeCompareBySerialNumber;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-void
.end method

.method private setCharStrokesBounds(Ljava/util/List;)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 855
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 861
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getBaseHeight()F

    move-result v2

    float-to-double v2, v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const/4 v6, 0x1

    const-wide/16 v7, 0x0

    if-ne v1, v6, :cond_3

    const/4 v1, 0x0

    move-object/from16 v9, p1

    .line 863
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 864
    invoke-virtual {v1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 865
    iget v6, v1, Landroid/graphics/RectF;->top:F

    iget v10, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    sub-float/2addr v6, v10

    float-to-double v10, v6

    cmpg-double v6, v10, v7

    if-gez v6, :cond_1

    move-wide v10, v7

    .line 869
    :cond_1
    iget v6, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v6, v1

    float-to-double v12, v6

    cmpg-double v1, v12, v7

    if-gez v1, :cond_2

    goto :goto_0

    :cond_2
    move-wide v7, v12

    :goto_0
    add-double/2addr v10, v7

    div-double/2addr v10, v4

    goto :goto_2

    :cond_3
    move-object/from16 v9, p1

    .line 877
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    const/4 v11, 0x0

    move-wide v12, v7

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    if-eqz v11, :cond_5

    .line 879
    invoke-direct {v0, v11, v14}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcBlockInterval(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)D

    move-result-wide v15

    cmpg-double v11, v7, v15

    if-gez v11, :cond_4

    cmpg-double v11, v2, v15

    if-gez v11, :cond_4

    sub-double/2addr v15, v2

    :cond_4
    add-double/2addr v12, v15

    :cond_5
    move-object v11, v14

    goto :goto_1

    :cond_6
    sub-int/2addr v1, v6

    int-to-double v6, v1

    div-double v10, v12, v6

    :goto_2
    div-double v4, v10, v4

    move-object v1, v9

    .line 893
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setStrokesBounds(Ljava/util/List;DD)V

    return-void
.end method


# virtual methods
.method public addStroke(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getBaseHeight()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getBoundsForBaseHeight(F)Landroid/graphics/RectF;

    move-result-object p1

    .line 234
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 235
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_innerBounds:Landroid/graphics/RectF;

    goto :goto_0

    .line 236
    :cond_0
    sget-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_innerBounds:Landroid/graphics/RectF;

    if-eq v0, v1, :cond_1

    .line 237
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 239
    :cond_1
    :goto_0
    sget-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    if-eq v0, v1, :cond_2

    .line 240
    invoke-virtual {v1, p1}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    :cond_2
    const/4 p1, 0x0

    .line 242
    iput-boolean p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_centerOfGravityEnable:Z

    return-void
.end method

.method public addStrokes(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)V
    .locals 1

    .line 246
    invoke-virtual {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 247
    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->addStroke(Lcom/metamoji/mazecclient/stroke/HandwriteStroke;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public applyStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;)V"
        }
    .end annotation

    .line 288
    invoke-virtual {p2}, Ljava/util/EnumSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 289
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    .line 290
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 291
    iget-object v3, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    .line 293
    new-instance v4, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;

    invoke-virtual {v3}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getStyle()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;-><init>(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    .line 294
    invoke-interface {v4}, Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v5

    .line 298
    sget-object v6, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v6}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    if-eq v0, v5, :cond_0

    .line 301
    new-instance v5, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;

    invoke-direct {v5, p1}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;-><init>(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    .line 302
    const-class v6, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-static {v6}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    .line 303
    invoke-virtual {v6, p2}, Ljava/util/EnumSet;->removeAll(Ljava/util/Collection;)Z

    .line 304
    invoke-interface {v5, v4, v6}, Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;->applyProperties(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V

    .line 307
    invoke-virtual {v3}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->getPoints()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->createStroke(Ljava/util/List;Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    move-result-object v3

    .line 308
    iget-object v4, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v4, v2, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 310
    sget-object v3, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iput-object v3, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_innerBounds:Landroid/graphics/RectF;

    .line 311
    sget-object v3, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iput-object v3, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    goto :goto_1

    .line 313
    :cond_0
    invoke-interface {v4, p1, p2}, Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;->applyProperties(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V

    .line 314
    invoke-virtual {v3, v4}, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;->setStyle(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method calcCommonCenterOfGravity(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)Landroid/graphics/PointF;
    .locals 5

    .line 171
    invoke-direct {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCenterOfGravity()Landroid/graphics/PointF;

    move-result-object v0

    invoke-direct {p2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCenterOfGravity()Landroid/graphics/PointF;

    move-result-object v1

    .line 172
    invoke-direct {p1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfPoints()I

    move-result p1

    invoke-direct {p2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfPoints()I

    move-result p2

    add-int v2, p1, p2

    .line 173
    new-instance v3, Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    int-to-float p1, p1

    mul-float/2addr v0, p1

    iget v4, v1, Landroid/graphics/PointF;->x:F

    int-to-float p2, p2

    mul-float/2addr v4, p2

    add-float/2addr v0, v4

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v4, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, p1

    iget p1, v1, Landroid/graphics/PointF;->y:F

    mul-float/2addr p1, p2

    add-float/2addr v4, p1

    div-float/2addr v4, v2

    invoke-direct {v3, v0, v4}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v3
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public divide2CharacterStrokes(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 397
    invoke-direct {p0, v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->divide2CharacterStrokesWithoutCoordinateTransform(Z)Ljava/util/List;

    move-result-object v0

    if-nez p1, :cond_0

    return-object v0

    .line 399
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    invoke-direct {p1}, Lcom/metamoji/cm/CmException;-><init>()V

    throw p1
.end method

.method public getBaseHeight()F
    .locals 2

    .line 188
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    iget v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public getBaseLine()F
    .locals 1

    .line 183
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    return v0
.end method

.method public getBounds()Landroid/graphics/RectF;
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getCountOfStroke()I
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInnerBounds()Landroid/graphics/RectF;
    .locals 2

    .line 103
    sget-object v0, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_innerBounds:Landroid/graphics/RectF;

    if-ne v0, v1, :cond_0

    .line 105
    invoke-direct {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->recalcInnerBounds()V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_innerBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getOuterBounds()Landroid/graphics/RectF;
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    sget-object v1, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    if-ne v0, v1, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public getStrokeAt(I)Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;
    .locals 1

    .line 202
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazecclient/stroke/IHandwriteStroke;

    return-object p1
.end method

.method public getTopLine()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStroke;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 8

    .line 1220
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 1224
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    const/4 v0, 0x2

    .line 1227
    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->MAKE_VER(II)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v0

    .line 1229
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    const-class v3, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    invoke-static {v1, p1, v3}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1231
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    sget-object v3, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    if-ne v1, v3, :cond_0

    .line 1232
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1233
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1234
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1235
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    goto :goto_0

    .line 1238
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1239
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1240
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1241
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    .line 1244
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 1245
    iget v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0x40

    .line 1247
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 1250
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v1

    .line 1252
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v2

    add-int/2addr v0, v2

    .line 1254
    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v0

    .line 1258
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    .line 1260
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v3

    .line 1262
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v4

    .line 1263
    invoke-direct {p0, v4}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->MAJOR_VER(I)I

    .line 1267
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1268
    const-class v1, Lcom/metamoji/mazecclient/stroke/HandwriteStroke;

    invoke-static {v4, p1, v1}, Lcom/metamoji/cm/ListUtils;->serialize(Ljava/util/List;Lcom/metamoji/cm/DataArchiver;Ljava/lang/Class;)I

    .line 1269
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1270
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_strokes:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1273
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v1

    .line 1274
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v4

    .line 1275
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v5

    .line 1276
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v6

    cmpl-float v7, v1, v2

    if-nez v7, :cond_3

    cmpl-float v7, v4, v2

    if-nez v7, :cond_3

    cmpl-float v7, v5, v2

    if-nez v7, :cond_3

    cmpl-float v2, v6, v2

    if-nez v2, :cond_3

    .line 1278
    sget-object v1, Lcom/metamoji/cm/RectUtils;->Empty:Landroid/graphics/RectF;

    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    goto :goto_1

    .line 1281
    :cond_3
    new-instance v2, Landroid/graphics/RectF;

    add-float/2addr v5, v1

    add-float/2addr v6, v4

    invoke-direct {v2, v1, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0, v2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 1285
    :goto_1
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v1

    iput v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    .line 1286
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v1

    iput v1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    .line 1289
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    add-int/2addr v3, v0

    .line 1292
    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    const/4 p1, 0x0

    return p1
.end method

.method public setOuterBounds(Landroid/graphics/RectF;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_outerBounds:Landroid/graphics/RectF;

    return-void
.end method

.method setStrokesBounds(Ljava/util/List;DD)V
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;",
            ">;DD)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 908
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_9

    .line 913
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v3

    const-wide/16 v4, 0x0

    cmpg-double v6, p2, v4

    if-gez v6, :cond_1

    move-wide v6, v4

    goto :goto_0

    :cond_1
    move-wide/from16 v6, p2

    :goto_0
    cmpg-double v8, p4, v4

    if-gez v8, :cond_2

    move-wide v8, v4

    goto :goto_1

    :cond_2
    move-wide/from16 v8, p4

    :goto_1
    add-int/lit8 v10, v2, -0x1

    .line 922
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 923
    :goto_2
    invoke-virtual {v10}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v11

    if-nez v11, :cond_4

    add-int/lit8 v10, v2, -0x1

    .line 924
    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v10, v2, -0x1

    if-nez v10, :cond_3

    goto/16 :goto_9

    :cond_3
    add-int/lit8 v2, v2, -0x2

    .line 929
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    move/from16 v22, v10

    move-object v10, v2

    move/from16 v2, v22

    goto :goto_2

    .line 932
    :cond_4
    new-instance v11, Landroid/graphics/RectF;

    invoke-virtual {v10}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v12

    invoke-direct {v11, v12}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 935
    iget v12, v11, Landroid/graphics/RectF;->right:F

    float-to-double v12, v12

    add-double/2addr v12, v8

    double-to-float v12, v12

    iput v12, v11, Landroid/graphics/RectF;->right:F

    .line 937
    invoke-virtual {v10, v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    const/4 v10, 0x0

    .line 940
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 941
    :goto_3
    invoke-virtual {v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v12

    if-nez v12, :cond_5

    .line 942
    invoke-interface {v1, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    .line 944
    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    goto :goto_3

    .line 947
    :cond_5
    new-instance v12, Landroid/graphics/RectF;

    invoke-virtual {v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getInnerBounds()Landroid/graphics/RectF;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 948
    iget v13, v12, Landroid/graphics/RectF;->left:F

    iget v14, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v13, v14

    float-to-double v13, v13

    cmpg-double v15, v13, v4

    move-wide/from16 v16, v4

    const/4 v4, 0x0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    if-gtz v15, :cond_6

    move-wide/from16 p2, v6

    const/16 p4, 0x1

    goto :goto_4

    :cond_6
    mul-double v20, v6, v18

    add-double v20, v20, v8

    cmpg-double v15, v13, v20

    if-gez v15, :cond_7

    .line 954
    invoke-virtual {v12}, Landroid/graphics/RectF;->width()F

    move-result v10

    move-wide/from16 p2, v6

    const/16 p4, 0x1

    float-to-double v5, v10

    add-double/2addr v5, v13

    double-to-float v5, v5

    .line 955
    iget v3, v3, Landroid/graphics/RectF;->left:F

    iput v3, v12, Landroid/graphics/RectF;->left:F

    .line 956
    iget v3, v12, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v5

    iput v3, v12, Landroid/graphics/RectF;->right:F

    :goto_4
    move/from16 v3, p4

    goto :goto_5

    :cond_7
    move-wide/from16 p2, v6

    const/16 p4, 0x1

    .line 960
    iget v5, v12, Landroid/graphics/RectF;->left:F

    float-to-double v5, v5

    sub-double/2addr v5, v8

    double-to-float v5, v5

    iput v5, v12, Landroid/graphics/RectF;->left:F

    .line 962
    new-instance v5, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    iget v6, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    iget v7, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    invoke-direct {v5, v6, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(FF)V

    .line 963
    new-instance v6, Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    iget v7, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    iget v13, v12, Landroid/graphics/RectF;->left:F

    invoke-direct {v6, v3, v7, v13, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 964
    invoke-virtual {v5, v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 965
    invoke-interface {v1, v10, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x2

    .line 969
    :goto_5
    invoke-virtual {v11, v12}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    :goto_6
    if-ge v3, v2, :cond_e

    .line 975
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 976
    new-instance v6, Landroid/graphics/RectF;

    invoke-virtual {v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 977
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v10

    invoke-direct {v7, v10}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 979
    invoke-virtual {v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v10

    if-nez v10, :cond_b

    add-int/lit8 v3, v3, 0x1

    .line 980
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 981
    invoke-virtual {v10}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getCountOfStroke()I

    move-result v12

    if-nez v12, :cond_8

    .line 982
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    .line 984
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    .line 987
    :cond_8
    new-instance v12, Landroid/graphics/RectF;

    invoke-virtual {v10}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->getOuterBounds()Landroid/graphics/RectF;

    move-result-object v13

    invoke-direct {v12, v13}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 988
    invoke-direct {v0, v11, v10}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcBlockInterval(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)D

    move-result-wide v13

    mul-double v20, v8, v18

    cmpl-double v13, v13, v20

    if-lez v13, :cond_9

    .line 990
    iget v13, v6, Landroid/graphics/RectF;->right:F

    float-to-double v13, v13

    add-double/2addr v13, v8

    double-to-float v13, v13

    iput v13, v6, Landroid/graphics/RectF;->right:F

    .line 994
    iget v13, v12, Landroid/graphics/RectF;->left:F

    float-to-double v13, v13

    sub-double/2addr v13, v8

    double-to-float v13, v13

    iput v13, v12, Landroid/graphics/RectF;->left:F

    .line 996
    :cond_9
    iget v13, v6, Landroid/graphics/RectF;->left:F

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v14

    add-float/2addr v13, v14

    iput v13, v7, Landroid/graphics/RectF;->left:F

    .line 997
    iget v13, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    iput v13, v7, Landroid/graphics/RectF;->top:F

    .line 998
    iget v13, v12, Landroid/graphics/RectF;->left:F

    iput v13, v7, Landroid/graphics/RectF;->right:F

    .line 999
    iget v13, v7, Landroid/graphics/RectF;->top:F

    iput v13, v7, Landroid/graphics/RectF;->bottom:F

    .line 1001
    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v13

    cmpg-float v13, v13, v4

    if-gez v13, :cond_a

    .line 1002
    iget v13, v12, Landroid/graphics/RectF;->left:F

    iput v13, v7, Landroid/graphics/RectF;->left:F

    .line 1003
    iget v13, v7, Landroid/graphics/RectF;->left:F

    iput v13, v7, Landroid/graphics/RectF;->right:F

    .line 1006
    :cond_a
    invoke-virtual {v11, v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 1007
    invoke-virtual {v5, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 1008
    invoke-virtual {v10, v12}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    move-object v11, v10

    goto :goto_8

    .line 1015
    :cond_b
    invoke-direct {v0, v11, v5}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->calcBlockInterval(Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;)D

    move-result-wide v12

    cmpg-double v10, v12, v16

    if-gtz v10, :cond_c

    goto :goto_7

    :cond_c
    cmpg-double v10, v12, p2

    if-gtz v10, :cond_d

    .line 1021
    iget v10, v6, Landroid/graphics/RectF;->right:F

    float-to-double v14, v10

    div-double v12, v12, v18

    add-double/2addr v14, v12

    double-to-float v10, v14

    iput v10, v6, Landroid/graphics/RectF;->right:F

    .line 1023
    invoke-virtual {v11, v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 1030
    iget v6, v6, Landroid/graphics/RectF;->right:F

    iput v6, v7, Landroid/graphics/RectF;->left:F

    .line 1031
    invoke-virtual {v5, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    goto :goto_7

    :cond_d
    sub-double v12, v12, p2

    const-wide/high16 v14, 0x4010000000000000L    # 4.0

    div-double/2addr v12, v14

    .line 1036
    iget v10, v6, Landroid/graphics/RectF;->right:F

    float-to-double v14, v10

    add-double/2addr v14, v12

    double-to-float v10, v14

    iput v10, v6, Landroid/graphics/RectF;->right:F

    .line 1038
    invoke-virtual {v11, v6}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 1045
    iget v10, v7, Landroid/graphics/RectF;->left:F

    float-to-double v10, v10

    sub-double/2addr v10, v12

    double-to-float v10, v10

    iput v10, v7, Landroid/graphics/RectF;->left:F

    .line 1046
    invoke-virtual {v5, v7}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 1048
    new-instance v10, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;

    iget v11, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_topLine:F

    iget v12, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    invoke-direct {v10, v11, v12}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;-><init>(FF)V

    .line 1049
    new-instance v11, Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    iget v12, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget v13, v0, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->_baseLine:F

    invoke-direct {v11, v6, v12, v7, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1055
    invoke-virtual {v10, v11}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    .line 1056
    invoke-interface {v1, v3, v10}, Ljava/util/List;->add(ILjava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    :goto_7
    move-object v11, v5

    :goto_8
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_6

    :cond_e
    :goto_9
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1306
    new-instance p2, Lcom/metamoji/cm/DataArchiver;

    invoke-direct {p2}, Lcom/metamoji/cm/DataArchiver;-><init>()V

    .line 1307
    invoke-virtual {p0, p2}, Lcom/metamoji/mazecclient/stroke/HandwriteStrokes;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    .line 1308
    invoke-virtual {p2}, Lcom/metamoji/cm/DataArchiver;->getWrittenData()Ljava/io/ByteArrayOutputStream;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 1309
    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1310
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
