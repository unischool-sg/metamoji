.class public Lcom/metamoji/un/form/UnTableUnit;
.super Lcom/metamoji/un/form/UnFormBase;
.source "UnTableUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/form/UnTableUnit$ModelDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "$table"


# instance fields
.field m_bl_style:Lcom/metamoji/un/form/UnFormLineStyle;

.field m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

.field m_vl_style:Lcom/metamoji/un/form/UnFormLineStyle;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/form/UnFormBase;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static collectDescription(Lcom/metamoji/df/model/IModel;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/df/model/IModel;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public h_cells()I
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/metamoji/un/form/UnTableUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ar-hcells"

    const/4 v2, 0x2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lcom/metamoji/un/form/UnFormBase;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 46
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string/jumbo v0, "style"

    sget-object v1, Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;->SOLID:Lcom/metamoji/un/form/UnFormLineStyle$LineStyle;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnTableUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "bl-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnTableUnit;->m_bl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 50
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnTableUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "hl-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnTableUnit;->m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    .line 51
    new-instance v0, Lcom/metamoji/un/form/UnFormLineStyle;

    iget-object v1, p0, Lcom/metamoji/un/form/UnTableUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v2, "vl-"

    invoke-direct {v0, v1, v2, p1}, Lcom/metamoji/un/form/UnFormLineStyle;-><init>(Lcom/metamoji/df/model/IModel;Ljava/lang/String;Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/un/form/UnTableUnit;->m_vl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 56
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/form/UnFormBase;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method protected updateFormSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 11

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnTableUnit;->getContentWidth()F

    move-result p1

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnTableUnit;->getContentHeight()F

    move-result v0

    .line 72
    iget-object v1, p0, Lcom/metamoji/un/form/UnTableUnit;->m_formSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v1

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnTableUnit;->h_cells()I

    move-result v2

    .line 75
    invoke-virtual {p0}, Lcom/metamoji/un/form/UnTableUnit;->v_cells()I

    move-result v3

    int-to-float v4, v2

    div-float v4, p1, v4

    int-to-float v5, v3

    div-float v5, v0, v5

    .line 82
    iget-object v6, p0, Lcom/metamoji/un/form/UnTableUnit;->m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v6, v1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 83
    iget-object v6, p0, Lcom/metamoji/un/form/UnTableUnit;->m_hl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v6}, Lcom/metamoji/un/form/UnFormLineStyle;->enabled()Z

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-eqz v6, :cond_1

    move v9, v5

    move v6, v7

    :goto_0
    add-int/lit8 v10, v3, -0x1

    if-ge v6, v10, :cond_0

    .line 86
    invoke-virtual {v1, v8, v9}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 87
    invoke-virtual {v1, p1, v9}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v6, v6, 0x1

    add-float/2addr v9, v5

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 92
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/form/UnTableUnit;->m_vl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3, v1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 93
    iget-object v3, p0, Lcom/metamoji/un/form/UnTableUnit;->m_vl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v3}, Lcom/metamoji/un/form/UnFormLineStyle;->enabled()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v4

    :goto_1
    add-int/lit8 v5, v2, -0x1

    if-ge v7, v5, :cond_2

    .line 96
    invoke-virtual {v1, v3, v8}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 97
    invoke-virtual {v1, v3, v0}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    add-int/lit8 v7, v7, 0x1

    add-float/2addr v3, v4

    goto :goto_1

    .line 99
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 102
    :cond_3
    iget-object v2, p0, Lcom/metamoji/un/form/UnTableUnit;->m_bl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v2, v1}, Lcom/metamoji/un/form/UnFormLineStyle;->applyToGraphics(Lcom/metamoji/df/sprite/Graphics;)V

    .line 103
    iget-object v2, p0, Lcom/metamoji/un/form/UnTableUnit;->m_bl_style:Lcom/metamoji/un/form/UnFormLineStyle;

    invoke-virtual {v2}, Lcom/metamoji/un/form/UnFormLineStyle;->enabled()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 104
    invoke-virtual {v1, v8, v8, p1, v0}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    :cond_4
    return-void
.end method

.method public v_cells()I
    .locals 3

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/form/UnTableUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "ar-vcells"

    const/4 v2, 0x4

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
