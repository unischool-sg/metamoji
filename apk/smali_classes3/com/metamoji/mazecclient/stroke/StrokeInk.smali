.class public Lcom/metamoji/mazecclient/stroke/StrokeInk;
.super Ljava/lang/Object;
.source "StrokeInk.java"

# interfaces
.implements Lcom/metamoji/mazecclient/stroke/IStrokeInk;


# instance fields
.field _colors:[I

.field _inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;


# direct methods
.method public constructor <init>(Lcom/metamoji/cm/DataArchiver;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->NONE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    .line 107
    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/stroke/StrokeInk;->serialize(Lcom/metamoji/cm/DataArchiver;)I

    return-void
.end method

.method protected constructor <init>(Lcom/metamoji/mazecclient/stroke/StrokeInkType;[I)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    .line 43
    invoke-virtual {p2}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    return-void
.end method

.method public static strokeInkCubic2Surface(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;
    .locals 2

    .line 29
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeInk;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->CUBIC2SURFACE:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/metamoji/mazecclient/stroke/StrokeInk;-><init>(Lcom/metamoji/mazecclient/stroke/StrokeInkType;[I)V

    return-object v0
.end method

.method public static strokeInkGradation(II)Lcom/metamoji/mazecclient/stroke/IStrokeInk;
    .locals 2

    .line 22
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeInk;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->GRADIATION:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    filled-new-array {p0, p1}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/metamoji/mazecclient/stroke/StrokeInk;-><init>(Lcom/metamoji/mazecclient/stroke/StrokeInkType;[I)V

    return-object v0
.end method

.method public static strokeInkPlain(I)Lcom/metamoji/mazecclient/stroke/IStrokeInk;
    .locals 2

    .line 15
    new-instance v0, Lcom/metamoji/mazecclient/stroke/StrokeInk;

    sget-object v1, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->PLAIN:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lcom/metamoji/mazecclient/stroke/StrokeInk;-><init>(Lcom/metamoji/mazecclient/stroke/StrokeInkType;[I)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 175
    :cond_0
    instance-of v1, p1, Lcom/metamoji/mazecclient/stroke/StrokeInk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 178
    :cond_1
    check-cast p1, Lcom/metamoji/mazecclient/stroke/StrokeInk;

    .line 180
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    iget-object v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    if-eq v1, v3, :cond_2

    return v2

    .line 183
    :cond_2
    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    array-length v1, v1

    .line 184
    iget-object v3, p1, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    array-length v3, v3

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 188
    iget-object v4, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    aget v4, v4, v3

    iget-object v5, p1, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    aget v5, v5, v3

    if-eq v4, v5, :cond_4

    return v2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v0
.end method

.method public getColor()I
    .locals 2

    .line 53
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getColorAt(I)I
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    aget p1, v0, p1

    return p1
.end method

.method public getColors()[I
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    return-object v0
.end method

.method public getCountOfColor()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    array-length v0, v0

    return v0
.end method

.method public getCubic2SurfaceMainColor()I
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getCubic2SurfaceSubColor()I
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getGradationEndColor()I
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public getGradationStartColor()I
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getMainColor()I
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public getType()Lcom/metamoji/mazecclient/stroke/StrokeInkType;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->hashCode()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    .line 199
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public serialize(Lcom/metamoji/cm/DataArchiver;)I
    .locals 12

    .line 118
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 121
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataToTemporary()Z

    .line 122
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    invoke-virtual {v0}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->getInt16Value()S

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    .line 123
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    array-length v0, v0

    int-to-short v0, v0

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    .line 124
    iget-object v0, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_0

    aget v4, v0, v2

    .line 125
    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    invoke-virtual {p1, v5}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 126
    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    invoke-virtual {p1, v5}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 127
    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v1

    invoke-virtual {p1, v5}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    .line 128
    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v1

    invoke-virtual {p1, v4}, Lcom/metamoji/cm/DataArchiver;->writeFloat32(F)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 131
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->switchDataBackToMain()Ljava/io/ByteArrayOutputStream;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-short v2, v1

    .line 134
    invoke-virtual {p1, v2}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v2

    add-int/2addr v1, v2

    .line 136
    invoke-virtual {p1, v0}, Lcom/metamoji/cm/DataArchiver;->appendData(Ljava/io/ByteArrayOutputStream;)I

    return v1

    .line 139
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    if-nez v0, :cond_2

    return v2

    .line 145
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->getReadPointer()I

    move-result v3

    .line 146
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v4

    invoke-static {v4}, Lcom/metamoji/mazecclient/stroke/StrokeInkType;->valueOf(S)Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    move-result-object v4

    iput-object v4, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_inkType:Lcom/metamoji/mazecclient/stroke/StrokeInkType;

    .line 147
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v4

    if-lez v4, :cond_4

    .line 149
    new-array v5, v4, [I

    move v6, v2

    :goto_1
    if-ge v6, v4, :cond_3

    .line 151
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v7

    mul-float/2addr v7, v1

    float-to-int v7, v7

    const/16 v8, 0xff

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 152
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v9

    mul-float/2addr v9, v1

    float-to-int v9, v9

    invoke-static {v9, v8}, Ljava/lang/Math;->min(II)I

    move-result v9

    invoke-static {v2, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 153
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v10

    mul-float/2addr v10, v1

    float-to-int v10, v10

    invoke-static {v10, v8}, Ljava/lang/Math;->min(II)I

    move-result v10

    invoke-static {v2, v10}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 154
    invoke-virtual {p1}, Lcom/metamoji/cm/DataArchiver;->readFloat32()F

    move-result v11

    mul-float/2addr v11, v1

    float-to-int v11, v11

    invoke-static {v11, v8}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 156
    invoke-static {v8, v7, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    .line 157
    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 159
    :cond_3
    iput-object v5, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    .line 161
    iput-object v1, p0, Lcom/metamoji/mazecclient/stroke/StrokeInk;->_colors:[I

    :goto_2
    add-int/2addr v3, v0

    .line 164
    invoke-virtual {p1, v3}, Lcom/metamoji/cm/DataArchiver;->setReadPointer(I)V

    return v2
.end method
