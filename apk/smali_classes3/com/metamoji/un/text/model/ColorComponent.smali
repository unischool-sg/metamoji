.class public Lcom/metamoji/un/text/model/ColorComponent;
.super Ljava/lang/Object;
.source "ColorComponent.java"


# instance fields
.field public alpha:F

.field public blue:F

.field public green:F

.field public red:F


# direct methods
.method public constructor <init>(FFFF)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput p1, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 27
    iput p2, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 28
    iput p3, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    .line 29
    iput p4, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 35
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 36
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    .line 37
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/DataArchiver;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/model/ColorComponent;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/un/text/model/ColorComponent;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iget v0, p1, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 19
    iget v0, p1, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 20
    iget v0, p1, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    .line 21
    iget p1, p1, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    iput p1, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 46
    :cond_1
    instance-of v2, p1, Lcom/metamoji/un/text/model/ColorComponent;

    if-nez v2, :cond_2

    return v1

    .line 49
    :cond_2
    check-cast p1, Lcom/metamoji/un/text/model/ColorComponent;

    .line 50
    iget v2, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    iget v3, p1, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    iget v3, p1, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    iget v3, p1, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_3

    iget v2, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    iget p1, p1, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    cmpl-float p1, v2, p1

    if-nez p1, :cond_3

    return v0

    :cond_3
    return v1
.end method

.method public getUIColor()I
    .locals 6

    .line 81
    iget v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v2, 0xff

    .line 82
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget v3, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    mul-float/2addr v3, v1

    float-to-int v3, v3

    .line 83
    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    mul-float/2addr v4, v1

    float-to-int v4, v4

    .line 84
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget v5, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    mul-float/2addr v5, v1

    float-to-int v1, v5

    .line 85
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 81
    invoke-static {v0, v3, v4, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 2

    .line 91
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v0

    .line 94
    iget v1, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    iget v1, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result v1

    add-int/2addr v0, v1

    .line 96
    iget v1, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    move-result p1

    add-int/2addr v0, p1

    return v0

    .line 100
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 101
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    .line 102
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    .line 103
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    const/4 p1, 0x0

    return p1
.end method

.method public set(FFFF)V
    .locals 0

    .line 58
    iput p1, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 59
    iput p2, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 60
    iput p3, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    .line 61
    iput p4, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    return-void
.end method

.method public set(I)V
    .locals 2

    .line 66
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 67
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 68
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    .line 69
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    iput p1, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    return-void
.end method

.method public set(Lcom/metamoji/un/text/model/ColorComponent;)V
    .locals 1

    .line 73
    iget v0, p1, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->alpha:F

    .line 74
    iget v0, p1, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->red:F

    .line 75
    iget v0, p1, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    iput v0, p0, Lcom/metamoji/un/text/model/ColorComponent;->green:F

    .line 76
    iget p1, p1, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    iput p1, p0, Lcom/metamoji/un/text/model/ColorComponent;->blue:F

    return-void
.end method
