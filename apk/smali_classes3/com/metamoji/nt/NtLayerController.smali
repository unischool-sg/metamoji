.class public Lcom/metamoji/nt/NtLayerController;
.super Lcom/metamoji/df/controller/DfLayerController;
.source "NtLayerController.java"

# interfaces
.implements Lcom/metamoji/nt/INtController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtLayerController$ModelDef;,
        Lcom/metamoji/nt/NtLayerController$SystemLayerType;,
        Lcom/metamoji/nt/NtLayerController$LayerIndex;
    }
.end annotation


# static fields
.field public static final CURRENT_VERSION:I = 0x1

.field public static final MODELTYPE:Ljava/lang/String; = "$layer"

.field public static final SUBID_TYPE:Ljava/lang/String; = "layer"


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/DfLayerController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 86
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string v1, "layer"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lcom/metamoji/nt/NtLayerController;->createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static createNewLayerModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 91
    const-string v0, "$layer"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 93
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 94
    const-string v0, "layerType"

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    const-string p1, "layerId"

    invoke-interface {p0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    const-string/jumbo p1, "visible"

    invoke-interface {p0, p1, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static visitModelForLayerID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 4

    .line 108
    check-cast p1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    .line 110
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewID:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v1

    const-string v2, "layerId"

    if-ne v0, v1, :cond_1

    .line 112
    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v1

    const-string v3, "layer"

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 115
    invoke-interface {p0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void

    .line 118
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 119
    invoke-interface {p0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 121
    :cond_2
    sget-object p0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->SearchModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    return-void
.end method


# virtual methods
.method public getLayerId()Ljava/lang/String;
    .locals 2

    .line 142
    invoke-virtual {p0}, Lcom/metamoji/nt/NtLayerController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "layerId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLayerType()Ljava/lang/String;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/metamoji/nt/NtLayerController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "layerType"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectListener()Lcom/metamoji/ctold/CtObjectListener;
    .locals 1

    .line 157
    invoke-virtual {p0}, Lcom/metamoji/nt/NtLayerController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/nt/NtLayerController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/INtController;

    invoke-interface {v0}, Lcom/metamoji/nt/INtController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 134
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfLayerController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method
