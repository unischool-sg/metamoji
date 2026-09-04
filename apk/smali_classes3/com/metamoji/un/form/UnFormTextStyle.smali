.class public Lcom/metamoji/un/form/UnFormTextStyle;
.super Ljava/lang/Object;
.source "UnFormTextStyle.java"


# instance fields
.field m_fontNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_fontSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_labelSizes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_labelText:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_maxLabelWidth:F

.field m_numberOfLabel:I

.field m_textAlphas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field m_textColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_labelText:Ljava/util/List;

    .line 38
    iput-object p2, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_fontNames:Ljava/util/List;

    .line 39
    iput-object p3, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_fontSizes:Ljava/util/List;

    .line 40
    iput-object p4, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_textColors:Ljava/util/List;

    .line 41
    iput-object p5, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_textAlphas:Ljava/util/List;

    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_numberOfLabel:I

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    iget p2, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_numberOfLabel:I

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_labelSizes:Ljava/util/List;

    const/high16 p1, -0x40800000    # -1.0f

    .line 45
    iput p1, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_maxLabelWidth:F

    return-void
.end method

.method private initFontSize(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 62
    :goto_0
    iget v2, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_numberOfLabel:I

    if-ge v1, v2, :cond_1

    .line 63
    invoke-virtual {p0, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->fontName(I)Ljava/lang/String;

    move-result-object v2

    .line 64
    invoke-virtual {p0, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->fontSize(I)F

    move-result v3

    .line 66
    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, v3}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 68
    invoke-virtual {p0, v1}, Lcom/metamoji/un/form/UnFormTextStyle;->labelText(I)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->rectOfString(Ljava/lang/String;)Landroid/graphics/RectF;

    move-result-object v2

    .line 71
    iget-object v3, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_labelSizes:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 73
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_1
    iput v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_maxLabelWidth:F

    return-void
.end method


# virtual methods
.method public applyToGraphics(Lcom/metamoji/df/sprite/Graphics;I)V
    .locals 2

    .line 142
    invoke-virtual {p0, p2}, Lcom/metamoji/un/form/UnFormTextStyle;->fontName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFontName(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p2}, Lcom/metamoji/un/form/UnFormTextStyle;->fontSize(I)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFontSize(F)V

    .line 144
    invoke-virtual {p0, p2}, Lcom/metamoji/un/form/UnFormTextStyle;->textColor(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/WebColor;->colorWithString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 145
    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v1, v0}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setTextPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 146
    invoke-virtual {p0, p2}, Lcom/metamoji/un/form/UnFormTextStyle;->textAlpha(I)F

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Graphics;->setTextAlpha(F)V

    return-void
.end method

.method public drawString(Lcom/metamoji/df/sprite/Graphics;IFF)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_labelText:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p3, p4, p2}, Lcom/metamoji/df/sprite/Graphics;->drawString(FFLjava/lang/String;)V

    return-void
.end method

.method public fontName(I)Ljava/lang/String;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_fontNames:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_fontNames:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public fontSize(I)F
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_fontSizes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_fontSizes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, 0x41400000    # 12.0f

    return p1
.end method

.method public getCount()I
    .locals 1

    .line 49
    iget v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_numberOfLabel:I

    return v0
.end method

.method public labelText(I)Ljava/lang/String;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_labelText:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_labelText:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 104
    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public maxLabelWidth(Lcom/metamoji/df/sprite/Graphics;)F
    .locals 2

    .line 53
    iget v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_maxLabelWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 55
    invoke-direct {p0, p1}, Lcom/metamoji/un/form/UnFormTextStyle;->initFontSize(Lcom/metamoji/df/sprite/Graphics;)V

    .line 57
    :cond_0
    iget p1, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_maxLabelWidth:F

    return p1
.end method

.method public textAlpha(I)F
    .locals 2

    .line 135
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_textAlphas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_textAlphas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->toFloat(Ljava/lang/Object;F)F

    move-result p1

    return p1

    :cond_0
    return v1
.end method

.method public textColor(I)Ljava/lang/String;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_textColors:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_textColors:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 127
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    return-object p1

    .line 131
    :cond_0
    const-string p1, "#000000"

    return-object p1
.end method

.method public textHeight(Lcom/metamoji/df/sprite/Graphics;I)F
    .locals 2

    .line 89
    iget v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_maxLabelWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1}, Lcom/metamoji/un/form/UnFormTextStyle;->initFontSize(Lcom/metamoji/df/sprite/Graphics;)V

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_labelSizes:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    .line 94
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

    return p1
.end method

.method public textWidth(Lcom/metamoji/df/sprite/Graphics;I)F
    .locals 2

    .line 80
    iget v0, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_maxLabelWidth:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 82
    invoke-direct {p0, p1}, Lcom/metamoji/un/form/UnFormTextStyle;->initFontSize(Lcom/metamoji/df/sprite/Graphics;)V

    .line 84
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/form/UnFormTextStyle;->m_labelSizes:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/graphics/RectF;

    .line 85
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    return p1
.end method
