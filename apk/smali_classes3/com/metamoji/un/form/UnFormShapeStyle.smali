.class public Lcom/metamoji/un/form/UnFormShapeStyle;
.super Ljava/lang/Object;
.source "UnFormShapeStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnFormShapeStyle$ModelDef;
    }
.end annotation


# instance fields
.field m_attrname_fillAlpha:Ljava/lang/String;

.field m_attrname_fillColor:Ljava/lang/String;

.field m_def_fillAlpha:D

.field m_def_fillColor:Ljava/lang/String;

.field m_lineStyle:Lcom/metamoji/un/form/UnFormLineStyle;

.field m_model:Lcom/metamoji/df/model/IModel;

.field m_propname_fillAlpha:Ljava/lang/String;

.field m_propname_fillColor:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-direct {v0, p1, p2, p3}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_lineStyle:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 44
    iput-object p1, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_model:Lcom/metamoji/df/model/IModel;

    .line 46
    const-string p1, "fillColor"

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_attrname_fillColor:Ljava/lang/String;

    .line 47
    const-string v0, "fillAlpha"

    iput-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_attrname_fillAlpha:Ljava/lang/String;

    .line 49
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_propname_fillColor:Ljava/lang/String;

    .line 50
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_propname_fillAlpha:Ljava/lang/String;

    .line 52
    invoke-direct {p0, p3}, Lcom/metamoji/un/form/UnFormShapeStyle;->setDefValue(Ljava/util/Map;)V

    return-void
.end method

.method private setDefValue(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_def_fillColor:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 59
    iput-wide v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_def_fillAlpha:D

    if-eqz p1, :cond_1

    .line 61
    const-string v0, "fillColor"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 63
    iput-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_def_fillColor:Ljava/lang/String;

    .line 65
    :cond_0
    const-string v0, "fillAlpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 67
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_def_fillAlpha:D

    :cond_1
    return-void
.end method


# virtual methods
.method public applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_lineStyle:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormShapeStyle;->fillColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 117
    new-instance v1, Lcom/metamoji/df/sprite/PaintSolid;

    const/high16 v2, -0x1000000

    invoke-static {v0, v2}, Lcom/metamoji/cm/WebColor;->colorWithString(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 119
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 122
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormShapeStyle;->fillAlpha()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    return-void
.end method

.method public enabled()Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_lineStyle:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormLineStyle;->enabled()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormShapeStyle;->fillColor()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method

.method public fillAlpha()F
    .locals 4

    .line 106
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_propname_fillAlpha:Ljava/lang/String;

    iget-wide v2, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_def_fillAlpha:D

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public fillColor()Ljava/lang/String;
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_propname_fillColor:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_def_fillColor:Ljava/lang/String;

    return-object v0
.end method

.method public getAlpha()F
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_lineStyle:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormLineStyle;->getAlpha()F

    move-result v0

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 90
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_lineStyle:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormLineStyle;->getColor()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStyle()Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_lineStyle:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormLineStyle;->getStyle()Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v0

    return-object v0
.end method

.method public getWeight()D
    .locals 2

    .line 86
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormShapeStyle;->m_lineStyle:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormLineStyle;->getWeight()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method
