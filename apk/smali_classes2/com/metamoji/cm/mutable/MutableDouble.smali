.class public Lcom/metamoji/cm/mutable/MutableDouble;
.super Ljava/lang/Object;
.source "MutableDouble.java"


# instance fields
.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 17
    invoke-direct {p0, v0, v1}, Lcom/metamoji/cm/mutable/MutableDouble;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-wide p1, p0, Lcom/metamoji/cm/mutable/MutableDouble;->value:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 49
    instance-of v0, p1, Lcom/metamoji/cm/mutable/MutableDouble;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    iget-wide v2, p0, Lcom/metamoji/cm/mutable/MutableDouble;->value:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    check-cast p1, Lcom/metamoji/cm/mutable/MutableDouble;

    iget-wide v4, p1, Lcom/metamoji/cm/mutable/MutableDouble;->value:D

    invoke-static {v4, v5}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getValue()D
    .locals 2

    .line 33
    iget-wide v0, p0, Lcom/metamoji/cm/mutable/MutableDouble;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 4

    .line 61
    iget-wide v0, p0, Lcom/metamoji/cm/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public setValue(D)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcom/metamoji/cm/mutable/MutableDouble;->value:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 70
    iget-wide v0, p0, Lcom/metamoji/cm/mutable/MutableDouble;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
