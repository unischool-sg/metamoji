.class Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;
.super Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;
.source "DrOvGraphicObject.java"


# instance fields
.field m_path:Landroid/graphics/Path;

.field m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;


# direct methods
.method constructor <init>(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 121
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;-><init>()V

    .line 122
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_path:Landroid/graphics/Path;

    .line 123
    iput-object p2, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method


# virtual methods
.method drawInContext(Lcom/metamoji/df/sprite/Graphics;)V
    .locals 3

    .line 158
    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 159
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    iget v1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_scale:F

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->applyTo(Lcom/metamoji/df/sprite/Graphics;)V

    .line 160
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_path:Landroid/graphics/Path;

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Graphics;->drawBezierPath(Landroid/graphics/Path;)V

    return-void
.end method

.method resetPath(Landroid/graphics/Path;Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_path:Landroid/graphics/Path;

    .line 135
    invoke-virtual {p0, p2}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V

    return-void
.end method

.method setScale(F)V
    .locals 0

    .line 140
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setScale(F)V

    return-void
.end method

.method setStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-void
.end method

.method style()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_style:Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    return-object v0
.end method

.method update()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicPath;->drawInContext(Lcom/metamoji/df/sprite/Graphics;)V

    return-void
.end method
