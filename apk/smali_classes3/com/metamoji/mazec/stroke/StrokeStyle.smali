.class public Lcom/metamoji/mazec/stroke/StrokeStyle;
.super Ljava/lang/Object;
.source "StrokeStyle.java"


# static fields
.field public static final DEFAULT_LINE_WIDTH_RATIO:F = 0.4f

.field private static final STANDARD_HEIGHT:D = 12.0


# instance fields
.field protected mCalliAngle:D

.field protected mCalliPaintType:I

.field protected mCalliRate:D

.field protected mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

.field protected mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

.field protected mLineColor:I

.field protected mLineDash:[D

.field protected mLineWidthRatio:D

.field protected mLineWidthType:I

.field protected mPenType:I


# direct methods
.method constructor <init>()V
    .locals 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 203
    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    const/high16 v0, -0x1000000

    .line 204
    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    const/4 v0, 0x0

    .line 205
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    const-wide v1, 0x3fd99999a0000000L    # 0.4000000059604645

    .line 206
    iput-wide v1, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    .line 207
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    .line 208
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    return-void
.end method

.method constructor <init>(Lcom/metamoji/mazec/stroke/StrokeStyle;)V
    .locals 4

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    .line 214
    iget v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    .line 215
    iget-object v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    .line 216
    iget v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    .line 217
    iget-wide v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    iput-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    .line 218
    iget-object v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    if-eqz v0, :cond_0

    .line 219
    array-length v0, v0

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    .line 220
    iget-object v1, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    array-length v2, v1

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    :cond_0
    iget v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthType:I

    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthType:I

    .line 223
    iget-wide v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliAngle:D

    iput-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliAngle:D

    .line 224
    iget-wide v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliRate:D

    iput-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliRate:D

    .line 225
    iget v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliPaintType:I

    iput v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliPaintType:I

    .line 226
    iget-object p1, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    iput-object p1, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    return-void
.end method

.method public static calligraphyStyle(IDDIDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 2

    .line 59
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;-><init>()V

    const/4 v1, 0x3

    .line 60
    iput v1, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    .line 61
    iput p0, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliPaintType:I

    .line 62
    iput-wide p1, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliAngle:D

    .line 63
    iput-wide p3, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliRate:D

    .line 64
    iput p5, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    .line 65
    iput-wide p6, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    .line 66
    iput-object p8, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    return-object v0
.end method

.method public static fountainStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 2

    .line 84
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;-><init>()V

    const/4 v1, 0x4

    .line 85
    iput v1, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    .line 86
    iput p0, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    .line 87
    iput-wide p1, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    .line 88
    iput-object p3, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    .line 89
    iput-object p4, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    return-object v0
.end method

.method public static fountainStyleMedium(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 39

    .line 459
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    const-wide v35, 0x3fc999999999999aL    # 0.2

    const-wide v37, 0x4041800000000000L    # 35.0

    const-wide v1, 0x3fd51eb851eb851fL    # 0.33

    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    const-wide v5, 0x3fc999999999999aL    # 0.2

    const-wide v7, 0x4041800000000000L    # 35.0

    const-wide v9, 0x3feccccccccccccdL    # 0.9

    const-wide v11, 0x3fc999999999999aL    # 0.2

    const-wide v13, 0x4041800000000000L    # 35.0

    const-wide v15, 0x3ff3333333333333L    # 1.2

    const-wide v17, 0x3fc999999999999aL    # 0.2

    const-wide v19, 0x4041800000000000L    # 35.0

    const-wide v21, 0x3ff3333333333333L    # 1.2

    const-wide v23, 0x3fc999999999999aL    # 0.2

    const-wide v25, 0x4041800000000000L    # 35.0

    const-wide v27, 0x3feccccccccccccdL    # 0.9

    const-wide v29, 0x3fc999999999999aL    # 0.2

    const-wide v31, 0x4041800000000000L    # 35.0

    const-wide v33, 0x3feccccccccccccdL    # 0.9

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    .line 463
    invoke-static/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getColorFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result v1

    move-object/from16 v2, p0

    iget v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    float-to-double v3, v3

    .line 465
    invoke-static {v2}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInkFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v2

    .line 462
    invoke-static {v1, v3, v4, v2, v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->fountainStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    return-object v0
.end method

.method public static fountainStyleMouhitsu(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 39

    .line 471
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    const-wide v35, 0x3fc999999999999aL    # 0.2

    const-wide v37, 0x4041800000000000L    # 35.0

    const-wide v1, 0x3fd51eb851eb851fL    # 0.33

    const-wide v3, 0x3ffccccccccccccdL    # 1.8

    const-wide v5, 0x3fc999999999999aL    # 0.2

    const-wide v7, 0x4041800000000000L    # 35.0

    const-wide/high16 v9, 0x3ff8000000000000L    # 1.5

    const-wide v11, 0x3fc999999999999aL    # 0.2

    const-wide v13, 0x4041800000000000L    # 35.0

    const-wide v15, 0x3ff3333333333333L    # 1.2

    const-wide v17, 0x3fc999999999999aL    # 0.2

    const-wide v19, 0x4041800000000000L    # 35.0

    const-wide v21, 0x3ff3333333333333L    # 1.2

    const-wide v23, 0x3fc999999999999aL    # 0.2

    const-wide v25, 0x4041800000000000L    # 35.0

    const-wide v27, 0x3fe3333333333333L    # 0.6

    const-wide v29, 0x3fc999999999999aL    # 0.2

    const-wide v31, 0x4041800000000000L    # 35.0

    const-wide v33, 0x3fe3333333333333L    # 0.6

    invoke-direct/range {v0 .. v38}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;-><init>(DDDDDDDDDDDDDDDDDDD)V

    .line 475
    invoke-static/range {p0 .. p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getColorFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result v1

    move-object/from16 v2, p0

    iget v3, v2, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    float-to-double v3, v3

    .line 477
    invoke-static {v2}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInkFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v2

    .line 474
    invoke-static {v1, v3, v4, v2, v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->fountainStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object v0

    return-object v0
.end method

.method public static getColorFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)I
    .locals 3

    const/high16 v0, 0x437f0000    # 255.0f

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineAlpha()F

    move-result v1

    mul-float/2addr v1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v1, v0

    float-to-long v0, v1

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getLineColor()I

    move-result p0

    const/16 v2, 0x18

    shl-long/2addr v0, v2

    long-to-int v0, v0

    const v1, 0xffffff

    and-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public static getInkFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeInk;
    .locals 3

    .line 156
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkColors()Ljava/util/List;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getInkType()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    return-object v1

    .line 161
    :cond_0
    const-string/jumbo v2, "standard"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    .line 164
    :cond_1
    const-string v2, "gradation"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    .line 165
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {p0, v0}, Lcom/metamoji/mazec/stroke/StrokeInk;->strokeInkGradation(II)Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v1
.end method

.method public static sevenNotes1ageStrokeStyle(II)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 2

    .line 99
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;-><init>()V

    const/4 v1, 0x1

    .line 100
    iput v1, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    .line 101
    iput p0, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    .line 102
    iput p1, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthType:I

    return-object v0
.end method

.method public static standartStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 2

    .line 32
    new-instance v0, Lcom/metamoji/mazec/stroke/StrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazec/stroke/StrokeStyle;-><init>()V

    const/4 v1, 0x2

    .line 33
    iput v1, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    .line 34
    iput p0, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    .line 35
    iput-wide p1, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    .line 36
    iput-object p3, v0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    return-object v0
.end method

.method public static strokeStyleFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 10

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/nt/share/NtPenStyle;->getType()Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "calligraphy"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penAngle:F

    float-to-double v2, v0

    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->penRate:F

    float-to-double v4, v0

    .line 118
    invoke-static {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getColorFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result v6

    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    float-to-double v7, v0

    .line 120
    invoke-static {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInkFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v9

    const/4 v1, 0x0

    .line 114
    invoke-static/range {v1 .. v9}, Lcom/metamoji/mazec/stroke/StrokeStyle;->calligraphyStyle(IDDIDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p0

    return-object p0

    .line 124
    :cond_0
    const-string v1, "fountainpen"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget v0, p0, Lcom/metamoji/nt/share/NtPenStyle;->trans:F

    float-to-double v0, v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 127
    const-string v0, "Mazec"

    const-string v1, "NtPenStyle fountain properties is invalid."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->fountainStyleMedium(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p0

    return-object p0

    .line 131
    :cond_1
    invoke-static {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getColorFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result v0

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    float-to-double v1, v1

    .line 133
    invoke-static {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInkFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object v3

    .line 134
    invoke-static {p0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->fountainPropertiesFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    move-result-object p0

    .line 130
    invoke-static {v0, v1, v2, v3, p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->fountainStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;Lcom/metamoji/mazec/stroke/StrokeFountainProperties;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p0

    return-object p0

    .line 142
    :cond_2
    invoke-static {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getColorFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)I

    move-result v0

    iget v1, p0, Lcom/metamoji/nt/share/NtPenStyle;->lineWidth:F

    float-to-double v1, v1

    .line 144
    invoke-static {p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->getInkFromPenStyle(Lcom/metamoji/nt/share/NtPenStyle;)Lcom/metamoji/mazec/stroke/StrokeInk;

    move-result-object p0

    .line 141
    invoke-static {v0, v1, v2, p0}, Lcom/metamoji/mazec/stroke/StrokeStyle;->standartStyle(IDLcom/metamoji/mazec/stroke/StrokeInk;)Lcom/metamoji/mazec/stroke/StrokeStyle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public cloneImmutable()Lcom/metamoji/mazec/stroke/StrokeStyle;
    .locals 0

    return-object p0
.end method

.method public cloneMutable()Lcom/metamoji/mazec/stroke/MutableStrokeStyle;
    .locals 1

    .line 243
    new-instance v0, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/stroke/MutableStrokeStyle;-><init>(Lcom/metamoji/mazec/stroke/StrokeStyle;)V

    return-object v0
.end method

.method public equals(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z
    .locals 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 317
    :cond_1
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    iget v3, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    if-eq v2, v3, :cond_2

    return v1

    .line 321
    :cond_2
    iget v3, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    iget v4, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    if-ne v2, v0, :cond_4

    .line 325
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthType:I

    iget p1, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthType:I

    if-eq v2, p1, :cond_13

    return v1

    .line 329
    :cond_4
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    if-nez v2, :cond_5

    .line 330
    iget-object v2, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    if-eqz v2, :cond_7

    return v1

    .line 333
    :cond_5
    iget-object v3, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    if-nez v3, :cond_6

    return v1

    .line 335
    :cond_6
    invoke-virtual {v2, v3}, Lcom/metamoji/mazec/stroke/StrokeInk;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    return v1

    .line 340
    :cond_7
    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_8

    return v1

    .line 344
    :cond_8
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    if-nez v2, :cond_9

    .line 345
    iget-object v2, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    if-eqz v2, :cond_d

    return v1

    .line 348
    :cond_9
    iget-object v3, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    if-nez v3, :cond_a

    return v1

    .line 351
    :cond_a
    array-length v2, v2

    .line 352
    array-length v3, v3

    if-eq v2, v3, :cond_b

    return v1

    :cond_b
    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_d

    .line 357
    iget-object v4, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    aget-wide v4, v4, v3

    iget-object v6, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    aget-wide v6, v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-eqz v4, :cond_c

    return v1

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 364
    :cond_d
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_10

    .line 365
    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliAngle:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliAngle:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_e

    return v1

    .line 370
    :cond_e
    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliRate:D

    iget-wide v4, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliRate:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v2

    if-eqz v2, :cond_f

    return v1

    .line 374
    :cond_f
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliPaintType:I

    iget v3, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliPaintType:I

    if-eq v2, v3, :cond_10

    return v1

    .line 379
    :cond_10
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    iget-object p1, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    if-eq v2, p1, :cond_13

    if-eqz v2, :cond_12

    if-nez p1, :cond_11

    goto :goto_1

    .line 383
    :cond_11
    invoke-virtual {v2, p1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_13

    :cond_12
    :goto_1
    return v1

    :cond_13
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 304
    instance-of v0, p1, Lcom/metamoji/mazec/stroke/StrokeStyle;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 307
    :cond_0
    check-cast p1, Lcom/metamoji/mazec/stroke/StrokeStyle;

    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/stroke/StrokeStyle;->equals(Lcom/metamoji/mazec/stroke/StrokeStyle;)Z

    move-result p1

    return p1
.end method

.method public getCalliAngle()D
    .locals 2

    .line 281
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliAngle:D

    return-wide v0
.end method

.method public getCalliPaintType()I
    .locals 1

    .line 291
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliPaintType:I

    return v0
.end method

.method public getCalliRate()D
    .locals 2

    .line 286
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliRate:D

    return-wide v0
.end method

.method public getFountainProperties()Lcom/metamoji/mazec/stroke/StrokeFountainProperties;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    return-object v0
.end method

.method public getInk()Lcom/metamoji/mazec/stroke/StrokeInk;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    return-object v0
.end method

.method public getLineColor()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    return v0
.end method

.method public getLineDash()[D
    .locals 1

    .line 272
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 275
    :cond_0
    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getLineWidthForHeight(D)D
    .locals 2

    .line 267
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    mul-double/2addr p1, v0

    const-wide/high16 v0, 0x4028000000000000L    # 12.0

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public getLineWidthRatio()D
    .locals 2

    .line 262
    iget-wide v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    return-wide v0
.end method

.method public getLineWidthType()I
    .locals 1

    .line 295
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthType:I

    return v0
.end method

.method public getPenType()I
    .locals 1

    .line 247
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    return v0
.end method

.method public hashCode()I
    .locals 6

    .line 393
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    const/16 v1, 0x20f

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 395
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    add-int/2addr v1, v2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    mul-int/lit8 v1, v1, 0x1f

    .line 397
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthType:I

    :goto_0
    add-int/2addr v1, v0

    return v1

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    if-eqz v0, :cond_1

    mul-int/lit8 v1, v1, 0x1f

    .line 400
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeInk;->hashCode()I

    move-result v0

    add-int/2addr v1, v0

    .line 404
    :cond_1
    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    const/16 v0, 0x20

    shr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 407
    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    if-eqz v2, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    .line 408
    invoke-static {v2}, Ljava/util/Arrays;->hashCode([D)I

    move-result v2

    add-int/2addr v1, v2

    .line 411
    :cond_2
    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 412
    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliAngle:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    shr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 414
    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliRate:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    mul-int/lit8 v1, v1, 0x1f

    shr-long v4, v2, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 416
    iget v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliPaintType:I

    add-int/2addr v1, v0

    .line 418
    :cond_3
    iget-object v0, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    if-eqz v0, :cond_4

    mul-int/lit8 v1, v1, 0x1f

    .line 419
    invoke-virtual {v0}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_4
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "penType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 428
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 429
    const-string v1, "ink:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mInk:Lcom/metamoji/mazec/stroke/StrokeInk;

    invoke-virtual {v2}, Lcom/metamoji/mazec/stroke/StrokeInk;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    const-string v1, "lineColor:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineColor:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 431
    const-string v1, "lineWidthRation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthRatio:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 432
    const-string v1, "lineWidthType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineWidthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 433
    const-string v1, "lineDash:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mLineDash:[D

    if-eqz v1, :cond_1

    .line 436
    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_2

    aget-wide v6, v1, v5

    if-nez v4, :cond_0

    .line 438
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    :cond_0
    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_0

    .line 444
    :cond_1
    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    :cond_2
    iget v1, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mPenType:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 447
    const-string v1, "calliAngle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliAngle:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 448
    const-string v1, "calliRate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliRate:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 449
    const-string v1, "calliPaintType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mCalliPaintType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 451
    :cond_3
    iget-object v1, p0, Lcom/metamoji/mazec/stroke/StrokeStyle;->mFountainProps:Lcom/metamoji/mazec/stroke/StrokeFountainProperties;

    if-eqz v1, :cond_4

    .line 452
    invoke-virtual {v1}, Lcom/metamoji/mazec/stroke/StrokeFountainProperties;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    :cond_4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
