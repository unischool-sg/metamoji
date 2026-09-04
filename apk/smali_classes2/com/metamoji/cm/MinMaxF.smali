.class public Lcom/metamoji/cm/MinMaxF;
.super Ljava/lang/Object;
.source "MinMaxF.java"


# instance fields
.field private _max:F

.field private _min:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(FF)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/cm/MinMaxF;->set(FF)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/MinMaxF;)V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iget v0, p1, Lcom/metamoji/cm/MinMaxF;->_max:F

    iput v0, p0, Lcom/metamoji/cm/MinMaxF;->_max:F

    .line 35
    iget p1, p1, Lcom/metamoji/cm/MinMaxF;->_min:F

    iput p1, p0, Lcom/metamoji/cm/MinMaxF;->_min:F

    return-void
.end method

.method public static limitMax(FF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method public static limitMin(FF)F
    .locals 1

    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    return p0

    :cond_0
    return p1
.end method

.method private normalize()V
    .locals 3

    .line 42
    iget v0, p0, Lcom/metamoji/cm/MinMaxF;->_min:F

    iget v1, p0, Lcom/metamoji/cm/MinMaxF;->_max:F

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    .line 44
    iput v1, p0, Lcom/metamoji/cm/MinMaxF;->_min:F

    .line 45
    iput v0, p0, Lcom/metamoji/cm/MinMaxF;->_max:F

    :cond_0
    return-void
.end method


# virtual methods
.method public getMax()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/metamoji/cm/MinMaxF;->_max:F

    return v0
.end method

.method public getMin()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/cm/MinMaxF;->_min:F

    return v0
.end method

.method public limit(F)F
    .locals 2

    .line 100
    iget v0, p0, Lcom/metamoji/cm/MinMaxF;->_min:F

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    return v0

    .line 102
    :cond_0
    iget v0, p0, Lcom/metamoji/cm/MinMaxF;->_max:F

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    return v0

    :cond_1
    return p1
.end method

.method public set(FF)V
    .locals 0

    .line 71
    iput p2, p0, Lcom/metamoji/cm/MinMaxF;->_max:F

    .line 72
    iput p1, p0, Lcom/metamoji/cm/MinMaxF;->_min:F

    .line 73
    invoke-direct {p0}, Lcom/metamoji/cm/MinMaxF;->normalize()V

    return-void
.end method

.method public setMax(F)V
    .locals 0

    .line 90
    iput p1, p0, Lcom/metamoji/cm/MinMaxF;->_max:F

    .line 91
    invoke-direct {p0}, Lcom/metamoji/cm/MinMaxF;->normalize()V

    return-void
.end method

.method public setMin(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/metamoji/cm/MinMaxF;->_min:F

    .line 82
    invoke-direct {p0}, Lcom/metamoji/cm/MinMaxF;->normalize()V

    return-void
.end method
