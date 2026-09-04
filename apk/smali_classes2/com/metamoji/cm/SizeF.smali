.class public Lcom/metamoji/cm/SizeF;
.super Ljava/lang/Object;
.source "SizeF.java"


# instance fields
.field public height:F

.field public width:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 15
    iput v0, p0, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput p1, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 20
    iput p2, p0, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method

.method public constructor <init>(Landroid/util/SizeF;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-virtual {p1}, Landroid/util/SizeF;->getWidth()F

    move-result v0

    iput v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 35
    invoke-virtual {p1}, Landroid/util/SizeF;->getHeight()F

    move-result p1

    iput p1, p0, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/Size;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iget v0, p1, Lcom/metamoji/cm/Size;->width:I

    int-to-float v0, v0

    iput v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 30
    iget p1, p1, Lcom/metamoji/cm/Size;->height:I

    int-to-float p1, p1

    iput p1, p0, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    iput v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 25
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    iput p1, p0, Lcom/metamoji/cm/SizeF;->height:F

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

    if-eqz p1, :cond_4

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 43
    :cond_1
    check-cast p1, Lcom/metamoji/cm/SizeF;

    .line 45
    iget v2, p1, Lcom/metamoji/cm/SizeF;->height:F

    iget v3, p0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-static {v2, v3}, Ljava/lang/Float;->compare(FF)I

    move-result v2

    if-eqz v2, :cond_2

    return v1

    .line 46
    :cond_2
    iget p1, p1, Lcom/metamoji/cm/SizeF;->width:F

    iget v2, p0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-static {p1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result p1

    if-eqz p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 53
    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 54
    iget v2, p0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    :cond_1
    add-int/2addr v0, v3

    return v0
.end method

.method public isEmpty()Z
    .locals 2

    .line 77
    iget v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/cm/SizeF;->height:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public set(FF)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 73
    iput p2, p0, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method

.method public set(Lcom/metamoji/cm/SizeF;)V
    .locals 1

    .line 67
    iget v0, p1, Lcom/metamoji/cm/SizeF;->width:F

    iput v0, p0, Lcom/metamoji/cm/SizeF;->width:F

    .line 68
    iget p1, p1, Lcom/metamoji/cm/SizeF;->height:F

    iput p1, p0, Lcom/metamoji/cm/SizeF;->height:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SizeF{width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
