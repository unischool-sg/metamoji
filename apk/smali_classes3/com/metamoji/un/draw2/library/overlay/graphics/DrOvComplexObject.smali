.class Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;
.super Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;
.source "DrOvGraphicObject.java"


# instance fields
.field private final m_objects:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 373
    invoke-direct {p0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;-><init>()V

    .line 371
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_objects:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method addObject(Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;)V
    .locals 1

    .line 384
    iget v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_scale:F

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setScale(F)V

    .line 385
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_objects:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 389
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->sprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method alpha()F
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getAlpha()F

    move-result v0

    return v0
.end method

.method clear()V
    .locals 1

    .line 393
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->removeChildren()V

    .line 394
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method setAlpha(F)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    return-void
.end method

.method setScale(F)V
    .locals 2

    .line 399
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setScale(F)V

    .line 400
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;

    .line 401
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->setScale(F)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method update()V
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvComplexObject;->m_objects:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;

    .line 409
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/overlay/graphics/DrOvGraphicObject;->update()V

    goto :goto_0

    :cond_0
    return-void
.end method
