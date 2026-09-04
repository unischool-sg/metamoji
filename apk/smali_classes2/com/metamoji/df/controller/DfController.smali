.class public Lcom/metamoji/df/controller/DfController;
.super Ljava/lang/Object;
.source "DfController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/DfController$ModelDef;
    }
.end annotation


# instance fields
.field protected _children:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/df/controller/DfController;",
            ">;"
        }
    .end annotation
.end field

.field protected _document:Lcom/metamoji/df/controller/DfDocument;

.field protected _model:Lcom/metamoji/df/model/IModel;

.field protected _parent:Lcom/metamoji/df/controller/DfController;

.field protected _purged:Z

.field protected _sprite:Lcom/metamoji/df/sprite/Sprite;

.field protected _type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 1

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iget-object v0, p1, Lcom/metamoji/df/controller/ControllerContext;->document:Lcom/metamoji/df/controller/DfDocument;

    iput-object v0, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    .line 154
    iget-object p1, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    iput-object p1, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    .line 155
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    .line 156
    iput-object p2, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    .line 157
    iput-object p3, p0, Lcom/metamoji/df/controller/DfController;->_type:Ljava/lang/String;

    const/4 p1, 0x0

    .line 158
    iput-object p1, p0, Lcom/metamoji/df/controller/DfController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 160
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->createBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/df/controller/DfController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 161
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfController;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    return-void
.end method

