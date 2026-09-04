.class public Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
.super Ljava/lang/Object;
.source "DrUtVariation.java"


# instance fields
.field private m_angleInDegrees:F

.field private m_contentScale:F

.field private m_hasTransform:Z

.field private m_isReversingX:Z

.field private m_isReversingY:Z

.field private m_scaleHeight:F

.field private m_scaleWidth:F

.field private final m_transform:Landroid/graphics/Matrix;

.field private m_translateX:F

.field private m_translateY:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    .line 39
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    return-void
.end method

.method private reset()V
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    const/4 v0, 0x0

    .line 323
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    .line 324
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 325
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    .line 326
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    const/4 v2, 0x0

    .line 327
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    .line 328
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    .line 329
    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    .line 330
    iput v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    return-void
.end method


# virtual methods
.method public angleInDegrees()F
    .locals 1

    .line 125
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    return v0
.end method

.method public array()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation

    .line 143
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    const/4 v1, 0x7

    const/4 v2, 0x6

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v0, :cond_0

    .line 144
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;

    iget-object v9, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    invoke-direct {v0, v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;-><init>(Landroid/graphics/Matrix;)V

    const/16 v9, 0x8

    .line 145
    new-array v9, v9, [Ljava/lang/Number;

    iget v10, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    aput-object v10, v9, v8

    iget v8, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    .line 146
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v9, v7

    iget v7, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    .line 147
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v9, v6

    iget v6, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    .line 148
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v9, v5

    iget v5, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    .line 149
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v9, v4

    iget v0, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    .line 150
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v3

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    .line 151
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v2

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    .line 152
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v9, v1

    .line 145
    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 155
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    .line 162
    iget-boolean v9, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    if-eqz v0, :cond_2

    if-eqz v9, :cond_1

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v6

    goto :goto_0

    :cond_2
    if-eqz v9, :cond_3

    move v0, v7

    goto :goto_0

    :cond_3
    move v0, v8

    .line 166
    :goto_0
    new-array v1, v1, [Ljava/lang/Number;

    iget v9, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    invoke-static {v9}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    aput-object v9, v1, v8

    iget v8, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    .line 167
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v1, v7

    iget v7, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    .line 168
    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v1, v6

    iget v6, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    .line 169
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v1, v5

    iget v5, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    .line 170
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v4

    iget v4, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    .line 171
    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v1, v3

    .line 172
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 166
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 2

    .line 250
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    .line 251
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    if-eqz v1, :cond_0

    .line 252
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 254
    :cond_0
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 255
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 256
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 257
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    .line 258
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingX(Z)V

    .line 259
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingY(Z)V

    .line 261
    :goto_0
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    .line 262
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 19
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->clone()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    return-object v0
.end method

.method public contentScale()F
    .locals 1

    .line 131
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    return v0
.end method

.method public getInverse()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 6

    .line 270
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    .line 271
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v1, :cond_0

    .line 272
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->inversionOfTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 274
    :cond_0
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 275
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    neg-float v1, v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 276
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_1

    div-float v1, v2, v1

    .line 277
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 279
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 281
    :goto_0
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    cmpl-float v5, v1, v4

    if-eqz v5, :cond_2

    div-float v1, v2, v1

    .line 282
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 284
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 286
    :goto_1
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingX(Z)V

    .line 287
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingY(Z)V

    .line 289
    :goto_2
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    neg-float v1, v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    .line 290
    iget v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    cmpl-float v4, v1, v4

    if-eqz v4, :cond_3

    div-float/2addr v2, v1

    .line 291
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    return-object v0

    :cond_3
    const/4 v1, 0x2

    .line 293
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0
.end method

.method public initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 1

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    .line 44
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->reset()V

    return-object p0
.end method

.method public initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 1

    const/4 v0, 0x0

    .line 49
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    .line 50
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->reset()V

    return-object p0
.end method

.method public isIdentity()Z
    .locals 7

    .line 302
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    .line 303
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    float-to-double v3, v0

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v3, v5

    if-nez v0, :cond_0

    return v1

    :cond_0
    return v2

    .line 307
    :cond_1
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    cmpl-float v0, v0, v4

    if-nez v0, :cond_2

    return v1

    :cond_2
    return v2
.end method

.method public isReversingX()Z
    .locals 1

    .line 109
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    return v0
.end method

.method public isReversingY()Z
    .locals 1

    .line 117
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    return v0
.end method

.method public scaleHeight()F
    .locals 1

    .line 97
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    return v0
.end method

.method public scaleWidth()F
    .locals 1

    .line 89
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    return v0
.end method

.method public setAngleInDegrees(F)V
    .locals 0

    .line 128
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    return-void
.end method

.method public setArray(Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p1, :cond_0

    .line 178
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 181
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eq v2, v5, :cond_7

    const/4 v9, 0x7

    if-eq v2, v9, :cond_2

    const/16 v10, 0x8

    if-eq v2, v10, :cond_1

    .line 239
    invoke-static {v7, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 183
    :cond_1
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;-><init>()V

    .line 184
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    .line 185
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    .line 186
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    .line 187
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    .line 188
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    .line 189
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->floatValue()F

    move-result v1

    iput v1, v0, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    .line 190
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->setTo(Landroid/graphics/Matrix;)V

    .line 191
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    .line 192
    invoke-interface {p1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    .line 193
    iput-boolean v8, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void

    .line 196
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    .line 197
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    .line 198
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    .line 199
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    .line 200
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    .line 201
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    iput v2, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    .line 202
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    if-eqz p1, :cond_6

    if-eq p1, v8, :cond_5

    if-eq p1, v7, :cond_4

    if-eq p1, v6, :cond_3

    .line 221
    invoke-static {v8, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 217
    :cond_3
    iput-boolean v8, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    .line 218
    iput-boolean v8, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    goto :goto_0

    .line 213
    :cond_4
    iput-boolean v8, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    .line 214
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    goto :goto_0

    .line 209
    :cond_5
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    .line 210
    iput-boolean v8, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    goto :goto_0

    .line 205
    :cond_6
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    .line 206
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    .line 224
    :goto_0
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void

    .line 228
    :cond_7
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    .line 229
    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    .line 230
    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    .line 231
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    .line 232
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_angleInDegrees:F

    .line 233
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    .line 234
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    .line 235
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    .line 236
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void
.end method

.method public setContentScale(F)V
    .locals 0

    .line 134
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_contentScale:F

    return-void
.end method

.method public setIsReversingX(Z)V
    .locals 0

    .line 112
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingX:Z

    const/4 p1, 0x0

    .line 113
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void
.end method

.method public setIsReversingY(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_isReversingY:Z

    const/4 p1, 0x0

    .line 121
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void
.end method

.method public setScaleHeight(F)V
    .locals 0

    .line 100
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleHeight:F

    const/4 p1, 0x0

    .line 101
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void
.end method

.method public setScaleWidth(F)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_scaleWidth:F

    const/4 p1, 0x0

    .line 93
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void
.end method

.method public setTransform(Landroid/graphics/Matrix;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 p1, 0x1

    .line 65
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void
.end method

.method public setTranslateX(F)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void
.end method

.method public setTranslateY(F)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    const/4 p1, 0x0

    .line 85
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_hasTransform:Z

    return-void
.end method

.method public transform()Landroid/graphics/Matrix;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_transform:Landroid/graphics/Matrix;

    return-object v0
.end method

.method public translateX()F
    .locals 1

    .line 73
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateX:F

    return v0
.end method

.method public translateY()F
    .locals 1

    .line 81
    iget v0, p0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->m_translateY:F

    return v0
.end method
