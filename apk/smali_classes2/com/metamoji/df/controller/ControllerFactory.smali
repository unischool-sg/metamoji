.class public Lcom/metamoji/df/controller/ControllerFactory;
.super Ljava/lang/Object;
.source "ControllerFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;
    }
.end annotation


# instance fields
.field private _controllerMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/metamoji/df/controller/DfController;",
            ">;"
        }
    .end annotation
.end field

.field private _factoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;",
            ">;"
        }
    .end annotation
.end field

.field private _parents:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lcom/metamoji/df/controller/DfController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerFactory;->_factoryMap:Ljava/util/Map;

    .line 35
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerFactory;->_controllerMap:Landroid/util/SparseArray;

    .line 36
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/metamoji/df/controller/ControllerFactory;->_parents:Ljava/util/Stack;

    return-void
.end method

.method private createControllerAsync(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;
    .locals 3

    .line 73
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 79
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/df/controller/ControllerFactory;->_factoryMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;

    if-eqz v2, :cond_1

    .line 82
    invoke-interface {v2, p1, p2, v0}, Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;->create(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    .line 83
    iget-object p1, p0, Lcom/metamoji/df/controller/ControllerFactory;->_controllerMap:Landroid/util/SparseArray;

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p2

    invoke-virtual {p1, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-object v1

    :catch_0
    move-exception p1

    .line 86
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 87
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "create controller failed : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public checkValidType(Ljava/lang/String;)Z
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/df/controller/ControllerFactory;->_factoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public createAsDepthFirst(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;I)Lcom/metamoji/df/controller/DfController;
    .locals 2

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/metamoji/df/controller/ControllerFactory;->createControllerAsync(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 123
    invoke-virtual {v0, p3}, Lcom/metamoji/df/controller/DfController;->demandChild(I)Z

    move-result p3

    if-eqz p3, :cond_0

    const/4 p1, 0x1

    .line 124
    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/DfController;->setPurged(Z)V

    return-object v0

    .line 126
    :cond_0
    iget-object p3, p0, Lcom/metamoji/df/controller/ControllerFactory;->_parents:Ljava/util/Stack;

    iget-object v1, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {p3, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    iput-object v0, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    .line 130
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/ControllerFactory;->createChildrenAsDepthFirst(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 132
    invoke-static {p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 134
    :goto_0
    iget-object p2, p0, Lcom/metamoji/df/controller/ControllerFactory;->_parents:Ljava/util/Stack;

    invoke-virtual {p2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/metamoji/df/controller/DfController;

    iput-object p2, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    return-object v0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public createChildrenAsDepthFirst(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 155
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 162
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 166
    :cond_2
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/df/controller/ControllerFactory;->createAsDepthFirst(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;I)Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 168
    iget-object v2, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/controller/DfController;->addChild(Lcom/metamoji/df/controller/DfController;)V

    goto :goto_0

    .line 171
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/ControllerFactory;->createChildrenAsDepthFirst(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;)V

    .line 174
    :goto_0
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    add-int/lit8 v0, v0, 0x1

    if-nez p2, :cond_1

    :goto_1
    return-void
.end method

.method public getAncestorControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;
    .locals 3

    if-eqz p1, :cond_1

    .line 206
    invoke-static {p1}, Lcom/metamoji/df/controller/DfUtility;->getAncestorModelIDs(Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    .line 207
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 208
    iget-object v1, p0, Lcom/metamoji/df/controller/ControllerFactory;->_controllerMap:Landroid/util/SparseArray;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/DfController;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;
    .locals 1

    if-eqz p1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/metamoji/df/controller/ControllerFactory;->_controllerMap:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/DfController;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getDescendantControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;
    .locals 2

    if-eqz p1, :cond_2

    .line 221
    iget-object v0, p0, Lcom/metamoji/df/controller/ControllerFactory;->_controllerMap:Landroid/util/SparseArray;

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    return-object v0

    .line 226
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getFirstChild()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/ControllerFactory;->getDescendantControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_1

    return-object v0

    .line 227
    :cond_1
    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getNextSibling()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public install(Ljava/lang/String;Lcom/metamoji/df/controller/ControllerFactory$IControllerCreator;)V
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/metamoji/df/controller/ControllerFactory;->_factoryMap:Ljava/util/Map;

    if-eqz p2, :cond_0

    .line 52
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 54
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeController(Lcom/metamoji/df/controller/DfController;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/metamoji/df/controller/ControllerFactory;->_controllerMap:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
