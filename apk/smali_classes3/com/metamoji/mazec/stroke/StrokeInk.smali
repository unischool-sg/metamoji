.class public final Lcom/metamoji/mazec/stroke/StrokeInk;
.super Ljava/lang/Object;
.source "StrokeInk.java"


# instance fields
.field private mColors:[I

.field private mInkType:I


# direct methods
.method private constructor <init>(I[I)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mInkType:I

    .line 30
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    const/4 v0, 0x0

    .line 31
    array-length v1, p2

    invoke-static {p2, v0, p1, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public static strokeInkGradation(II)Lcom/metamoji/mazec/stroke/StrokeInk;
    .locals 2

    .line 21
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeInk;

    const/4 v1, 0x2

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/metamoji/mazec/stroke/StrokeInk;-><init>(I[I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 47
    :cond_0
    instance-of v1, p1, Lcom/metamoji/mazec/stroke/StrokeInk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 50
    :cond_1
    check-cast p1, Lcom/metamoji/mazec/stroke/StrokeInk;

    .line 51
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mInkType:I

    iget v3, p1, Lcom/metamoji/mazec/stroke/StrokeInk;->mInkType:I

    if-eq v1, v3, :cond_2

    return v2

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    array-length v3, v1

    iget-object v4, p1, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    array-length v4, v4

    if-eq v3, v4, :cond_3

    return v2

    .line 57
    :cond_3
    array-length v1, v1

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 58
    iget-object v4, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    aget v4, v4, v3

    iget-object v5, p1, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method getColors()[I
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    return-object v0
.end method

.method public getGradationEndColor()I
    .locals 3

    .line 107
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mInkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    array-length v2, v0

    if-ne v2, v1, :cond_0

    const/4 v1, 0x1

    .line 110
    aget v0, v0, v1

    return v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getGradationStartColor()I
    .locals 3

    .line 96
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mInkType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    array-length v2, v0

    if-ne v2, v1, :cond_0

    const/4 v1, 0x0

    .line 99
    aget v0, v0, v1

    return v0

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getType()I
    .locals 1

    .line 35
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mInkType:I

    return v0
.end method

.method public hashCode()I
    .locals 4

    const/16 v0, 0x20f

    .line 68
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mInkType:I

    add-int/2addr v0, v1

    .line 69
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    array-length v1, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    .line 70
    iget-object v3, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    aget v3, v3, v2

    add-int/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "inkType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mInkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    const-string v1, "colors"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeInk;->mColors:[I

    array-length v2, v1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_1

    aget v6, v1, v5

    if-nez v3, :cond_0

    .line 83
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    :cond_0
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move v3, v4

    goto :goto_0

    .line 88
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
