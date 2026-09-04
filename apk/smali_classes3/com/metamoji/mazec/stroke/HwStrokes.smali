.class public Lcom/metamoji/mazec/stroke/HwStrokes;
.super Ljava/lang/Object;
.source "HwStrokes.java"


# static fields
.field private static mLineWidthRatioBold:F = 0.065f

.field private static mLineWidthRatioNormal:F = 0.033f

.field private static mLineWidthRatioSemiBold:F = 0.045f

.field private static mLineWidthRatioThin:F = 0.025f


# instance fields
.field private mBaseLine:F

.field private mCenterOfGravityFlag:Z

.field private mInnerBounds:Landroid/graphics/RectF;

.field private mInnerBoundsFlag:Z

.field private mOuterBounds:Landroid/graphics/RectF;

.field private mOuterBoundsFlag:Z

.field private mStrokeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Long;",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;"
        }
    .end annotation
.end field

.field private mStrokes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;"
        }
    .end annotation
.end field

.field private mTopLine:F

.field private mWorkRect:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 58
    iput v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    .line 61
    iput v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    const/4 v0, 0x0

    .line 67
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBounds:Landroid/graphics/RectF;

    .line 70
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBounds:Landroid/graphics/RectF;

    .line 79
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    .line 85
    iput-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    .line 88
    iput-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    .line 149
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    .line 152
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mWorkRect:Landroid/graphics/RectF;

    return-void
.end method

.method private calcInnerBounds()V
    .locals 8

    .line 1834
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBounds:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 1835
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    .line 1838
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 1841
    :goto_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 1846
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->bounds()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    const/4 v2, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    if-ge v3, v1, :cond_2

    .line 1849
    iget-object v5, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1850
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->getStrokeStyle()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v6

    .line 1851
    invoke-virtual {v6, v2}, Lcom/metamoji/mazec/stroke/StrokeStyle;->equals(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1852
    invoke-virtual {p0, v6}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result v2

    move v4, v2

    move-object v2, v6

    .line 1856
    :cond_1
    iget-object v6, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v5, v4, v6}, Lcom/metamoji/mazec/stroke/HwStroke;->boundsWithLineWidth(FLandroid/graphics/RectF;)V

    .line 1857
    iget-object v5, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v5}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1860
    :cond_2
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBounds:Landroid/graphics/RectF;

    const/4 v0, 0x1

    .line 1861
    iput-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    return-void
.end method

