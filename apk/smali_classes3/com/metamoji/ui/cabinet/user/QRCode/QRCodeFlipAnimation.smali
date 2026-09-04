.class public Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;
.super Landroid/view/animation/Animation;
.source "QRCodeFlipAnimation.java"


# instance fields
.field private m_camera:Landroid/graphics/Camera;

.field private final m_centerX:F

.field private final m_centerY:F

.field private final m_fromDegrees:F

.field private final m_toDegrees:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 15
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 16
    iput p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_fromDegrees:F

    .line 17
    iput p2, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_toDegrees:F

    .line 18
    iput p3, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_centerX:F

    .line 19
    iput p4, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_centerY:F

    const-wide/16 p1, 0x12c

    .line 20
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->setDuration(J)V

    const/4 p1, 0x0

    .line 21
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->setFillAfter(Z)V

    .line 22
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 31
    iget v0, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_fromDegrees:F

    .line 32
    iget v1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_toDegrees:F

    sub-float/2addr v1, v0

    mul-float/2addr v1, p1

    add-float/2addr v0, v1

    .line 34
    iget p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_centerX:F

    .line 35
    iget v1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_centerY:F

    .line 36
    iget-object v2, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_camera:Landroid/graphics/Camera;

    .line 38
    invoke-virtual {p2}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p2

    .line 40
    invoke-virtual {v2}, Landroid/graphics/Camera;->save()V

    .line 42
    invoke-virtual {v2, v0}, Landroid/graphics/Camera;->rotateY(F)V

    .line 44
    invoke-virtual {v2, p2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 45
    invoke-virtual {v2}, Landroid/graphics/Camera;->restore()V

    neg-float v0, p1

    neg-float v2, v1

    .line 47
    invoke-virtual {p2, v0, v2}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 48
    invoke-virtual {p2, p1, v1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method

.method public initialize(IIII)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 27
    new-instance p1, Landroid/graphics/Camera;

    invoke-direct {p1}, Landroid/graphics/Camera;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/QRCode/QRCodeFlipAnimation;->m_camera:Landroid/graphics/Camera;

    return-void
.end method
