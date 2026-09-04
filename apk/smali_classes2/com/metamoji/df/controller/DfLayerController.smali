.class public Lcom/metamoji/df/controller/DfLayerController;
.super Lcom/metamoji/df/controller/DfController;
.source "DfLayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/DfLayerController$ModelDef;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/DfController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/metamoji/df/controller/DfLayerController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const-string p2, "layer"

    iput-object p2, p1, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lcom/metamoji/df/controller/DfLayerController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfLayerController;->getVisible()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public geometricPropsChanged(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/df/controller/DfLayerController;->_parent:Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/controller/DfLayerController;->_parent:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/metamoji/df/controller/DfController;->geometricPropsChanged(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentUnitContainer()Lcom/metamoji/df/controller/DfController;
    .locals 0

    return-object p0
.end method

.method public getVisible()Z
    .locals 3

    .line 83
    iget-object v0, p0, Lcom/metamoji/df/controller/DfLayerController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "visible"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsBool(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 30
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 37
    invoke-super {p0, p1, p2}, Lcom/metamoji/df/controller/DfController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 38
    iget-object p1, p0, Lcom/metamoji/df/controller/DfLayerController;->_parent:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/df/controller/DfController;->bindToSpriteTree(Lcom/metamoji/df/controller/DfController;I)V

    return-void
.end method

.method public setVisible(Z)V
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/metamoji/df/controller/DfLayerController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "visible"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    .line 93
    iget-object v0, p0, Lcom/metamoji/df/controller/DfLayerController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setVisible(Z)V

    return-void
.end method
