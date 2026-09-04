.class public Lcom/metamoji/cm/mutable/MutableChar;
.super Ljava/lang/Object;
.source "MutableChar.java"


# instance fields
.field private value:C


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/metamoji/cm/mutable/MutableChar;-><init>(C)V

    return-void
.end method

.method public constructor <init>(C)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-char p1, p0, Lcom/metamoji/cm/mutable/MutableChar;->value:C

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 49
    instance-of v0, p1, Lcom/metamoji/cm/mutable/MutableChar;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    iget-char v0, p0, Lcom/metamoji/cm/mutable/MutableChar;->value:C

    check-cast p1, Lcom/metamoji/cm/mutable/MutableChar;

    iget-char p1, p1, Lcom/metamoji/cm/mutable/MutableChar;->value:C

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getValue()C
    .locals 1

    .line 33
    iget-char v0, p0, Lcom/metamoji/cm/mutable/MutableChar;->value:C

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget-char v0, p0, Lcom/metamoji/cm/mutable/MutableChar;->value:C

    return v0
.end method

.method public setValue(C)V
    .locals 0

    .line 41
    iput-char p1, p0, Lcom/metamoji/cm/mutable/MutableChar;->value:C

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-char v0, p0, Lcom/metamoji/cm/mutable/MutableChar;->value:C

    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