.method private divideToStrokes(FZ)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FZ)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeBlock;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 348
    iget-object v1, v0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    .line 351
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    .line 352
    new-array v4, v7, [I

    .line 353
    new-array v5, v7, [J

    const/16 v18, 0x0

    move/from16 v2, v18

    move v3, v2

    :goto_0
    if-ge v2, v7, :cond_0

    .line 355
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 356
    invoke-virtual {v6}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v8

    .line 357
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 358
    aput v8, v4, v2

    .line 359
    invoke-virtual {v6}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v9

    aput-wide v9, v5, v2

    add-int/2addr v3, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 363
    :cond_0
    new-array v2, v3, [F

    .line 364
    new-array v3, v3, [F

    move/from16 v6, v18

    move v8, v6

    :goto_1
    if-ge v6, v7, :cond_2

    .line 366
    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 367
    invoke-virtual {v9}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v9

    .line 368
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    move/from16 v11, v18

    :goto_2
    if-ge v11, v10, :cond_1

    .line 370
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/graphics/PointF;

    .line 371
    iget v13, v12, Landroid/graphics/PointF;->x:F

    aput v13, v2, v8

    .line 372
    iget v12, v12, Landroid/graphics/PointF;->y:F

    aput v12, v3, v8

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 389
    :cond_2
    iget v8, v0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    if-eqz p2, :cond_3

    const/4 v6, 0x0

    .line 379
    iget v9, v0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    move/from16 v10, p1

    invoke-static/range {v2 .. v10}, Lcom/metamoji/mazec/MazecRACLibJNI;->getWordStrokeBlocks([F[F[I[J[FIFFF)[Lcom/metamoji/mazec/stroke/StrokeBlock;

    move-result-object v1

    goto :goto_3

    :cond_3
    const/4 v6, 0x0

    .line 389
    iget v9, v0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    invoke-static/range {v2 .. v9}, Lcom/metamoji/mazec/MazecRACLibJNI;->getCharStrokeBlocks([F[F[I[J[FIFF)[Lcom/metamoji/mazec/stroke/StrokeBlock;

    move-result-object v1

    :goto_3
    if-nez v1, :cond_4

    .line 401
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 402
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->outerBounds()Landroid/graphics/RectF;

    move-result-object v2

    .line 403
    new-instance v8, Lcom/metamoji/mazec/stroke/StrokeBlock;

    iget v9, v1, Landroid/graphics/RectF;->left:F

    iget v10, v1, Landroid/graphics/RectF;->top:F

    iget v11, v1, Landroid/graphics/RectF;->right:F

    iget v12, v1, Landroid/graphics/RectF;->bottom:F

    iget v13, v2, Landroid/graphics/RectF;->left:F

    iget v14, v2, Landroid/graphics/RectF;->top:F

    iget v15, v2, Landroid/graphics/RectF;->right:F

    iget v1, v2, Landroid/graphics/RectF;->bottom:F

    move/from16 v16, v1

    move-object/from16 v17, v5

    invoke-direct/range {v8 .. v17}, Lcom/metamoji/mazec/stroke/StrokeBlock;-><init>(FFFFFFFF[J)V

    const/4 v1, 0x1

    .line 407
    new-array v1, v1, [Lcom/metamoji/mazec/stroke/StrokeBlock;

    aput-object v8, v1, v18

    .line 410
    :cond_4
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public static getRightStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;FLjava/util/Set;)Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            "F",
            "Ljava/util/Set<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)",
            "Ljava/util/Set<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;"
        }
    .end annotation

    if-nez p2, :cond_0

    .line 2234
    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto :goto_0

    .line 2236
    :cond_0
    invoke-interface {p2}, Ljava/util/Set;->clear()V

    .line 2239
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_2

    .line 2241
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v2

    .line 2242
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->xCenterOfGravity()F

    move-result v3

    cmpl-float v3, v3, p1

    if-ltz v3, :cond_1

    .line 2243
    invoke-interface {p2, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    return-object p2
.end method


# virtual methods
.method public addStroke(Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 1

    .line 1999
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 2000
    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 2001
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return-void
.end method

.method public addStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V
    .locals 1

    .line 2009
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStrokes()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 2011
    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 2012
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return-void
.end method

.method public baseLine()F
    .locals 1

    .line 223
    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    return v0
.end method

.method public boundsWithStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 5

    if-nez p2, :cond_0

    .line 1870
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    .line 1872
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/RectF;->setEmpty()V

    .line 1875
    :goto_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    .line 1877
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F

    move-result p1

    .line 1878
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v1, :cond_1

    .line 1880
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1881
    iget-object v4, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {v3, p1, v4}, Lcom/metamoji/mazec/stroke/HwStroke;->boundsWithLineWidth(FLandroid/graphics/RectF;)V

    .line 1882
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mWorkRect:Landroid/graphics/RectF;

    invoke-virtual {p2, v3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object p2
.end method

.method public clone()Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 3

    .line 161
    new-instance v0, Lcom/metamoji/mazec/stroke/HwStrokes;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/HwStrokes;-><init>()V

    .line 163
    iget v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    iget v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->setGuidelinesWithTop(FF)V

    .line 164
    iget-object v1, v0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 166
    iget-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    if-eqz v1, :cond_0

    .line 167
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBounds:Landroid/graphics/RectF;

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->setOuterBounds(Landroid/graphics/RectF;)V

    :cond_0
    return-object v0
.end method

.method public clone(FF)Lcom/metamoji/mazec/stroke/HwStrokes;
    .locals 2

    .line 179
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    .line 180
    iget v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    iget v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    cmpl-float v1, p2, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    return-object v0

    .line 181
    :cond_1
    :goto_0
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/mazec/stroke/HwStrokes;->updateGuidelinesWithTop(FF)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->clone()Lcom/metamoji/mazec/stroke/HwStrokes;

    move-result-object v0

    return-object v0
.end method

.method public deleteSpace(FF)V
    .locals 5

    .line 1624
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    neg-float v1, p2

    const/4 v2, 0x0

    .line 1625
    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sub-float p2, p1, p2

    .line 1629
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :cond_0
    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_2

    .line 1631
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1632
    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->xCenterOfGravity()F

    move-result v3

    cmpg-float v4, p1, v3

    if-gtz v4, :cond_1

    .line 1635
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Lcom/metamoji/mazec/stroke/HwStroke;->transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    cmpg-float v2, p2, v3

    if-gtz v2, :cond_0

    .line 1638
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 1642
    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 1643
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return-void
.end method

.method public divideToCharStrokes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeBlock;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 340
    invoke-direct {p0, v0, v1}, Lcom/metamoji/mazec/stroke/HwStrokes;->divideToStrokes(FZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public divideToWordStrokes(F)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F)",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/StrokeBlock;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->divideToStrokes(FZ)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getLeftMostPoint()Landroid/graphics/PointF;
    .locals 10

    .line 2033
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f7fffff    # Float.MAX_VALUE

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    .line 2037
    iget-object v5, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 2038
    invoke-virtual {v5}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v5

    .line 2039
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    .line 2041
    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/graphics/PointF;

    .line 2042
    iget v9, v8, Landroid/graphics/PointF;->x:F

    cmpg-float v9, v9, v2

    if-gez v9, :cond_0

    .line 2043
    iget v2, v8, Landroid/graphics/PointF;->x:F

    move-object v1, v8

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 1

    .line 1964
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/stroke/HwStroke;

    return-object p1
.end method

.method public getStrokeByStrokeOrder(J)Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 6

    .line 1974
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    if-nez v0, :cond_0

    .line 1975
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1976
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 1978
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1979
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1983
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/mazec/stroke/HwStroke;

    return-object p1
.end method

.method public getStrokes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;"
        }
    .end annotation

    .line 1991
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public innerBounds()Landroid/graphics/RectF;
    .locals 1

    .line 1822
    iget-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    if-nez v0, :cond_0

    .line 1823
    invoke-direct {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->calcInnerBounds()V

    .line 1825
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBounds:Landroid/graphics/RectF;

    return-object v0
.end method

.method public insertSpace(FF)V
    .locals 6

    .line 1600
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    .line 1601
    invoke-virtual {v0, p2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1603
    iget-object p2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, p2, :cond_1

    .line 1606
    iget-object v4, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1607
    invoke-virtual {v4}, Lcom/metamoji/mazec/stroke/HwStroke;->xCenterOfGravity()F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_0

    .line 1608
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Lcom/metamoji/mazec/stroke/HwStroke;->transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    .line 1614
    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 1615
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    :cond_2
    return-void
.end method

.method public isEqual(Lcom/metamoji/mazec/stroke/HwStrokes;)Z
    .locals 4

    .line 193
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 194
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/HwStrokes;->strokeCount()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p1, v2}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/metamoji/mazec/stroke/HwStroke;->isEqual(Lcom/metamoji/mazec/stroke/HwStroke;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {p1, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->getStroke(I)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->isEqual(Lcom/metamoji/mazec/stroke/HwStroke;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method public lineHeight()F
    .locals 2

    .line 2183
    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    iget v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    sub-float/2addr v0, v1

    return v0
.end method

.method public lineWidthOfStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)F
    .locals 3

    .line 2191
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->lineHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    .line 2193
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getPenType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 2196
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineWidthType()I

    move-result p1

    if-eq p1, v2, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    .line 2210
    sget p1, Lcom/metamoji/mazec/stroke/HwStrokes;->mLineWidthRatioNormal:F

    :goto_0
    mul-float/2addr v0, p1

    return v0

    .line 2202
    :cond_0
    sget p1, Lcom/metamoji/mazec/stroke/HwStrokes;->mLineWidthRatioBold:F

    goto :goto_0

    .line 2206
    :cond_1
    sget p1, Lcom/metamoji/mazec/stroke/HwStrokes;->mLineWidthRatioSemiBold:F

    goto :goto_0

    .line 2198
    :cond_2
    sget p1, Lcom/metamoji/mazec/stroke/HwStrokes;->mLineWidthRatioThin:F

    goto :goto_0

    .line 2215
    :cond_3
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getLineWidthRatio()D

    move-result-wide v1

    double-to-float p1, v1

    mul-float/2addr p1, v0

    const/high16 v0, 0x41400000    # 12.0f

    div-float/2addr p1, v0

    return p1

    :cond_4
    const/high16 p1, 0x3f800000    # 1.0f

    return p1
.end method

.method public mergeStrokesArray(Ljava/util/List;F)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStrokes;",
            ">;F)I"
        }
    .end annotation

    .line 1448
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 1452
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v5, v4

    move v6, v3

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1454
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/mazec/stroke/HwStrokes;

    .line 1455
    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->topLine()F

    move-result v8

    .line 1456
    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->baseLine()F

    move-result v9

    neg-float v10, v8

    .line 1457
    invoke-virtual {v0, v3, v10}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1458
    iget v10, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    iget v11, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    sub-float/2addr v10, v11

    sub-float/2addr v8, v9

    div-float/2addr v10, v8

    .line 1459
    invoke-virtual {v0, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1460
    iget v8, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1461
    invoke-virtual {v0, v6, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1463
    invoke-virtual {v7, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->transform(Landroid/graphics/Matrix;)V

    cmpl-float v6, p2, v3

    if-lez v6, :cond_2

    if-nez v4, :cond_0

    .line 1466
    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->outerBounds()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    cmpl-float v6, v6, v3

    if-lez v6, :cond_2

    .line 1468
    :cond_0
    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v4

    iget v4, v4, Landroid/graphics/RectF;->right:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 v4, 0x1

    .line 1473
    :cond_2
    invoke-virtual {p0, v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->addStrokes(Lcom/metamoji/mazec/stroke/HwStrokes;)V

    add-int/lit8 v5, v5, 0x1

    .line 1476
    invoke-virtual {v7}, Lcom/metamoji/mazec/stroke/HwStrokes;->outerBounds()Landroid/graphics/RectF;

    move-result-object v6

    iget v6, v6, Landroid/graphics/RectF;->right:F

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v5
.end method

.method public outerBounds()Landroid/graphics/RectF;
    .locals 2

    .line 1892
    iget-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    if-eqz v0, :cond_0

    .line 1893
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBounds:Landroid/graphics/RectF;

    return-object v0

    .line 1896
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/mazec/stroke/HwStrokes;->innerBounds()Landroid/graphics/RectF;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public points()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    .line 1560
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1561
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1563
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1564
    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStroke;->points()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public removeAllStrokes()V
    .locals 1

    .line 2095
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 2096
    iput-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 v0, 0x0

    .line 2097
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return-void
.end method

.method public removeLastStroke()Lcom/metamoji/mazec/stroke/HwStroke;
    .locals 3

    .line 2106
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2111
    :cond_0
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/mazec/stroke/HwStroke;

    const/4 v2, 0x0

    .line 2113
    iput-boolean v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    .line 2114
    iput-object v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public removeStroke(J)I
    .locals 5

    .line 2077
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2080
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v3}, Lcom/metamoji/mazec/stroke/HwStroke;->strokeOrder()J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_0

    .line 2081
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2082
    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 2083
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public removeStroke(Lcom/metamoji/mazec/stroke/HwStroke;)I
    .locals 4

    .line 2058
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 2061
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/HwStroke;

    invoke-virtual {v3, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->isEqual(Lcom/metamoji/mazec/stroke/HwStroke;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2062
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2063
    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 2064
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public replaceStroke(Lcom/metamoji/mazec/stroke/HwStroke;Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 1

    .line 1665
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_0

    .line 1667
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 1669
    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 1670
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method public replaceStroke(Lcom/metamoji/mazec/stroke/HwStroke;[Lcom/metamoji/mazec/stroke/HwStroke;)V
    .locals 3

    .line 1651
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 1653
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1654
    array-length v0, p2

    :goto_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_0

    .line 1655
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    aget-object v2, p2, v0

    invoke-virtual {v1, p1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1658
    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 1659
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    :cond_1
    return-void
.end method

.method public setGuidelinesWithTop(FF)V
    .locals 0

    .line 206
    iput p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    .line 207
    iput p2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    return-void
.end method

.method public setOuterBounds(Landroid/graphics/RectF;)V
    .locals 0

    .line 1904
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBounds:Landroid/graphics/RectF;

    const/4 p1, 0x1

    .line 1905
    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    return-void
.end method

.method public setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V
    .locals 2

    .line 2222
    invoke-virtual {p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->cloneImmutable()Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p1

    .line 2223
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 2224
    invoke-virtual {v1, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->setStrokeStyle(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setStrokes(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    .line 2021
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2022
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 p1, 0x0

    .line 2024
    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 2025
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return-void
.end method

.method public shift(F)V
    .locals 2

    .line 321
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    .line 322
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 324
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public shiftStrokes(FLjava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Ljava/util/List<",
            "Lcom/metamoji/mazec/stroke/HwStroke;",
            ">;)V"
        }
    .end annotation

    .line 1575
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    const/4 v1, 0x0

    .line 1576
    invoke-virtual {v0, p1, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 1578
    iget-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 1579
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 1581
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/mazec/stroke/HwStroke;

    move v5, v2

    :goto_1
    if-ge v5, p1, :cond_1

    .line 1583
    iget-object v6, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 1584
    invoke-virtual {v6, v4}, Lcom/metamoji/mazec/stroke/HwStroke;->isEqual(Lcom/metamoji/mazec/stroke/HwStroke;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1585
    iget-object v4, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Lcom/metamoji/mazec/stroke/HwStroke;->transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1591
    :cond_2
    iput-boolean v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mCenterOfGravityFlag:Z

    iput-boolean v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    iput-boolean v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 p1, 0x0

    .line 1592
    iput-object p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    return-void
.end method

.method public strokeCount()I
    .locals 1

    .line 1956
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public topLine()F
    .locals 1

    .line 215
    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    return v0
.end method

.method public transform(Landroid/graphics/Matrix;)V
    .locals 5

    .line 281
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 283
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/mazec/stroke/HwStroke;

    .line 284
    iget-object v4, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokes:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Lcom/metamoji/mazec/stroke/HwStroke;->transform(Landroid/graphics/Matrix;)Lcom/metamoji/mazec/stroke/HwStroke;

    move-result-object v3

    invoke-virtual {v4, v2, v3}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 292
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBoundsFlag:Z

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mOuterBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 304
    :cond_1
    iput-boolean v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mInnerBoundsFlag:Z

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mStrokeMap:Ljava/util/HashMap;

    .line 309
    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    iget v2, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    const/4 v3, 0x4

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v4, v3, v1

    const/4 v1, 0x1

    aput v0, v3, v1

    const/4 v0, 0x2

    aput v4, v3, v0

    const/4 v0, 0x3

    aput v2, v3, v0

    .line 310
    invoke-virtual {p1, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 311
    aget p1, v3, v1

    iput p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    .line 312
    aget p1, v3, v0

    iput p1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    return-void
.end method

.method public updateGuidelinesWithTop(FF)V
    .locals 4

    .line 258
    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    return-void

    .line 262
    :cond_0
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 263
    iget v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    neg-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    sub-float/2addr p2, p1

    .line 264
    iget v1, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mBaseLine:F

    iget v3, p0, Lcom/metamoji/mazec/stroke/HwStrokes;->mTopLine:F

    sub-float/2addr v1, v3

    div-float/2addr p2, v1

    .line 265
    invoke-virtual {v0, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 266
    invoke-virtual {v0, v2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 268
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/stroke/HwStrokes;->transform(Landroid/graphics/Matrix;)V

    return-void
.end method
