.class public Lcom/metamoji/df/controller/DfUnitController;
.super Lcom/metamoji/df/controller/DfController;
.source "DfUnitController.java"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/DfController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 26
    invoke-super {p0, p1, p2}, Lcom/metamoji/df/controller/DfController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 27
    iget-object p1, p0, Lcom/metamoji/df/controller/DfUnitController;->_parent:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/df/controller/DfController;->bindToSpriteTree(Lcom/metamoji/df/controller/DfController;I)V

    return-void
.end method
