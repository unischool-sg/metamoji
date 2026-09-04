.class public Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;
.super Lcom/metamoji/mazecclient/stroke/StrokeStyle;
.source "MutableStrokeStyle.java"

# interfaces
.implements Lcom/metamoji/mazecclient/stroke/IMutableStrokeStyle;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;-><init>(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;)V

    return-void
.end method

.method public static createPlaceholderInstance()Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;
    .locals 2

    .line 175
    new-instance v0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;

    invoke-direct {v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;-><init>()V

    const/high16 v1, -0x1000000

    .line 176
    iput v1, v0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_lineColor:I

    const/high16 v1, 0x40400000    # 3.0f

    .line 177
    iput v1, v0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_lineWidthRatio:F

    const/high16 v1, 0x42340000    # 45.0f

    .line 180
    iput v1, v0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_calliAngle:F

    const v1, 0x3e4ccccd    # 0.2f

    .line 181
    iput v1, v0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_calliRate:F

    .line 182
    sget-object v1, Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;->DEFAULT:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    iput-object v1, v0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-object v0
.end method


# virtual methods
.method public applyProperties(Lcom/metamoji/mazecclient/stroke/IStrokeStyle;Ljava/util/EnumSet;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/mazecclient/stroke/IStrokeStyle;",
            "Ljava/util/EnumSet<",
            "Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;",
            ">;)V"
        }
    .end annotation

    .line 109
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->PEN_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getPenType()Lcom/metamoji/mazecclient/stroke/StrokePenType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setPenType(Lcom/metamoji/mazecclient/stroke/StrokePenType;)V

    .line 111
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setCalliPaintType(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;)V

    .line 114
    :cond_0
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_RGB:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 115
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setLineColor(I)V

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->getLineColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 121
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v1

    invoke-static {v1, v0}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setLineColor(I)V

    .line 124
    :cond_2
    :goto_0
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_COLOR_A:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 126
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineColor()I

    move-result v0

    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 127
    invoke-virtual {p0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->getLineColor()I

    move-result v1

    invoke-static {v1, v0}, Lcom/metamoji/cm/ColorUtils;->colorWithAlpha(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setLineColor(I)V

    .line 130
    :cond_3
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_WIDTH_RATIO:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 131
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineWidthRatio()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setLineWidthRatio(F)V

    .line 134
    :cond_4
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_ANGLE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 135
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliAngle()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setCalliAngle(F)V

    .line 138
    :cond_5
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_RATE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 139
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliRate()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setCalliRate(F)V

    .line 142
    :cond_6
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->CALLI_PAINT_TYPE:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 143
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getCalliPaintType()Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setCalliPaintType(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;)V

    .line 146
    :cond_7
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->LINE_DASH:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 147
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getLineDash()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setLineDash(Ljava/util/List;)V

    .line 150
    :cond_8
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->INK:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 151
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getInk()Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setInk(Lcom/metamoji/mazecclient/stroke/IStrokeInk;)V

    .line 154
    :cond_9
    sget-object v0, Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;->FOUNTAIN_PROPS:Lcom/metamoji/mazecclient/stroke/StrokeStyleOverwriteFlag;

    invoke-virtual {p2, v0}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 155
    invoke-interface {p1}, Lcom/metamoji/mazecclient/stroke/IStrokeStyle;->getFountainProperties()Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->setFountainProperties(Lcom/metamoji/mazecclient/stroke/IFountainProperties;)V

    :cond_a
    return-void
.end method

.method public cloneImmutable()Lcom/metamoji/mazecclient/stroke/IStrokeStyle;
    .locals 1

    .line 35
    invoke-static {p0}, Lcom/metamoji/mazecclient/stroke/StrokeStyle;->searchStyle(Lcom/metamoji/mazecclient/stroke/StrokeStyle;)Lcom/metamoji/mazecclient/stroke/StrokeStyle;

    move-result-object v0

    return-object v0
.end method

.method public setCalliAngle(F)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_calliAngle:F

    return-void
.end method

.method public setCalliPaintType(Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_calliPaintType:Lcom/metamoji/mazecclient/stroke/CalligraphyPaintType;

    return-void
.end method

.method public setCalliRate(F)V
    .locals 0

    .line 88
    iput p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_calliRate:F

    return-void
.end method

.method public setFountainProperties(Lcom/metamoji/mazecclient/stroke/IFountainProperties;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_fountainProps:Lcom/metamoji/mazecclient/stroke/IFountainProperties;

    return-void
.end method

.method public setInk(Lcom/metamoji/mazecclient/stroke/IStrokeInk;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_ink:Lcom/metamoji/mazecclient/stroke/IStrokeInk;

    return-void
.end method

.method public setLineColor(I)V
    .locals 0

    .line 56
    iput p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_lineColor:I

    return-void
.end method

.method public setLineDash(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_lineDash:Ljava/util/List;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 73
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_lineDash:Ljava/util/List;

    return-void
.end method

.method public setLineWidthRatio(F)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_lineWidthRatio:F

    return-void
.end method

.method public setPenType(Lcom/metamoji/mazecclient/stroke/StrokePenType;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/metamoji/mazecclient/stroke/MutableStrokeStyle;->_penType:Lcom/metamoji/mazecclient/stroke/StrokePenType;

    return-void
.end method
