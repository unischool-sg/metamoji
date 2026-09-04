.class public abstract Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
.super Lcom/metamoji/un/draw2/library/style/DrStStyle;
.source "DrStPenStyle.java"


# static fields
.field protected static final MODEL_PROPERTY_LINE_ALPHA:Ljava/lang/String; = "A"

.field protected static final MODEL_PROPERTY_LINE_COLOR:Ljava/lang/String; = "C"

.field protected static final MODEL_PROPERTY_LINE_WIDTH:Ljava/lang/String; = "W"

.field protected static final MODEL_PROPERTY_PEN_TYPE:Ljava/lang/String; = "P"


# instance fields
.field private m_inkId:Ljava/lang/String;

.field private m_lineAlpha:F

.field private m_lineColor:Ljava/lang/Integer;

.field private m_lineColorBlue:I

.field private m_lineColorGreen:I

.field private m_lineColorRed:I

.field private m_lineWidth:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;-><init>()V

    return-void
.end method

.method public static checkEquality(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 276
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v3

    const/4 v4, 0x5

    invoke-static {v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorRed()I

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorRed()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorGreen()I

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorGreen()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 279
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorBlue()I

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineColorBlue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 280
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineAlpha()F

    move-result p0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineAlpha()F

    move-result p1

    cmpl-float p0, p0, p1

    if-nez p0, :cond_2

    return v1

    :cond_2
    :goto_0
    return v0
.end method

.method public static checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 242
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->checkStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->getStyleTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getLineWidthFromModel(Lcom/metamoji/df/model/IModel;)F
    .locals 2

    if-eqz p0, :cond_1

    .line 257
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 262
    const-string v1, "W"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 258
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static getPenTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 2

    if-eqz p0, :cond_1

    .line 249
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 253
    :cond_0
    const-string v0, "P"

    sget-object v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    const/4 v0, 0x0

    .line 250
    invoke-static {p0, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 251
    sget-object p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->NONE:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    return-object p0
.end method

.method public static newEmptyPenStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 229
    invoke-static {p0}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->newEmptyStyleModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 231
    const-string v0, "T"

    sget-object v1, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 233
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method private saveLineAlpha()V
    .locals 3

    .line 339
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const-string v2, "A"

    if-eqz v1, :cond_1

    .line 343
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 345
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveLineColor()V
    .locals 5

    .line 328
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 331
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorRed:I

    const-string v1, "C"

    if-nez v0, :cond_2

    iget v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorGreen:I

    if-nez v2, :cond_2

    iget v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorBlue:I

    if-eqz v2, :cond_1

    goto :goto_0

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 332
    :cond_2
    :goto_0
    iget v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorGreen:I

    iget v3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorBlue:I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v1, v0, v2, v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setColorRGBForName(Ljava/lang/String;IIILcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveLineWidth()V
    .locals 3

    .line 317
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 320
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    const-string v2, "W"

    if-eqz v1, :cond_1

    .line 321
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 323
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private updateLineAlpha(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    goto :goto_0

    .line 311
    :cond_1
    :goto_1
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    return-void
.end method

.method private updateLineColorRGB(III)V
    .locals 1

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    const/4 p1, 0x0

    move p2, p1

    move p3, p2

    :cond_1
    const/16 v0, 0xff

    if-le p1, v0, :cond_2

    move p1, v0

    .line 299
    :cond_2
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorRed:I

    if-le p2, v0, :cond_3

    move p2, v0

    .line 300
    :cond_3
    iput p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorGreen:I

    if-le p3, v0, :cond_4

    move p3, v0

    .line 301
    :cond_4
    iput p3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorBlue:I

    .line 302
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColor:Ljava/lang/Integer;

    return-void
.end method

.method private updateLineWidth(F)V
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    move p1, v0

    .line 292
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    return-void
.end method


# virtual methods
.method public applyTo(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 2

    .line 359
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 360
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 361
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 362
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    :cond_1
    return-void
.end method

.method public applyTo(Lcom/metamoji/df/sprite/Path;)V
    .locals 2

    .line 352
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Path;->setLineWidth(F)V

    .line 353
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 354
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    iget-object v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColor:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    :cond_0
    const/high16 v1, -0x1000000

    :goto_0
    invoke-direct {v0, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Path;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 355
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Path;->setLineAlpha(F)V

    :cond_1
    return-void
.end method

.method protected cloneWithFamily_(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 97
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p1

    return-object p1
.end method

.method public cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 2

    .line 188
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithScale_(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 190
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    mul-float/2addr v0, p1

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineWidth(F)V

    .line 191
    iget p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorRed:I

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorGreen:I

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorBlue:I

    invoke-virtual {p2, p1, v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineColorRGB(III)V

    .line 192
    iget p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineAlpha(F)V

    .line 193
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->inkId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setInkId(Ljava/lang/String;)V

    return-object p2

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 195
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p2
.end method

.method protected abstract cloneWithScale_(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
.end method

.method public copyToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z
    .locals 2

    .line 204
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->copyToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 207
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineWidth(F)V

    .line 208
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorRed:I

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorGreen:I

    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorBlue:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineColorRGB(III)V

    .line 209
    iget p2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineAlpha(F)V

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract copyToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z
.end method

.method protected copyToStyle_(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
    .locals 2

    .line 102
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->type()Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->copyToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;F)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getLineColorARGB()I
    .locals 4

    .line 366
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    if-gez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    if-le v0, v1, :cond_1

    move v0, v1

    .line 368
    :cond_1
    :goto_0
    iget v1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorRed:I

    iget v2, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorGreen:I

    iget v3, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorBlue:I

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    return v0
.end method

.method protected init_()Z
    .locals 8

    .line 58
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 60
    const-string v0, "W"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 63
    const-string v3, "C"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->colorForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 65
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    .line 66
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v4

    .line 67
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    move v4, v3

    .line 71
    :goto_0
    const-string v5, "A"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-static {v5, v1, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    move v7, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :cond_1
    move v0, v1

    move v3, v2

    move v4, v3

    .line 75
    :goto_1
    invoke-direct {p0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->updateLineWidth(F)V

    .line 76
    invoke-direct {p0, v2, v4, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->updateLineColorRGB(III)V

    .line 77
    invoke-direct {p0, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->updateLineAlpha(F)V

    const/4 v0, 0x1

    return v0
.end method

.method public inkId()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_inkId:Ljava/lang/String;

    return-object v0
.end method

.method public isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, p0, :cond_1

    return v1

    .line 180
    :cond_1
    invoke-static {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkEquality(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method protected abstract isEqualToPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
.end method

.method protected isEqualToStyle_(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z
    .locals 2

    .line 92
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->type()Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public lineAlpha()F
    .locals 1

    .line 133
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    return v0
.end method

.method public lineColor()Ljava/lang/Integer;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColor:Ljava/lang/Integer;

    return-object v0
.end method

.method public lineColorBlue()I
    .locals 1

    .line 130
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorBlue:I

    return v0
.end method

.method public lineColorGreen()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorGreen:I

    return v0
.end method

.method public lineColorRed()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorRed:I

    return v0
.end method

.method public lineWidth()F
    .locals 1

    .line 120
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    return v0
.end method

.method public penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType_()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v0

    return-object v0
.end method

.method protected abstract penType_()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;
.end method

.method public setInkId(Ljava/lang/String;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_inkId:Ljava/lang/String;

    return-void
.end method

.method public setLineAlpha(F)V
    .locals 1

    .line 135
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineAlpha:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 136
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->updateLineAlpha(F)V

    .line 137
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->saveLineAlpha()V

    :cond_0
    return-void
.end method

.method public setLineColorRGB(III)V
    .locals 1

    .line 153
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorRed:I

    if-ne v0, p1, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorGreen:I

    if-ne v0, p2, :cond_1

    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineColorBlue:I

    if-eq v0, p3, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 154
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->updateLineColorRGB(III)V

    .line 155
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->saveLineColor()V

    return-void
.end method

.method public setLineColorWithColor(Ljava/lang/Integer;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 162
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 163
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 164
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 165
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move p1, v0

    move v1, p1

    .line 167
    :goto_0
    invoke-virtual {p0, v0, v1, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineColorRGB(III)V

    return-void
.end method

.method public setLineWidth(F)V
    .locals 1

    .line 122
    iget v0, p0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->m_lineWidth:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 123
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->updateLineWidth(F)V

    .line 124
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->saveLineWidth()V

    :cond_0
    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/library/style/DrStStyleType;
    .locals 1

    .line 87
    sget-object v0, Lcom/metamoji/un/draw2/library/style/DrStStyleType;->PEN:Lcom/metamoji/un/draw2/library/style/DrStStyleType;

    return-object v0
.end method