.method public static attachToControllerTree(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/controller/DfController;ILcom/metamoji/df/controller/DfController;)V
    .locals 0

    .line 406
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/df/controller/DfController;->insertChildAt(ILcom/metamoji/df/controller/DfController;)V

    .line 407
    invoke-virtual {p3, p0, p2}, Lcom/metamoji/df/controller/DfController;->initDescendants(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method private broadcastDescendent(Lcom/metamoji/df/controller/BroadcastContext;)V
    .locals 2

    .line 821
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/DfController;

    .line 822
    invoke-virtual {v1, p1}, Lcom/metamoji/df/controller/DfController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    .line 823
    invoke-direct {v1, p1}, Lcom/metamoji/df/controller/DfController;->broadcastDescendent(Lcom/metamoji/df/controller/BroadcastContext;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static detachFromControllerTree(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/DfController;)V
    .locals 0

    .line 418
    invoke-virtual {p1, p2}, Lcom/metamoji/df/controller/DfController;->unbindFromSpriteTree(Lcom/metamoji/df/controller/DfController;)V

    .line 419
    invoke-virtual {p1, p2}, Lcom/metamoji/df/controller/DfController;->removeChild(Lcom/metamoji/df/controller/DfController;)V

    .line 420
    invoke-virtual {p2, p0}, Lcom/metamoji/df/controller/DfController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 421
    invoke-virtual {p2, p0}, Lcom/metamoji/df/controller/DfController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method


# virtual methods
.method public accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V
    .locals 3

    .line 454
    :try_start_0
    invoke-interface {p1, p0}, Lcom/metamoji/df/controller/IControllerAccessHandler;->Access(Lcom/metamoji/df/controller/DfController;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 457
    const-string v1, "accessControllerTree"

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_0

    .line 460
    iget-object v2, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/controller/DfController;

    .line 461
    invoke-virtual {v2, p1}, Lcom/metamoji/df/controller/DfController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    return-void
.end method

.method public addChild(Lcom/metamoji/df/controller/DfController;)V
    .locals 1

    .line 326
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public attachmentsManager()Lcom/metamoji/df/controller/AttachmentsManager;
    .locals 1

    .line 886
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfDocument;->getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;

    move-result-object v0

    return-object v0
.end method

.method public beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;
    .locals 1

    .line 844
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/DfController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bindToSpriteTree(Lcom/metamoji/df/controller/DfController;I)V
    .locals 1

    .line 661
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getBindSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-gez p2, :cond_0

    .line 663
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 665
    invoke-virtual {p0, p2}, Lcom/metamoji/df/controller/DfController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 667
    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/Sprite;->getChildIndex(Lcom/metamoji/df/sprite/Sprite;)I

    move-result p2

    if-ltz p2, :cond_1

    .line 669
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/df/sprite/Sprite;->addChildAt(Lcom/metamoji/df/sprite/Sprite;I)V

    :cond_1
    return-void
.end method

.method public broadcastEventToDescendent(Lcom/metamoji/df/controller/BroadcastContext;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 814
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    .line 816
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/DfController;->broadcastDescendent(Lcom/metamoji/df/controller/BroadcastContext;)V

    return-void
.end method

.method protected createBaseSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 2

    .line 571
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    .line 572
    const-string v1, "defaultBaseSprite"

    iput-object v1, v0, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/DfDocument;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p1

    return-object p1
.end method

.method public demandChild(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/DfController;

    if-eqz v1, :cond_0

    .line 254
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/metamoji/df/controller/DfController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 257
    const-string v2, "destroyController"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfDocument;->getControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/df/controller/ControllerFactory;->removeController(Lcom/metamoji/df/controller/DfController;)V

    .line 266
    iget-object p1, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    const/4 p1, 0x0

    .line 268
    iput-object p1, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    .line 269
    iput-object p1, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    .line 270
    iput-object p1, p0, Lcom/metamoji/df/controller/DfController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    .line 273
    iput-object p1, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    return-void
.end method

.method public endEdit(Lcom/metamoji/df/controller/EditContext;)V
    .locals 1

    .line 856
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    .line 857
    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/DfController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    :cond_0
    return-void
.end method

.method public geometricPropsChanged(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getBaseSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 582
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public getBindSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 591
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public getChild(I)Lcom/metamoji/df/controller/DfController;
    .locals 1

    if-ltz p1, :cond_0

    .line 377
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/DfController;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getChildIndex(Lcom/metamoji/df/controller/DfController;)I
    .locals 1

    .line 390
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public getChildren()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/df/controller/DfController;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    return-object v0
.end method

.method public getContentScale()D
    .locals 4

    .line 136
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "contentScale"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfDocument;->getControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/DfDocument;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    return-object p1
.end method

.method public getCurrentUnitContainer()Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    .line 501
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->getCurrentUnitContainer()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocument()Lcom/metamoji/df/controller/DfDocument;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    return-object v0
.end method

.method public getDocumentSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getDocument()Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfDocument;->getSettingsManager()Lcom/metamoji/df/controller/SettingsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    return-object p1
.end method

.method public getHeight()F
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "height"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public getModelID()I
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v0

    return v0
.end method

.method public getModelManager()Lcom/metamoji/df/model/IModelManager;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getParent()Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    return-object v0
.end method

.method public getRootModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 541
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method public getRotation()D
    .locals 4

    .line 128
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "rotation"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    return-object v0
.end method

.method public getStage()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 305
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_type:Ljava/lang/String;

    return-object v0
.end method

.method public getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWidth()F
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "width"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getX()F
    .locals 4

    .line 112
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "x"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public getY()F
    .locals 4

    .line 120
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "y"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    return-void
.end method

.method protected initChildrenDescendants(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 4

    .line 194
    iget-object v0, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    .line 195
    iput-object p0, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    .line 197
    iget-object v1, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/controller/DfController;

    const/4 v3, -0x1

    .line 198
    invoke-virtual {v2, p1, v3}, Lcom/metamoji/df/controller/DfController;->initDescendants(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 199
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 202
    :cond_1
    iput-object v0, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    return-void
.end method

.method public initDescendants(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 1

    .line 176
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 178
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 182
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfController;->initChildrenDescendants(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 183
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_0
    return-void

    .line 187
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/df/controller/DfController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    return-void
.end method

.method public insertChildAt(ILcom/metamoji/df/controller/DfController;)V
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    if-gez p1, :cond_0

    .line 338
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 340
    :cond_0
    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public isPurged()Ljava/lang/Boolean;
    .locals 1

    .line 54
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfController;->_purged:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public isValid()Z
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public loadResourceString(I)Ljava/lang/String;
    .locals 1

    .line 878
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_document:Lcom/metamoji/df/controller/DfDocument;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/DfDocument;->loadResourceString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public notifyGeometricPropsChangedToParent(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p0, p2}, Lcom/metamoji/df/controller/DfController;->geometricPropsChanged(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onOrientationChange(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public onViewportScrollChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public onViewportScrollStart(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public onViewportSizeChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public onViewportZoomChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public onViewportZoomEnd(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public onViewportZoomStart(Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public pageActivated(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    return-void
.end method

.method public pageController()Lcom/metamoji/df/controller/DfPageController;
    .locals 1

    .line 512
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_parent:Lcom/metamoji/df/controller/DfController;

    if-eqz v0, :cond_0

    .line 513
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    return-void
.end method

.method public paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 3

    .line 234
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/DfController;

    if-eqz v1, :cond_0

    .line 237
    :try_start_0
    invoke-virtual {v1, p1}, Lcom/metamoji/df/controller/DfController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 240
    const-string v2, "preDestroyController"

    invoke-static {v1, v2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeChild(Lcom/metamoji/df/controller/DfController;)V
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeChildAt(I)Lcom/metamoji/df/controller/DfController;
    .locals 2

    if-ltz p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/DfController;

    .line 365
    iget-object v1, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-object v0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public setContentScale(D)V
    .locals 3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    .line 143
    iget-object v1, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    .line 140
    const-string v2, "contentScale"

    if-eqz v0, :cond_0

    .line 141
    invoke-interface {v1, v2, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void

    .line 143
    :cond_0
    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    return-void
.end method

.method public setHeight(F)V
    .locals 4

    .line 108
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "height"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setPurged(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lcom/metamoji/df/controller/DfController;->_purged:Z

    return-void
.end method

.method public setRotation(D)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "rotation"

    invoke-interface {v0, v1, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method protected setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V
    .locals 13

    .line 612
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 617
    :cond_0
    iget-object v1, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz v1, :cond_1

    .line 618
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    iget-object v3, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getX()F

    move-result v1

    float-to-double v1, v1

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getY()F

    move-result v3

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/metamoji/cm/RectUtils;->Point(DD)Landroid/graphics/PointF;

    move-result-object v1

    .line 624
    :goto_0
    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz v2, :cond_2

    .line 625
    new-instance v2, Lcom/metamoji/cm/SizeF;

    iget-object v3, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v3, v3, Lcom/metamoji/cm/SizeF;->width:F

    iget-object v4, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v4, v4, Lcom/metamoji/cm/SizeF;->height:F

    invoke-direct {v2, v3, v4}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    goto :goto_1

    .line 627
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getWidth()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getHeight()F

    move-result v4

    float-to-double v4, v4

    invoke-static {v2, v3, v4, v5}, Lcom/metamoji/cm/RectUtils;->Size(DD)Lcom/metamoji/cm/SizeF;

    move-result-object v2

    .line 631
    :goto_1
    iget-object v3, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v3, :cond_3

    .line 632
    iget-object p1, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    float-to-double v3, p1

    goto :goto_2

    .line 634
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getRotation()D

    move-result-wide v3

    :goto_2
    const-wide/16 v5, 0x0

    cmpl-double p1, v5, v3

    if-eqz p1, :cond_4

    .line 640
    new-instance p1, Landroid/graphics/PointF;

    iget v5, v2, Lcom/metamoji/cm/SizeF;->width:F

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    iget v7, v2, Lcom/metamoji/cm/SizeF;->height:F

    div-float/2addr v7, v6

    invoke-direct {p1, v5, v7}, Landroid/graphics/PointF;-><init>(FF)V

    .line 641
    iget v5, p1, Landroid/graphics/PointF;->x:F

    float-to-double v5, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    iget v7, p1, Landroid/graphics/PointF;->y:F

    float-to-double v7, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    sub-double/2addr v5, v7

    iget v7, p1, Landroid/graphics/PointF;->x:F

    float-to-double v7, v7

    .line 642
    invoke-static {v3, v4}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double/2addr v7, v9

    iget v9, p1, Landroid/graphics/PointF;->y:F

    float-to-double v9, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v9, v11

    add-double/2addr v7, v9

    .line 641
    invoke-static {v5, v6, v7, v8}, Lcom/metamoji/cm/RectUtils;->Point(DD)Landroid/graphics/PointF;

    move-result-object v5

    .line 643
    iget v6, v1, Landroid/graphics/PointF;->x:F

    iget v7, v5, Landroid/graphics/PointF;->x:F

    iget v8, p1, Landroid/graphics/PointF;->x:F

    sub-float/2addr v7, v8

    sub-float/2addr v6, v7

    iput v6, v1, Landroid/graphics/PointF;->x:F

    .line 644
    iget v6, v1, Landroid/graphics/PointF;->y:F

    iget v5, v5, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v5, p1

    sub-float/2addr v6, v5

    iput v6, v1, Landroid/graphics/PointF;->y:F

    .line 647
    :cond_4
    iget p1, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 648
    iget p1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 649
    iget p1, v2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 650
    iget p1, v2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    double-to-float p1, v3

    .line 651
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    return-void
.end method

.method public setSpritePosition(FF)V
    .locals 1

    .line 599
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 601
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 602
    invoke-virtual {v0, p2}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    :cond_0
    return-void
.end method

.method public setWidth(F)V
    .locals 4

    .line 100
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "width"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setX(F)V
    .locals 4

    .line 116
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "x"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public setY(F)V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "y"

    float-to-double v2, p1

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    return-void
.end method

.method public traverse(Lcom/metamoji/df/controller/IControllerEvaluateHandler;)Ljava/lang/Object;
    .locals 2

    .line 436
    invoke-interface {p1, p0}, Lcom/metamoji/df/controller/IControllerEvaluateHandler;->Evaluate(Lcom/metamoji/df/controller/DfController;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 440
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/DfController;

    .line 441
    invoke-virtual {v1, p1}, Lcom/metamoji/df/controller/DfController;->traverse(Lcom/metamoji/df/controller/IControllerEvaluateHandler;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public unbindFromSpriteTree(Lcom/metamoji/df/controller/DfController;)V
    .locals 1

    .line 681
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getBindSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->removeChild(Lcom/metamoji/df/sprite/Sprite;)V

    return-void
.end method

.method public workareaChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    return-void
.end method
