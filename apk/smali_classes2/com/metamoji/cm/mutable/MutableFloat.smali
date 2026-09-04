.class public Lcom/metamoji/cm/mutable/MutableFloat;
.super Ljava/lang/Object;
.source "MutableFloat.java"


# instance fields
.field private value:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/metamoji/cm/mutable/MutableFloat;-><init>(F)V

    return-void
.end method

.method public constructor <init>(F)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/metamoji/cm/mutable/MutableFloat;->value:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 49
    instance-of v0, p1, Lcom/metamoji/cm/mutable/MutableFloat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    iget v0, p0, Lcom/metamoji/cm/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    check-cast p1, Lcom/metamoji/cm/mutable/MutableFloat;

    iget p1, p1, Lcom/metamoji/cm/mutable/MutableFloat;->value:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getValue()F
    .locals 1

    .line 33
    iget v0, p0, Lcom/metamoji/cm/mutable/MutableFloat;->value:F

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/metamoji/cm/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    return v0
.end method

.method public setValue(F)V
    .locals 0

    .line 41
    iput p1, p0, Lcom/metamoji/cm/mutable/MutableFloat;->value:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget v0, p0, Lcom/metamoji/cm/mutable/MutableFloat;->value:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
