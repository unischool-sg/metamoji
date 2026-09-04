.class Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphic;
.super Ljava/lang/Object;
.source "DrOvGraphicObject.java"


# static fields
.field static final UnitSquare:Landroid/graphics/RectF;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, -0x41000000    # -0.5f

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphic;->UnitSquare:Landroid/graphics/RectF;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static FrameTransform(Lcom/metamoji/cm/RectEx;F)Landroid/graphics/Matrix;
    .locals 3

    .line 35
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 36
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v1

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->setTranslate(FF)V

    float-to-double v1, p1

    .line 37
    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float p1, v1

    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 41
    iget p1, p0, Lcom/metamoji/cm/RectEx;->width:F

    iget p0, p0, Lcom/metamoji/cm/RectEx;->height:F

    invoke-virtual {v0, p1, p0}, Landroid/graphics/Matrix;->preScale(FF)Z

    return-object v0
.end method
