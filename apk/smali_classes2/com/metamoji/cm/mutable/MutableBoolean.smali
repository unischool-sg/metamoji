.class public Lcom/metamoji/cm/mutable/MutableBoolean;
.super Ljava/lang/Object;
.source "MutableBoolean.java"


# instance fields
.field private value:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 17
    invoke-direct {p0, v0}, Lcom/metamoji/cm/mutable/MutableBoolean;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-boolean p1, p0, Lcom/metamoji/cm/mutable/MutableBoolean;->value:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 49
    instance-of v0, p1, Lcom/metamoji/cm/mutable/MutableBoolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 50
    iget-boolean v0, p0, Lcom/metamoji/cm/mutable/MutableBoolean;->value:Z

    check-cast p1, Lcom/metamoji/cm/mutable/MutableBoolean;

    iget-boolean p1, p1, Lcom/metamoji/cm/mutable/MutableBoolean;->value:Z

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public getValue()Z
    .locals 1

    .line 33
    iget-boolean v0, p0, Lcom/metamoji/cm/mutable/MutableBoolean;->value:Z

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/metamoji/cm/mutable/MutableBoolean;->value:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    return v0

    :cond_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method public setValue(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/metamoji/cm/mutable/MutableBoolean;->value:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/metamoji/cm/mutable/MutableBoolean;->value:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
