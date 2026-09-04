.class public abstract Lcom/metamoji/df/controller/DfDocument;
.super Ljava/lang/Object;
.source "DfDocument.java"


# instance fields
.field protected _attachmentManager:Lcom/metamoji/df/controller/AttachmentsManager;

.field protected _controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

.field protected _displaySize:Lcom/metamoji/cm/SizeF;

.field protected _fromTemplate:Z

.field protected _modelManager:Lcom/metamoji/df/model/IModelManager;

.field protected _rootController:Lcom/metamoji/df/controller/DfNoteController;

.field protected _settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

.field protected _settingsManager:Lcom/metamoji/df/controller/SettingsManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcom/metamoji/df/controller/DfDocument;->_fromTemplate:Z

    return-void
.end method

.method private dumpController(Ljava/lang/StringBuilder;Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)V
    .locals 6

    .line 261
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    const-string v0, "Class="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 263
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 264
    const-string v0, " Type="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 265
    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string v0, " Model="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 269
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, " (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 272
    :cond_0
    const-string v0, "(null)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    :goto_0
    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getWidth()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getRotation()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, " x=%4.4f, y=%4.4f, width=%4.4f, height=%4.4f rotation=%4.4f%n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 276
    invoke-virtual {p2}, Lcom/metamoji/df/controller/DfController;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/DfController;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/df/controller/DfDocument;->dumpController(Ljava/lang/StringBuilder;Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private dumpModel(Ljava/lang/StringBuilder;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 3

    .line 282
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 283
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelID()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Model=%s (%d)%n"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getChildModels()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 285
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/df/controller/DfDocument;->dumpModel(Ljava/lang/StringBuilder;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpSprite(Ljava/lang/StringBuilder;Lcom/metamoji/df/sprite/Sprite;Ljava/lang/String;)V
    .locals 3

    .line 290
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 292
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {p2}, Lcom/metamoji/df/sprite/Sprite;->getChildren()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/sprite/Sprite;

    .line 294
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/df/controller/DfDocument;->dumpSprite(Ljava/lang/StringBuilder;Lcom/metamoji/df/sprite/Sprite;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public bindToWindow()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->bindToWindow()V

    return-void
.end method

.method public createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;
    .locals 1

    .line 190
    new-instance v0, Lcom/metamoji/df/controller/ControllerContext;

    invoke-direct {v0}, Lcom/metamoji/df/controller/ControllerContext;-><init>()V

    .line 191
    iput-object p1, v0, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    .line 192
    iget-object p1, p0, Lcom/metamoji/df/controller/DfDocument;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    iput-object p1, v0, Lcom/metamoji/df/controller/ControllerContext;->factory:Lcom/metamoji/df/controller/ControllerFactory;

    .line 193
    iget-object p1, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    iput-object p1, v0, Lcom/metamoji/df/controller/ControllerContext;->settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 194
    iput-object p0, v0, Lcom/metamoji/df/controller/ControllerContext;->document:Lcom/metamoji/df/controller/DfDocument;

    .line 195
    iget-object p1, p0, Lcom/metamoji/df/controller/DfDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    iput-object p1, v0, Lcom/metamoji/df/controller/ControllerContext;->modelManager:Lcom/metamoji/df/model/IModelManager;

    const/4 p1, 0x0

    .line 196
    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/ControllerContext;->setPurged(Z)V

    .line 197
    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/ControllerContext;->setClosed(Z)V

    .line 198
    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/ControllerContext;->setRestored(Z)V

    return-object v0
.end method

.method public destroy()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Lcom/metamoji/df/controller/DfDocument;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v0

    const/4 v2, 0x1

    .line 148
    invoke-virtual {v0, v2}, Lcom/metamoji/df/controller/ControllerContext;->setClosed(Z)V

    .line 149
    iget-object v2, p0, Lcom/metamoji/df/controller/DfDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/controller/DfNoteController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 150
    iget-object v2, p0, Lcom/metamoji/df/controller/DfDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/controller/DfNoteController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 151
    iput-object v1, p0, Lcom/metamoji/df/controller/DfDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_1

    .line 155
    iput-object v1, p0, Lcom/metamoji/df/controller/DfDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_attachmentManager:Lcom/metamoji/df/controller/AttachmentsManager;

    if-eqz v0, :cond_2

    .line 158
    invoke-virtual {v0}, Lcom/metamoji/df/controller/AttachmentsManager;->destroy()V

    .line 159
    iput-object v1, p0, Lcom/metamoji/df/controller/DfDocument;->_attachmentManager:Lcom/metamoji/df/controller/AttachmentsManager;

    .line 166
    :cond_2
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    if-eqz v0, :cond_3

    .line 167
    invoke-virtual {v0}, Lcom/metamoji/df/controller/SettingsManager;->destroy()V

    .line 168
    iput-object v1, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    .line 172
    :cond_3
    iput-object v1, p0, Lcom/metamoji/df/controller/DfDocument;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    .line 173
    iput-object v1, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    return-void
.end method

.method public dump()V
    .locals 3

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    const-string v1, "Dump Controllers...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfDocument;->getRootController()Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    const-string v2, "--"

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/df/controller/DfDocument;->dumpController(Ljava/lang/StringBuilder;Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 306
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    const-string v1, "Dump Models...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfDocument;->getRootController()Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfController;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/df/controller/DfDocument;->dumpModel(Ljava/lang/StringBuilder;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 312
    const-string v1, "Dump Sprites...\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfDocument;->getRootController()Lcom/metamoji/df/controller/DfController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-direct {p0, v0, v1, v2}, Lcom/metamoji/df/controller/DfDocument;->dumpSprite(Ljava/lang/StringBuilder;Lcom/metamoji/df/sprite/Sprite;Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method public abstract getAndroidContext()Landroid/content/Context;
.end method

.method public getAttachmentManager()Lcom/metamoji/df/controller/AttachmentsManager;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_attachmentManager:Lcom/metamoji/df/controller/AttachmentsManager;

    return-object v0
.end method

.method public getControllerFactory()Lcom/metamoji/df/controller/ControllerFactory;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    return-object v0
.end method

.method public getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 230
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/ControllerFactory;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    return-object p1
.end method

.method public getDisplaySize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_displaySize:Lcom/metamoji/cm/SizeF;

    return-object v0
.end method

.method public getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;
    .locals 1

    .line 240
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/controller/SettingsManager;->getSettings(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMainView()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfNoteController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getModelManager()Lcom/metamoji/df/model/IModelManager;
    .locals 1

    .line 257
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    return-object v0
.end method

.method public getRootController()Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    return-object v0
.end method

.method public getSettingsManager()Lcom/metamoji/df/controller/SettingsManager;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    return-object v0
.end method

.method public init(Lcom/metamoji/df/controller/IOwnerView;Lcom/metamoji/df/model/IModelManager;Lcom/metamoji/df/controller/ControllerFactory;Lcom/metamoji/df/controller/SettingsFactory;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 42
    iput-object p2, p0, Lcom/metamoji/df/controller/DfDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    .line 45
    iput-object p3, p0, Lcom/metamoji/df/controller/DfDocument;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    .line 51
    iput-object p4, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 54
    invoke-interface {p2}, Lcom/metamoji/df/model/IModelManager;->getRootModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    .line 55
    new-instance p3, Lcom/metamoji/df/controller/SettingsManager;

    invoke-direct {p3}, Lcom/metamoji/df/controller/SettingsManager;-><init>()V

    iput-object p3, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsManager:Lcom/metamoji/df/controller/SettingsManager;

    .line 56
    iget-object p4, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    invoke-virtual {p3, p2, p4}, Lcom/metamoji/df/controller/SettingsManager;->init(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/SettingsFactory;)V

    .line 59
    new-instance p3, Lcom/metamoji/df/controller/AttachmentsManager;

    invoke-direct {p3, p2}, Lcom/metamoji/df/controller/AttachmentsManager;-><init>(Lcom/metamoji/df/model/IModel;)V

    iput-object p3, p0, Lcom/metamoji/df/controller/DfDocument;->_attachmentManager:Lcom/metamoji/df/controller/AttachmentsManager;

    const/4 p3, 0x0

    .line 68
    invoke-virtual {p0, p6, p3}, Lcom/metamoji/df/controller/DfDocument;->updateControllerContext(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p3

    .line 69
    invoke-interface {p1}, Lcom/metamoji/df/controller/IOwnerView;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/metamoji/df/controller/ControllerContext;->setViewport(Lcom/metamoji/df/sprite/Viewport;)V

    .line 70
    iget-object p1, p0, Lcom/metamoji/df/controller/DfDocument;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Lcom/metamoji/df/controller/ControllerFactory;->createAsDepthFirst(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;I)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/DfNoteController;

    iput-object p1, p0, Lcom/metamoji/df/controller/DfDocument;->_rootController:Lcom/metamoji/df/controller/DfNoteController;

    const/4 p2, -0x1

    .line 71
    invoke-virtual {p1, p3, p2}, Lcom/metamoji/df/controller/DfNoteController;->initDescendants(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 73
    iput-object p5, p0, Lcom/metamoji/df/controller/DfDocument;->_displaySize:Lcom/metamoji/cm/SizeF;

    return-void
.end method

.method public isFromTemplate()Z
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/metamoji/df/controller/DfDocument;->_fromTemplate:Z

    return v0
.end method

.method loadResourceString(I)Ljava/lang/String;
    .locals 1

    .line 324
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfDocument;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public saveModels()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/metamoji/df/controller/DfDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    if-eqz v0, :cond_0

    .line 182
    new-instance v1, Lcom/metamoji/df/model/ModelManagerSaveContext;

    invoke-direct {v1}, Lcom/metamoji/df/model/ModelManagerSaveContext;-><init>()V

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModelManager;->ensureSavedToStateData(Lcom/metamoji/df/model/ModelManagerSaveContext;)V

    :cond_0
    return-void
.end method

.method public updateControllerContext(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;
    .locals 0

    if-nez p1, :cond_0

    .line 205
    invoke-virtual {p0, p2}, Lcom/metamoji/df/controller/DfDocument;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object p1

    return-object p1

    .line 207
    :cond_0
    iput-object p2, p1, Lcom/metamoji/df/controller/ControllerContext;->parent:Lcom/metamoji/df/controller/DfController;

    .line 208
    iget-object p2, p0, Lcom/metamoji/df/controller/DfDocument;->_controllerFactory:Lcom/metamoji/df/controller/ControllerFactory;

    iput-object p2, p1, Lcom/metamoji/df/controller/ControllerContext;->factory:Lcom/metamoji/df/controller/ControllerFactory;

    .line 209
    iget-object p2, p0, Lcom/metamoji/df/controller/DfDocument;->_settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    iput-object p2, p1, Lcom/metamoji/df/controller/ControllerContext;->settingsFactory:Lcom/metamoji/df/controller/SettingsFactory;

    .line 210
    iput-object p0, p1, Lcom/metamoji/df/controller/ControllerContext;->document:Lcom/metamoji/df/controller/DfDocument;

    .line 211
    iget-object p2, p0, Lcom/metamoji/df/controller/DfDocument;->_modelManager:Lcom/metamoji/df/model/IModelManager;

    iput-object p2, p1, Lcom/metamoji/df/controller/ControllerContext;->modelManager:Lcom/metamoji/df/model/IModelManager;

    const/4 p2, 0x0

    .line 212
    invoke-virtual {p1, p2}, Lcom/metamoji/df/controller/ControllerContext;->setPurged(Z)V

    .line 213
    invoke-virtual {p1, p2}, Lcom/metamoji/df/controller/ControllerContext;->setClosed(Z)V

    .line 214
    invoke-virtual {p1, p2}, Lcom/metamoji/df/controller/ControllerContext;->setRestored(Z)V

    .line 215
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->clearExtData()V

    return-object p1
.end method
