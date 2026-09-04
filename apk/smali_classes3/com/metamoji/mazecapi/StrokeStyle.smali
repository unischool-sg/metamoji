.class public Lcom/metamoji/mazecapi/StrokeStyle;
.super Ljava/lang/Object;
.source "StrokeStyle.java"


# instance fields
.field private _calliAngle:F

.field private _calliPaintType:I

.field private _calliRate:F

.field private _fountainProps:Lcom/metamoji/mazecapi/StrokeFountainProperties;

.field private _ink:Lcom/metamoji/mazecapi/StrokeInk;

.field private _lineColor:I

.field private _lineDash:[F

.field private _lineWidthRatio:F

.field private _penType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineDash:[F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 123
    :cond_0
    instance-of v1, p1, Lcom/metamoji/mazecapi/StrokeStyle;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 125
    :cond_1
    check-cast p1, Lcom/metamoji/mazecapi/StrokeStyle;

    .line 127
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_penType:I

    iget v3, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_penType:I

    if-eq v1, v3, :cond_2

    return v2

    .line 130
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_ink:Lcom/metamoji/mazecapi/StrokeInk;

    iget-object v3, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_ink:Lcom/metamoji/mazecapi/StrokeInk;

    if-eq v1, v3, :cond_5

    if-eqz v1, :cond_4

    if-nez v3, :cond_3

    goto :goto_0

    .line 133
    :cond_3
    invoke-virtual {v1, v3}, Lcom/metamoji/mazecapi/StrokeInk;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    :goto_0
    return v2

    .line 136
    :cond_5
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineColor:I

    iget v3, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_lineColor:I

    if-eq v1, v3, :cond_6

    return v2

    .line 138
    :cond_6
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineWidthRatio:F

    iget v3, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_lineWidthRatio:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_7

    return v2

    .line 140
    :cond_7
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineDash:[F

    iget-object v3, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_lineDash:[F

    if-eq v1, v3, :cond_c

    if-eqz v1, :cond_b

    if-nez v3, :cond_8

    goto :goto_2

    .line 143
    :cond_8
    array-length v1, v1

    .line 144
    array-length v3, v3

    if-eq v1, v3, :cond_9

    return v2

    :cond_9
    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_c

    .line 147
    iget-object v4, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineDash:[F

    aget v4, v4, v3

    iget-object v5, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_lineDash:[F

    aget v5, v5, v3

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_a

    return v2

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_b
    :goto_2
    return v2

    .line 152
    :cond_c
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_penType:I

    const/4 v3, 0x3

    if-ne v1, v3, :cond_f

    .line 153
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliAngle:F

    iget v3, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_calliAngle:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_d

    return v2

    .line 155
    :cond_d
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliRate:F

    iget v3, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_calliRate:F

    cmpl-float v1, v1, v3

    if-eqz v1, :cond_e

    return v2

    .line 157
    :cond_e
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliPaintType:I

    iget v3, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_calliPaintType:I

    if-eq v1, v3, :cond_f

    return v2

    .line 160
    :cond_f
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecapi/StrokeFountainProperties;

    iget-object p1, p1, Lcom/metamoji/mazecapi/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecapi/StrokeFountainProperties;

    if-eq v1, p1, :cond_12

    if-eqz v1, :cond_11

    if-nez p1, :cond_10

    goto :goto_3

    .line 162
    :cond_10
    invoke-virtual {v1, p1}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_12

    :cond_11
    :goto_3
    return v2

    :cond_12
    return v0
.end method

.method public getCalliAngle()F
    .locals 1

    .line 90
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliAngle:F

    return v0
.end method

.method public getCalliPaintType()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliPaintType:I

    return v0
.end method

.method public getCalliRate()F
    .locals 1

    .line 98
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliRate:F

    return v0
.end method

.method public getFountainProperties()Lcom/metamoji/mazecapi/StrokeFountainProperties;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecapi/StrokeFountainProperties;

    return-object v0
.end method

.method public getInk()Lcom/metamoji/mazecapi/StrokeInk;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_ink:Lcom/metamoji/mazecapi/StrokeInk;

    return-object v0
.end method

.method public getLineColor()I
    .locals 1

    .line 57
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineColor:I

    return v0
.end method

.method public getLineDash()[F
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineDash:[F

    return-object v0
.end method

.method public getLineWidthRatio()F
    .locals 1

    .line 65
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineWidthRatio:F

    return v0
.end method

.method public getPenType()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_penType:I

    return v0
.end method

.method public hashCode()I
    .locals 8

    .line 171
    iget v0, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_penType:I

    .line 173
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_ink:Lcom/metamoji/mazecapi/StrokeInk;

    if-eqz v1, :cond_0

    .line 174
    invoke-virtual {v1}, Lcom/metamoji/mazecapi/StrokeInk;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 177
    :cond_0
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineColor:I

    xor-int/2addr v0, v1

    .line 179
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineWidthRatio:F

    float-to-double v1, v1

    const-wide/16 v3, 0x0

    add-double/2addr v3, v1

    .line 181
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineDash:[F

    if-eqz v1, :cond_1

    .line 182
    array-length v2, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget v6, v1, v5

    float-to-double v6, v6

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 187
    :cond_1
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_penType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 188
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliAngle:F

    float-to-double v1, v1

    add-double/2addr v3, v1

    .line 189
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliRate:F

    float-to-double v1, v1

    add-double/2addr v3, v1

    .line 191
    iget v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliPaintType:I

    xor-int/2addr v0, v1

    .line 193
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecapi/StrokeFountainProperties;

    if-eqz v1, :cond_3

    .line 194
    invoke-virtual {v1}, Lcom/metamoji/mazecapi/StrokeFountainProperties;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    .line 196
    :cond_3
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Double;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public setCalliAngle(F)V
    .locals 0

    .line 93
    iput p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliAngle:F

    return-void
.end method

.method public setCalliPaintType(I)V
    .locals 0

    .line 109
    iput p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliPaintType:I

    return-void
.end method

.method public setCalliRate(F)V
    .locals 0

    .line 101
    iput p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_calliRate:F

    return-void
.end method

.method public setFountainProperties(Lcom/metamoji/mazecapi/StrokeFountainProperties;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_fountainProps:Lcom/metamoji/mazecapi/StrokeFountainProperties;

    return-void
.end method

.method public setInk(Lcom/metamoji/mazecapi/StrokeInk;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_ink:Lcom/metamoji/mazecapi/StrokeInk;

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineColor:I

    return-void
.end method

.method public setLineDash([F)V
    .locals 0

    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F

    .line 84
    :cond_0
    iput-object p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineDash:[F

    return-void
.end method

.method public setLineWidthRatio(F)V
    .locals 0

    .line 68
    iput p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_lineWidthRatio:F

    return-void
.end method

.method public setPenType(I)V
    .locals 0

    .line 44
    iput p1, p0, Lcom/metamoji/mazecapi/StrokeStyle;->_penType:I

    return-void
.end method
