.class public Lcom/metamoji/df/sprite/DropShadow;
.super Ljava/lang/Object;
.source "DropShadow.java"


# instance fields
.field public alpha:F

.field public blur:F

.field public color:I

.field public x:F

.field public y:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40800000    # 4.0f

    .line 11
    iput v0, p0, Lcom/metamoji/df/sprite/DropShadow;->x:F

    .line 12
    iput v0, p0, Lcom/metamoji/df/sprite/DropShadow;->y:F

    .line 13
    iput v0, p0, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    const/high16 v0, -0x1000000

    .line 15
    iput v0, p0, Lcom/metamoji/df/sprite/DropShadow;->color:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 16
    iput v0, p0, Lcom/metamoji/df/sprite/DropShadow;->alpha:F

    return-void
.end method


# virtual methods
.method public clone()Lcom/metamoji/df/sprite/DropShadow;
    .locals 2

    .line 20
    new-instance v0, Lcom/metamoji/df/sprite/DropShadow;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/DropShadow;-><init>()V

    .line 21
    iget v1, p0, Lcom/metamoji/df/sprite/DropShadow;->x:F

    iput v1, v0, Lcom/metamoji/df/sprite/DropShadow;->x:F

    .line 22
    iget v1, p0, Lcom/metamoji/df/sprite/DropShadow;->y:F

    iput v1, v0, Lcom/metamoji/df/sprite/DropShadow;->y:F

    .line 23
    iget v1, p0, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    iput v1, v0, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    .line 24
    iget v1, p0, Lcom/metamoji/df/sprite/DropShadow;->color:I

    iput v1, v0, Lcom/metamoji/df/sprite/DropShadow;->color:I

    .line 25
    iget v1, p0, Lcom/metamoji/df/sprite/DropShadow;->alpha:F

    iput v1, v0, Lcom/metamoji/df/sprite/DropShadow;->alpha:F

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/metamoji/df/sprite/DropShadow;->clone()Lcom/metamoji/df/sprite/DropShadow;

    move-result-object v0

    return-object v0
.end method

.method public getARGB()I
    .locals 3

    .line 49
    iget v0, p0, Lcom/metamoji/df/sprite/DropShadow;->color:I

    const v1, 0xffffff

    and-int/2addr v0, v1

    iget v1, p0, Lcom/metamoji/df/sprite/DropShadow;->alpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method inflate(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 3

    if-eqz p1, :cond_0

    .line 35
    sget-object v0, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->withdraw()Landroid/graphics/RectF;

    move-result-object v0

    .line 36
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 37
    iget v1, p0, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    neg-float v2, v1

    neg-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 38
    iget v1, p0, Lcom/metamoji/df/sprite/DropShadow;->x:F

    iget v2, p0, Lcom/metamoji/df/sprite/DropShadow;->y:F

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 39
    invoke-virtual {p1, v0}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    .line 40
    sget-object v1, Lcom/metamoji/df/sprite/Geometry;->rectPool:Lcom/metamoji/df/sprite/Geometry$RectFPool;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Geometry$RectFPool;->deposit(Landroid/graphics/RectF;)V

    :cond_0
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "{DropShadow"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " x="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/DropShadow;->x:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " y="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/DropShadow;->y:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " blur="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/DropShadow;->blur:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " color=#"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/DropShadow;->color:I

    const v3, 0xffffff

    and-int/2addr v2, v3

    const/16 v3, 0x10

    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " alpha="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/metamoji/df/sprite/DropShadow;->alpha:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
