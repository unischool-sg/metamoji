.class public Lcom/metamoji/df/sprite/PaintLinearGradient;
.super Ljava/lang/Object;
.source "PaintLinearGradient.java"

# interfaces
.implements Lcom/metamoji/df/sprite/Paint;


# instance fields
.field private colors:[I

.field private end:Landroid/graphics/PointF;

.field private positions:[F

.field private start:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addStop(FI)V
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->positions:[F

    invoke-static {v0, p1}, Lcom/metamoji/df/sprite/PaintLinearGradient;->appendFloatArray([FF)[F

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->positions:[F

    .line 28
    iget-object p1, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->colors:[I

    invoke-static {p1, p2}, Lcom/metamoji/df/sprite/PaintLinearGradient;->appendIntArray([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->colors:[I

    return-void
.end method

.method private static appendFloatArray([FF)[F
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 37
    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 38
    new-array v2, v2, [F

    :goto_1
    if-ge v0, v1, :cond_1

    .line 40
    aget v3, p0, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 42
    :cond_1
    aput p1, v2, v1

    return-object v2
.end method

.method private static appendIntArray([II)[I
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 47
    array-length v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    add-int/lit8 v2, v1, 0x1

    .line 48
    new-array v2, v2, [I

    :goto_1
    if-ge v0, v1, :cond_1

    .line 50
    aget v3, p0, v0

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 52
    :cond_1
    aput p1, v2, v1

    return-object v2
.end method

.method private static compositeColor(IF)I
    .locals 1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr p1, v0

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x18

    const v0, 0xffffff

    and-int/2addr p0, v0

    or-int/2addr p0, p1

    return p0
.end method


# virtual methods
.method public addStop(FIF)V
    .locals 0

    .line 23
    invoke-static {p2, p3}, Lcom/metamoji/df/sprite/PaintLinearGradient;->compositeColor(IF)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/sprite/PaintLinearGradient;->addStop(FI)V

    return-void
.end method

.method public getEnd()Landroid/graphics/PointF;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->end:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getStart()Landroid/graphics/PointF;
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->start:Landroid/graphics/PointF;

    return-object v0
.end method

.method public resolve(Landroid/graphics/Paint;)Landroid/graphics/Paint;
    .locals 8

    if-nez p1, :cond_0

    .line 62
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 64
    :cond_0
    new-instance v0, Landroid/graphics/LinearGradient;

    iget-object v1, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->start:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->start:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget-object v3, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->end:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->end:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    iget-object v5, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->colors:[I

    iget-object v6, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->positions:[F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    return-object p1
.end method

.method public setEnd(Landroid/graphics/PointF;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->end:Landroid/graphics/PointF;

    return-void
.end method

.method public setStart(Landroid/graphics/PointF;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lcom/metamoji/df/sprite/PaintLinearGradient;->start:Landroid/graphics/PointF;

    return-void
.end method
