.class public Lcom/metamoji/un/form/UnFormLineStyle;
.super Ljava/lang/Object;
.source "UnFormLineStyle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnFormLineStyle$ModelDef;,
        Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;
    }
.end annotation


# instance fields
.field m_def_alpha:D

.field m_def_color:Ljava/lang/String;

.field m_def_style:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

.field m_def_weight:D

.field m_model:Lcom/metamoji/df/model/IModel;

.field m_propname_alpha:Ljava/lang/String;

.field m_propname_color:Ljava/lang/String;

.field m_propname_style:Ljava/lang/String;

.field m_propname_weight:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
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

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_model:Lcom/metamoji/df/model/IModel;

    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "style"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_propname_style:Ljava/lang/String;

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "weight"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_propname_weight:Ljava/lang/String;

    .line 90
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "color"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_propname_color:Ljava/lang/String;

    .line 91
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "alpha"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_propname_alpha:Ljava/lang/String;

    .line 94
    invoke-virtual {p0, p3}, Lcom/metamoji/un/form/UnFormLineStyle;->setDefValue(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 8

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormLineStyle;->getWeight()F

    move-result v0

    .line 158
    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormLineStyle;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/WebColor;->colorWithString(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 160
    new-instance v3, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {v3, v1}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    goto :goto_0

    :cond_0
    move-object v3, v2

    :goto_0
    invoke-virtual {p1, v3}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 161
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormLineStyle;->getAlpha()F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineAlpha(F)V

    .line 163
    sget-object v1, Lcom/metamoji/df/sprite/LineCap;->ROUND:Lcom/metamoji/df/sprite/LineCap;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineCap(Lcom/metamoji/df/sprite/LineCap;)V

    .line 164
    sget-object v1, Lcom/metamoji/df/sprite/LineJoin;->ROUND:Lcom/metamoji/df/sprite/LineJoin;

    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineJoin(Lcom/metamoji/df/sprite/LineJoin;)V

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormLineStyle;->getStyle()Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->ordinal()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v2, 0x0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    return-void

    :cond_1
    float-to-double v0, v0

    const-wide/high16 v5, 0x4010000000000000L    # 4.0

    mul-double/2addr v5, v0

    double-to-float v5, v5

    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    .line 175
    new-array v1, v4, [F

    aput v5, v1, v2

    aput v0, v1, v3

    .line 176
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    return-void

    .line 171
    :cond_2
    new-array v1, v4, [F

    aput v0, v1, v2

    const/high16 v0, 0x41200000    # 10.0f

    aput v0, v1, v3

    .line 172
    invoke-virtual {p1, v1}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    return-void

    .line 168
    :cond_3
    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    return-void
.end method

.method public enabled()Z
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnFormLineStyle;->getStyle()Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->NONE:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAlpha()F
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_propname_alpha:Ljava/lang/String;

    iget-wide v2, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_alpha:D

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getColor()Ljava/lang/String;
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_propname_color:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 148
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_color:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_style:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-virtual {v0}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->getIntValue()I

    move-result v0

    .line 134
    iget-object v1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v2, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_propname_style:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->valueOf(I)Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    move-result-object v0

    return-object v0
.end method

.method public getWeight()F
    .locals 4

    .line 139
    iget-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_propname_weight:Ljava/lang/String;

    iget-wide v2, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_weight:D

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method setDefValue(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 103
    sget-object v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->NONE:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    iput-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_style:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 104
    iput-wide v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_weight:D

    .line 105
    const-string v0, "#000000"

    iput-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_color:Ljava/lang/String;

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 106
    iput-wide v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_alpha:D

    if-eqz p1, :cond_3

    .line 109
    const-string/jumbo v0, "style"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 110
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 111
    check-cast v0, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    iput-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_style:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    .line 113
    :cond_0
    const-string/jumbo v0, "weight"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    .line 114
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 115
    invoke-static {v0, v2, v3}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_weight:D

    .line 117
    :cond_1
    const-string v0, "color"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 118
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_color:Ljava/lang/String;

    .line 121
    :cond_2
    const-string v0, "alpha"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 122
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 123
    invoke-static {p1, v2, v3}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/form/UnFormLineStyle;->m_def_alpha:D

    :cond_3
    return-void
.end method
