.class Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;
.super Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;
.source "DrOvGraphicObject.java"


# instance fields
.field private m_basePath:Landroid/graphics/Path;

.field private m_margin:F

.field private final m_size:Lcom/metamoji/cm/SizeF;

.field private final m_transform:Landroid/graphics/Matrix;


# direct methods
.method constructor <init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)V
    .locals 2

    .line 174
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;-><init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 169
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_transform:Landroid/graphics/Matrix;

    .line 170
    new-instance p2, Lcom/metamoji/cm/SizeF;

    invoke-direct {p2}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_size:Lcom/metamoji/cm/SizeF;

    .line 175
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_path:Landroid/graphics/Path;

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_basePath:Landroid/graphics/Path;

    .line 176
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_path:Landroid/graphics/Path;

    .line 178
    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Matrix;->setTranslate(FF)V

    float-to-double v0, p4

    .line 179
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p4, v0

    invoke-virtual {p1, p4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 181
    iget p1, p3, Lcom/metamoji/cm/RectEx;->width:F

    iget p3, p3, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p2, p1, p3}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 182
    iput p5, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_margin:F

    return-void
.end method

.method private generatePath()V
    .locals 4

    const/high16 v0, 0x40000000    # 2.0f

    .line 207
    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_margin:F

    mul-float/2addr v1, v0

    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_scale:F

    mul-float/2addr v1, v0

    .line 208
    new-instance v0, Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_transform:Landroid/graphics/Matrix;

    invoke-direct {v0, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 209
    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_size:Lcom/metamoji/cm/SizeF;

    iget v2, v2, Lcom/metamoji/cm/SizeF;->width:F

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->height:F

    add-float/2addr v3, v1

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 210
    iget-object v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_basePath:Landroid/graphics/Path;

    iget-object v2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_path:Landroid/graphics/Path;

    invoke-virtual {v1, v0, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;Landroid/graphics/Path;)V

    return-void
.end method


# virtual methods
.method resetPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;Lcom/metamoji/cm/RectEx;FF)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_path:Landroid/graphics/Path;

    .line 187
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->resetPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    .line 188
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_path:Landroid/graphics/Path;

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_basePath:Landroid/graphics/Path;

    .line 189
    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_path:Landroid/graphics/Path;

    .line 191
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_transform:Landroid/graphics/Matrix;

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p2

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 192
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_transform:Landroid/graphics/Matrix;

    float-to-double v0, p4

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p2, v0

    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 194
    iget-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_size:Lcom/metamoji/cm/SizeF;

    iget p2, p3, Lcom/metamoji/cm/RectEx;->width:F

    iget p3, p3, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {p1, p2, p3}, Lcom/metamoji/cm/SizeF;->set(FF)V

    .line 195
    iput p5, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->m_margin:F

    .line 197
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->generatePath()V

    return-void
.end method

.method setScale(F)V
    .locals 0

    .line 202
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->setScale(F)V

    .line 203
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicMarginedPath;->generatePath()V

    return-void
.end method
