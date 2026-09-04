.class public Lcom/metamoji/mazecapi/StrokeInk;
.super Ljava/lang/Object;
.source "StrokeInk.java"


# static fields
.field public static final TYPE_CUBIC2SURFACE:I = 0x3

.field public static final TYPE_GRADIATION:I = 0x2

.field public static final TYPE_PLAIN:I = 0x1


# instance fields
.field private _colors:[I

.field private _inkType:I


# direct methods
.method public constructor <init>(I[I)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput p1, p0, Lcom/metamoji/mazecapi/StrokeInk;->_inkType:I

    .line 26
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/metamoji/mazecapi/StrokeInk;->_colors:[I

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 49
    :cond_0
    instance-of v1, p1, Lcom/metamoji/mazecapi/StrokeInk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 51
    :cond_1
    check-cast p1, Lcom/metamoji/mazecapi/StrokeInk;

    .line 53
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeInk;->_inkType:I

    iget v3, p1, Lcom/metamoji/mazecapi/StrokeInk;->_inkType:I

    if-eq v1, v3, :cond_2

    return v2

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokeInk;->_colors:[I

    array-length v1, v1

    .line 58
    iget-object v3, p1, Lcom/metamoji/mazecapi/StrokeInk;->_colors:[I

    array-length v3, v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 63
    iget-object v4, p0, Lcom/metamoji/mazecapi/StrokeInk;->_colors:[I

    aget v4, v4, v3

    iget-object v5, p1, Lcom/metamoji/mazecapi/StrokeInk;->_colors:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getColors()[I
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokeInk;->_colors:[I

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 34
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeInk;->_inkType:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 73
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeInk;->_inkType:I

    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokeInk;->_colors:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method
