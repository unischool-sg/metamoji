.class public Lcom/metamoji/cm/mutable/MutableByte;
.super Ljava/lang/Object;
.source "MutableByte.java"


# instance fields
.field private value:B


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/metamoji/cm/mutable/MutableByte;-><init>(B)V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-byte p1, p0, Lcom/metamoji/cm/mutable/MutableByte;->value:B

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 49
    instance-of v0, p1, Lcom/metamoji/cm/mutable/MutableByte;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    iget-byte v0, p0, Lcom/metamoji/cm/mutable/MutableByte;->value:B

    check-cast p1, Lcom/metamoji/cm/mutable/MutableByte;

    iget-byte p1, p1, Lcom/metamoji/cm/mutable/MutableByte;->value:B

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getValue()B
    .locals 1

    .line 33
    iget-byte v0, p0, Lcom/metamoji/cm/mutable/MutableByte;->value:B

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget-byte v0, p0, Lcom/metamoji/cm/mutable/MutableByte;->value:B

    return v0
.end method

.method public setValue(B)V
    .locals 0

    .line 41
    iput-byte p1, p0, Lcom/metamoji/cm/mutable/MutableByte;->value:B

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-byte v0, p0, Lcom/metamoji/cm/mutable/MutableByte;->value:B

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
