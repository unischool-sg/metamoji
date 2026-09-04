.class public Lcom/metamoji/cm/Size;
.super Ljava/lang/Object;
.source "Size.java"


# instance fields
.field public height:I

.field public width:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/metamoji/cm/Size;->width:I

    .line 16
    iput v0, p0, Lcom/metamoji/cm/Size;->height:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput p1, p0, Lcom/metamoji/cm/Size;->width:I

    .line 21
    iput p2, p0, Lcom/metamoji/cm/Size;->height:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/Size;)V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iget v0, p1, Lcom/metamoji/cm/Size;->width:I

    iput v0, p0, Lcom/metamoji/cm/Size;->width:I

    .line 26
    iget p1, p1, Lcom/metamoji/cm/Size;->height:I

    iput p1, p0, Lcom/metamoji/cm/Size;->height:I

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

    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 34
    :cond_1
    check-cast p1, Lcom/metamoji/cm/Size;

    .line 36
    iget v2, p0, Lcom/metamoji/cm/Size;->height:I

    iget v3, p1, Lcom/metamoji/cm/Size;->height:I

    if-eq v2, v3, :cond_2

    return v1

    .line 37
    :cond_2
    iget v2, p0, Lcom/metamoji/cm/Size;->width:I

    iget p1, p1, Lcom/metamoji/cm/Size;->width:I

    if-eq v2, p1, :cond_3

    return v1

    :cond_3
    return v0

    :cond_4
    :goto_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    .line 44
    iget v0, p0, Lcom/metamoji/cm/Size;->width:I

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget v1, p0, Lcom/metamoji/cm/Size;->height:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Size{width="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/metamoji/cm/Size;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", height="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/metamoji/cm/Size;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
