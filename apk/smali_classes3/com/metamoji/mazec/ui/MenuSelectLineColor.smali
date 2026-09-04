.class public Lcom/metamoji/mazec/ui/MenuSelectLineColor;
.super Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;
.source "MenuSelectLineColor.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;)V

    .line 18
    sget p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->mSelected:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    sget p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    iput p1, p0, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->mSelected:I

    return-void
.end method


# virtual methods
.method protected getButtonId(I)I
    .locals 1

    .line 54
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLACK:I

    if-ne p1, v0, :cond_0

    .line 55
    const-string p1, "id.color_palette_black"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 56
    :cond_0
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GRAY:I

    if-ne p1, v0, :cond_1

    .line 57
    const-string p1, "id.color_palette_gray"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 58
    :cond_1
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_RED:I

    if-ne p1, v0, :cond_2

    .line 59
    const-string p1, "id.color_palette_red"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 60
    :cond_2
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLUE:I

    if-ne p1, v0, :cond_3

    .line 61
    const-string p1, "id.color_palette_blue"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 62
    :cond_3
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GREEN:I

    if-ne p1, v0, :cond_4

    .line 63
    const-string p1, "id.color_palette_green"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 64
    :cond_4
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_YELLOW:I

    if-ne p1, v0, :cond_5

    .line 65
    const-string p1, "id.color_palette_yellow"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 66
    :cond_5
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_WHITE:I

    if-ne p1, v0, :cond_6

    .line 67
    const-string p1, "id.color_palette_white"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 68
    :cond_6
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_PINK:I

    if-ne p1, v0, :cond_7

    .line 69
    const-string p1, "id.color_palette_pink"

    invoke-static {p1}, Lcom/metamoji/mazec/RHelper;->getResource(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 71
    :cond_7
    sget p1, Lcom/metamoji/mazec/stroke/StrokeConstants;->DEFAULT_STROKE_COLOR:I

    return p1
.end method

.method public getSelectedLineColor()I
    .locals 1

    .line 50
    iget v0, p0, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->mSelected:I

    return v0
.end method

.method public initView(I)V
    .locals 8

    .line 35
    invoke-super {p0, p1}, Lcom/metamoji/mazec/ui/MenuSelectWithCircleIndicator;->initView(I)V

    .line 36
    sget v0, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLACK:I

    sget v1, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GRAY:I

    sget v2, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_RED:I

    sget v3, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_BLUE:I

    sget v4, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_GREEN:I

    sget v5, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_YELLOW:I

    sget v6, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_WHITE:I

    sget v7, Lcom/metamoji/mazec/stroke/StrokeConstants;->LINECOLOR_PINK:I

    filled-new-array/range {v0 .. v7}, [I

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 38
    aget v1, p1, v0

    .line 39
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->getButtonId(I)I

    move-result v2

    invoke-virtual {p0, v2, v1}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->setOnClickListener(II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 41
    :cond_0
    invoke-virtual {p0, v1}, Lcom/metamoji/mazec/ui/MenuSelectLineColor;->setCountOfItemSpace(I)V

    return-void
.end method
