.class public Lcom/metamoji/un/web/UnWebUnit;
.super Lcom/metamoji/un/image/UnImageUnit;
.source "UnWebUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/web/UnWebUnit$ModelDef;,
        Lcom/metamoji/un/web/UnWebUnit$UndoModelDef;,
        Lcom/metamoji/un/web/UnWebUnit$WebUnitUndoPerformer;,
        Lcom/metamoji/un/web/UnWebUnit$ContextDef;
    }
.end annotation


# static fields
.field public static final MODELTYPE:Ljava/lang/String; = "$web"


# instance fields
.field private _requestURL:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/un/image/UnImageUnit;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static createWebModel(Lcom/metamoji/df/model/IModelManager;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;
    .locals 3

    .line 114
    const-string v0, "$web"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 115
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 116
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v1

    const-string/jumbo v2, "unit"

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "unitId"

    invoke-interface {p0, v2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v1, "imageTicket"

    invoke-interface {p0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    const-string p1, "hasShadow"

    invoke-interface {p0, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Z)V

    return-object p0
.end method

.method private handleURLDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 7

    .line 480
    new-instance v0, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;-><init>(Ljava/lang/Object;)V

    .line 485
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 486
    invoke-virtual {v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getRequestURL()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 487
    const-string v3, "requestURL"

    invoke-interface {p1, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 488
    invoke-interface {p1, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    invoke-direct {p0}, Lcom/metamoji/un/web/UnWebUnit;->restoreRequestURLItem()V

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 493
    :goto_0
    invoke-virtual {v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getTicket()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 494
    const-string v5, "imageTicket"

    invoke-interface {p1, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 495
    invoke-interface {p1, v5, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 497
    iget-object p1, p0, Lcom/metamoji/un/web/UnWebUnit;->_image:Lcom/metamoji/cm/SharedReference;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/web/UnWebUnit;->_image:Lcom/metamoji/cm/SharedReference;

    invoke-virtual {p1}, Lcom/metamoji/cm/SharedReference;->newRef()Lcom/metamoji/cm/SharedReference;

    move-result-object p1

    move-object v4, p1

    .line 498
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->releaseImage()V

    goto :goto_2

    :cond_2
    move v2, v1

    .line 501
    :goto_2
    :try_start_0
    invoke-virtual {p0, v0, p2, v2}, Lcom/metamoji/un/web/UnWebUnit;->handleMaskingDirectionData(Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;Lcom/metamoji/ns/direction/INsDirectionObserver;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v4, :cond_3

    .line 502
    invoke-virtual {v4}, Lcom/metamoji/cm/SharedReference;->close()V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    if-eqz v4, :cond_4

    .line 500
    :try_start_1
    invoke-virtual {v4}, Lcom/metamoji/cm/SharedReference;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p2

    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    throw p1
.end method

.method public static isEditableUnit(Lcom/metamoji/un/web/UnWebUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z
    .locals 6

    .line 507
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    .line 508
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v1

    .line 509
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    .line 511
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_8

    .line 514
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    .line 515
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result v2

    if-nez v2, :cond_0

    .line 516
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitController;

    .line 517
    invoke-virtual {v2, p0}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object p0

    .line 518
    invoke-static {p0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result p0

    if-nez p0, :cond_0

    return v4

    .line 525
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->isCollabo()Z

    move-result p0

    if-nez p0, :cond_1

    return v5

    .line 530
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    .line 531
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result p0

    if-eq p0, v5, :cond_2

    const/4 p2, 0x2

    if-eq p0, p2, :cond_5

    const/4 p1, 0x3

    if-eq p0, p1, :cond_7

    goto/16 :goto_0

    .line 534
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->isOfflineEditMode()Z

    move-result p0

    if-eqz p0, :cond_3

    return v5

    .line 539
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 540
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    return v5

    :cond_4
    if-eqz p0, :cond_5

    .line 547
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p0

    if-ne p0, v5, :cond_5

    return v5

    .line 555
    :cond_5
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 556
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 557
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtNoteController;->getBelongGroupDic(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p2

    if-eqz p0, :cond_6

    if-eqz p2, :cond_6

    .line 558
    const-string v1, "group-id"

    invoke-static {p2, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    return v5

    :cond_6
    if-eqz p0, :cond_7

    .line 565
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result p0

    if-ne p0, v5, :cond_7

    return v5

    .line 573
    :cond_7
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "system:personal"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v5

    .line 588
    :cond_8
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_9

    return v5

    .line 591
    :cond_9
    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result p0

    if-nez p0, :cond_b

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result p0

    if-nez p0, :cond_b

    .line 592
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerType()Ljava/lang/String;

    move-result-object p0

    .line 593
    const-string/jumbo p1, "system:common"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    const-string/jumbo p1, "system:edit"

    .line 594
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    :cond_a
    return v5

    :cond_b
    :goto_0
    return v4
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 347
    new-instance v0, Lcom/metamoji/un/web/UnWebUnit$WebUnitUndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/web/UnWebUnit$WebUnitUndoPerformer;-><init>(Lcom/metamoji/un/web/UnWebUnit-IA;)V

    .line 349
    const-string/jumbo v1, "weburlundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private restoreRequestURLItem()V
    .locals 2

    .line 147
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "requestURL"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/web/UnWebUnit;->_requestURL:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "https://www.google.com"

    iput-object v0, p0, Lcom/metamoji/un/web/UnWebUnit;->_requestURL:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private storeRequestURLItem(Ljava/lang/String;)V
    .locals 2

    .line 157
    iput-object p1, p0, Lcom/metamoji/un/web/UnWebUnit;->_requestURL:Ljava/lang/String;

    .line 158
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string v1, "requestURL"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 357
    const-string/jumbo v0, "weburlundo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method public static updateModelVersion(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 92
    const-string v0, "maskQCurvePath"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->hasProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 93
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 95
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    return-void
.end method


# virtual methods
.method public getRequestURL()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/metamoji/un/web/UnWebUnit;->_requestURL:Ljava/lang/String;

    return-object v0
.end method

.method protected handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 1

    .line 437
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v0

    .line 438
    invoke-static {v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 439
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/web/UnWebUnit;->handleURLDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 441
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/metamoji/un/image/UnImageUnit;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 138
    iget-object p1, p0, Lcom/metamoji/un/web/UnWebUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const-string/jumbo v0, "webUnit"

    iput-object v0, p1, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Lcom/metamoji/un/web/UnWebUnit;->restoreRequestURLItem()V

    return-void
.end method

.method public linkHitTest(Landroid/graphics/PointF;)Ljava/lang/String;
    .locals 0

    .line 421
    iget-object p1, p0, Lcom/metamoji/un/web/UnWebUnit;->_requestURL:Ljava/lang/String;

    return-object p1
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 290
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 291
    const-string/jumbo v1, "weburlundo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/web/UnWebUnit;->performUrlUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    .line 294
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/image/UnImageUnit;->performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public performUrlUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 305
    const-string v0, "oru"

    goto :goto_0

    :cond_0
    const-string v0, "nru"

    .line 307
    :goto_0
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 309
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    const-string v2, "requestURL"

    invoke-interface {v1, v2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/web/UnWebUnit;->restoreRequestURLItem()V

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->updateSprite()V

    .line 318
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->isDirectable()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    .line 319
    const-string p1, "odi"

    goto :goto_1

    :cond_2
    const-string p1, "ndi"

    .line 320
    :goto_1
    new-instance v0, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;-><init>(Ljava/lang/Object;)V

    .line 321
    invoke-virtual {p0, v0}, Lcom/metamoji/un/web/UnWebUnit;->sendURLDirection(Lcom/metamoji/un/web/direction/UnWebURLDirectionData;)V

    .line 322
    invoke-virtual {v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->detachDirection()Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public replaceURL(Ljava/lang/String;Lcom/metamoji/cm/Blob;)V
    .locals 22

    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 180
    invoke-virtual {v1, v0}, Lcom/metamoji/un/web/UnWebUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v2

    .line 182
    :try_start_0
    const-string/jumbo v0, "weburlundo"

    const/4 v3, 0x1

    invoke-static {v1, v0, v3}, Lcom/metamoji/un/web/UnWebUnit$WebUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 183
    invoke-virtual {v1}, Lcom/metamoji/un/web/UnWebUnit;->isDirectable()Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 184
    const-string v5, "maskQCurvePath"

    const-string v8, "opacity"

    const-string v9, "maskHeight"

    const-string v10, "maskWidth"

    const-string v11, "maskOffsetY"

    const-string v12, "maskOffsetX"

    const-string v13, "height"

    const-string/jumbo v14, "width"

    const-string/jumbo v15, "y"

    const-string/jumbo v3, "x"

    const-string v6, "imageTicket"

    const-string v7, "requestURL"

    move-object/from16 v16, v2

    if-eqz v4, :cond_0

    .line 185
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/web/UnWebUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 186
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/web/UnWebUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/web/direction/UnWebURLDirectionData;

    move-result-object v2

    move/from16 v17, v4

    .line 187
    invoke-interface {v1, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setRequestURL(Ljava/lang/String;)V

    .line 188
    invoke-interface {v1, v6}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setTicket(Ljava/lang/String;)V

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    const-wide/16 v6, 0x0

    .line 189
    invoke-interface {v1, v3, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setOffsetX(F)V

    .line 190
    invoke-interface {v1, v15, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setOffsetY(F)V

    .line 191
    invoke-interface {v1, v14, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setWidth(F)V

    .line 192
    invoke-interface {v1, v13, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setHeight(F)V

    .line 193
    invoke-interface {v1, v12, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskOffsetX(F)V

    .line 194
    invoke-interface {v1, v11, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskOffsetY(F)V

    .line 195
    invoke-interface {v1, v10, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskWidth(F)V

    .line 196
    invoke-interface {v1, v9, v6, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v4, v4

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskHeight(F)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 197
    invoke-interface {v1, v8, v4, v5}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v4, v6

    invoke-virtual {v2, v4}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setImageOpacity(F)V

    move-object/from16 v4, v19

    .line 198
    invoke-interface {v1, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V

    .line 200
    const-string v1, "odi"

    invoke-virtual {v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->detachDirection()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move/from16 v17, v4

    move-object v4, v5

    move-object/from16 v20, v6

    move-object/from16 v18, v7

    .line 202
    :goto_0
    const-string v1, "oru"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-object/from16 v2, p0

    :try_start_2
    iget-object v5, v2, Lcom/metamoji/un/web/UnWebUnit;->_requestURL:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-direct/range {p0 .. p1}, Lcom/metamoji/un/web/UnWebUnit;->storeRequestURLItem(Ljava/lang/String;)V

    .line 204
    const-string v1, "nru"

    iget-object v5, v2, Lcom/metamoji/un/web/UnWebUnit;->_requestURL:Ljava/lang/String;

    invoke-interface {v0, v1, v5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    move-object/from16 v1, v16

    const/4 v5, 0x1

    .line 207
    :try_start_3
    invoke-virtual {v1, v0, v5}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    move-object/from16 v5, p2

    .line 208
    invoke-super {v2, v5, v1}, Lcom/metamoji/un/image/UnImageUnit;->setImage(Lcom/metamoji/cm/Blob;Lcom/metamoji/df/controller/EditContext;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-eqz v17, :cond_1

    .line 212
    :try_start_4
    invoke-virtual {v2}, Lcom/metamoji/un/web/UnWebUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 213
    invoke-virtual {v2}, Lcom/metamoji/un/web/UnWebUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object v6

    invoke-static {v6}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/web/direction/UnWebURLDirectionData;

    move-result-object v6

    move-object/from16 v7, v18

    .line 214
    invoke-interface {v5, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setRequestURL(Ljava/lang/String;)V

    move-object/from16 v7, v20

    .line 215
    invoke-interface {v5, v7}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setTicket(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v7, v0

    move-object/from16 v16, v1

    const-wide/16 v0, 0x0

    .line 216
    :try_start_5
    invoke-interface {v5, v3, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6, v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setOffsetX(F)V

    .line 217
    invoke-interface {v5, v15, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6, v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setOffsetY(F)V

    .line 218
    invoke-interface {v5, v14, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6, v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setWidth(F)V

    .line 219
    invoke-interface {v5, v13, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6, v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setHeight(F)V

    .line 220
    invoke-interface {v5, v12, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6, v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskOffsetX(F)V

    .line 221
    invoke-interface {v5, v11, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6, v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskOffsetY(F)V

    .line 222
    invoke-interface {v5, v10, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v6, v2}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskWidth(F)V

    .line 223
    invoke-interface {v5, v9, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v6, v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskHeight(F)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 224
    invoke-interface {v5, v8, v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {v6, v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setImageOpacity(F)V

    .line 225
    invoke-interface {v5, v4}, Lcom/metamoji/df/model/IModel;->getPropertyAsPointArray(Ljava/lang/String;)Lcom/metamoji/cm/PointArray;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setMaskQCurvePathPoints(Lcom/metamoji/cm/PointArray;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    move-object/from16 v1, p0

    .line 227
    :try_start_6
    invoke-virtual {v1, v6}, Lcom/metamoji/un/web/UnWebUnit;->sendURLDirection(Lcom/metamoji/un/web/direction/UnWebURLDirectionData;)V

    .line 228
    const-string v0, "ndi"

    invoke-virtual {v6}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->detachDirection()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v7, v0, v2}, Lcom/metamoji/df/model/IModel;->setPropertyWithObject(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_2

    :cond_1
    move-object/from16 v16, v1

    move-object v1, v2

    :goto_1
    move-object/from16 v2, v16

    .line 231
    invoke-virtual {v1, v2}, Lcom/metamoji/un/web/UnWebUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_2
    move-exception v0

    move-object/from16 v21, v2

    move-object v2, v1

    move-object/from16 v1, v21

    goto :goto_4

    :catchall_3
    move-exception v0

    :goto_2
    move-object v1, v2

    goto :goto_3

    :catchall_4
    move-exception v0

    move-object/from16 v1, p0

    :goto_3
    move-object/from16 v2, v16

    goto :goto_4

    :catchall_5
    move-exception v0

    :goto_4
    invoke-virtual {v1, v2}, Lcom/metamoji/un/web/UnWebUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 232
    throw v0
.end method

.method sendURLDirection(Lcom/metamoji/un/web/direction/UnWebURLDirectionData;)V
    .locals 8

    .line 449
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 454
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 455
    invoke-virtual {p1}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getTicket()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 456
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/metamoji/nt/INtAppFrame;->shareAttachmentsOnCollaboByTickets(Ljava/util/Collection;)V

    .line 459
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 461
    invoke-virtual {p1}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 462
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 465
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 466
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 461
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 0

    .line 73
    invoke-direct {p0, p1}, Lcom/metamoji/un/web/UnWebUnit;->storeRequestURLItem(Ljava/lang/String;)V

    return-void
.end method

.method protected updateModelVersion()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/metamoji/un/web/UnWebUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v0}, Lcom/metamoji/un/web/UnWebUnit;->updateModelVersion(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public updateWebPage()V
    .locals 5

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/un/web/UnWebUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/un/web/UnWebUnit;->_requestURL:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/metamoji/nt/INtEditor;->prepareWebPage(Ljava/lang/String;Ljava/lang/String;ZZ)V

    return-void
.end method
