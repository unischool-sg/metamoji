.class public Lcom/metamoji/un/flip/UnFlipUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnFlipUnit.java"

# interfaces
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;
.implements Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/flip/UnFlipUnit$ModelDef;,
        Lcom/metamoji/un/flip/UnFlipUnit$UndoModelDef;,
        Lcom/metamoji/un/flip/UnFlipUnit$UnFlipUnitUndoPerformer;
    }
.end annotation


# static fields
.field public static final ANIMATION_DELAY:J = 0x96L

.field static final FLIP_UNIT_KNOB_WIDTH:F = 10.0f

.field public static final MMJ_FLIP_UNIT_FLIP_STATE_HIDDEN:I = 0x1

.field public static final MMJ_FLIP_UNIT_FLIP_STATE_VISIBLE:I = 0x0

.field public static final MODELTYPE:Ljava/lang/String; = "$flipunit"


# instance fields
.field animation_:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

.field duringAnimation_:Z

.field public isSelected:Z

.field registerCollabo_:Z


# direct methods
.method public static synthetic $r8$lambda$AiCvIwlh1ZYgPpVzpTGKdD2xjOM(Lcom/metamoji/un/flip/UnFlipUnit;ZLcom/metamoji/ns/direction/INsDirectionObserver;ZIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/metamoji/un/flip/UnFlipUnit;->lambda$handleFlipStateDirection$3(ZLcom/metamoji/ns/direction/INsDirectionObserver;ZIZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$N2X6jsOBFMVVhuAjlHsEx8XEVtQ(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/un/flip/UnFlipUnit;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->lambda$prepareToAnimation$1(Lcom/metamoji/un/flip/UnFlipUnit;Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Qs7UfLfM28zlZSHpu4KLjvwkO2w(Lcom/metamoji/un/flip/UnFlipUnit;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnit;->lambda$handleTap$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pmRGQiETc5uVGyO0XK_opl0hOzY(Lcom/metamoji/un/flip/UnFlipUnit;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->lambda$startAnimation$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$xfN8cibRi19CxbRLFZRTPYlD1wo(Lcom/metamoji/un/flip/UnFlipUnit;ZIZLcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/metamoji/un/flip/UnFlipUnit;->lambda$handleFlipStateDirection$4(ZIZLcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 91
    iput-boolean p1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->duringAnimation_:Z

    return-void
.end method

.method public static createFlipUnitModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 80
    const-string v0, "$flipunit"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 81
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 82
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string/jumbo v1, "unit"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private getUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;
    .locals 1

    .line 131
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFlipUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object v0

    return-object v0
.end method

.method private handleBackgroundColorDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 920
    new-instance v0, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;-><init>(Ljava/lang/Object;)V

    .line 921
    invoke-virtual {v0}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->getBackgroundColor()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 922
    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/un/flip/UnFlipUnit;->setBackgroundColor(Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 923
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 924
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_0
    return-void
.end method

.method private handleFlipStateDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 7

    .line 955
    new-instance v0, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;-><init>(Ljava/lang/Object;)V

    .line 956
    invoke-virtual {v0}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->getFlipState()I

    move-result v4

    .line 957
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object p1

    .line 958
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    .line 959
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v1

    if-eq v1, v4, :cond_0

    .line 960
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isVisibleProgressView()Z

    move-result v1

    if-nez v1, :cond_0

    .line 961
    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->isLogModeProgressDisabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 962
    invoke-virtual {p1}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    move v3, p1

    xor-int/lit8 v5, v3, 0x1

    .line 964
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v1, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;

    move-object v2, p0

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/flip/UnFlipUnit;ZIZLcom/metamoji/ns/direction/INsDirectionObserver;)V

    invoke-virtual {p1, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$handleFlipStateDirection$3(ZLcom/metamoji/ns/direction/INsDirectionObserver;ZIZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 976
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    .line 978
    :cond_0
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 979
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    if-eqz p3, :cond_2

    const/4 p1, 0x1

    if-ne p4, p1, :cond_1

    .line 983
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    :cond_1
    if-eqz p5, :cond_2

    .line 987
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->startAnimation()V

    :cond_2
    return-void
.end method

.method private synthetic lambda$handleFlipStateDirection$4(ZIZLcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 967
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->prepareToAnimation()Z

    move-result v1

    move v8, v1

    goto :goto_0

    :cond_0
    move v8, v0

    :goto_0
    const/4 v1, 0x0

    .line 972
    invoke-virtual {p0, p2, v0, v1, v0}, Lcom/metamoji/un/flip/UnFlipUnit;->setFlipState(IZLcom/metamoji/df/controller/EditContext;Z)Z

    .line 974
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;

    move-object v3, p0

    move v6, p1

    move v7, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v2 .. v8}, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/flip/UnFlipUnit;ZLcom/metamoji/ns/direction/INsDirectionObserver;ZIZ)V

    const-wide/16 p1, 0x96

    invoke-virtual {v0, v2, p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$handleTap$0(Z)V
    .locals 0

    .line 630
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->toggleFlipState()V

    if-eqz p1, :cond_0

    .line 633
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->startAnimation()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$prepareToAnimation$1(Lcom/metamoji/un/flip/UnFlipUnit;Landroidx/fragment/app/FragmentActivity;)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->animation_:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    if-nez v0, :cond_0

    .line 682
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 683
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 684
    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    invoke-direct {v1, v0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->animation_:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    .line 685
    invoke-virtual {v1, p1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->setAnimationDelegate(Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;)V

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->animation_:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    invoke-virtual {p1, p2}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->prepareToAnimation(Landroidx/fragment/app/FragmentActivity;)V

    return-void
.end method

.method private synthetic lambda$startAnimation$2()V
    .locals 1

    .line 697
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->animation_:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    invoke-virtual {v0}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->startAnimation()V

    return-void
.end method

.method private performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 270
    invoke-static {p0, p2, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->performUndo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Z)V

    .line 272
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 275
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    return-void
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 248
    new-instance v0, Lcom/metamoji/un/flip/UnFlipUnit$UnFlipUnitUndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/flip/UnFlipUnit$UnFlipUnitUndoPerformer;-><init>(Lcom/metamoji/un/flip/UnFlipUnit-IA;)V

    .line 249
    const-string v1, "flipUnitUndo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 250
    const-string v1, "flipUnitGeopropUndo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 251
    const-string v1, "flipUnitBackgroundColor"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 252
    const-string v1, "flipUnitFlipState"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private sendBackgroundColorDirection(Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;)V
    .locals 8

    .line 897
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 901
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 903
    invoke-virtual {p1}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 904
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 907
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 908
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 903
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 911
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->destroy()V

    return-void
.end method

.method private sendFlipStateDirection(Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;)V
    .locals 8

    .line 933
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 937
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 939
    invoke-virtual {p1}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 940
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 943
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 944
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 939
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 946
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->destroy()V

    return-void
.end method

.method private setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 447
    const-string v1, "flipUnitGeopropUndo"

    invoke-static {p0, v1, v0}, Lcom/metamoji/un/flip/UnFlipUnit$UnFlipUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 449
    invoke-static {p0, v1, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->pushUndoInfo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/GeometricProps;)V

    .line 451
    invoke-virtual {p2, v1, v0}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 455
    :cond_0
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz p2, :cond_1

    .line 456
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->setHeight(F)V

    .line 457
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->setWidth(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 460
    :goto_0
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz p2, :cond_2

    .line 461
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->setX(F)V

    .line 462
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->setY(F)V

    .line 464
    :cond_2
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz p2, :cond_3

    .line 465
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/flip/UnFlipUnit;->setRotation(D)V

    .line 467
    :cond_3
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz p2, :cond_4

    .line 468
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/flip/UnFlipUnit;->setContentScale(D)V

    .line 472
    :cond_4
    invoke-virtual {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    return v0
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 259
    const-string v0, "flipUnitUndo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 260
    const-string v0, "flipUnitGeopropUndo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 261
    const-string v0, "flipUnitBackgroundColor"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 262
    const-string v0, "flipUnitFlipState"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method


# virtual methods
.method public animationCompleted()V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->animation_:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 800
    invoke-virtual {v0, v1}, Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;->setAnimationDelegate(Lcom/metamoji/un/flip/ui/IUnFlipUnitAnimationDelegate;)V

    .line 801
    iput-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->animation_:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    :cond_0
    const/4 v0, 0x0

    .line 804
    iput-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->duringAnimation_:Z

    return-void
.end method

.method public animationEnding(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/un/flip/UnFlipUnit;",
            ">;)V"
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    return-void
.end method

.method public canFocus()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method createBackgroundColorUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 576
    const-string v0, "flipUnitBackgroundColor"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/flip/UnFlipUnit$UnFlipUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method createFlipStateUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 585
    const-string v0, "flipUnitFlipState"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/flip/UnFlipUnit$UnFlipUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method public doesNotConcernAboutHitTestPoint(Landroid/graphics/PointF;ZZZ)Z
    .locals 2

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result p2

    const/4 p3, 0x1

    const/4 p4, 0x0

    if-eq p2, p3, :cond_1

    .line 387
    new-instance p2, Landroid/graphics/RectF;

    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v0

    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v1

    invoke-direct {p2, p4, p4, v0, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 383
    :cond_1
    new-instance p2, Landroid/graphics/RectF;

    const/high16 v0, 0x41200000    # 10.0f

    invoke-direct {p2, p4, p4, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 391
    :goto_0
    iget p4, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, p4, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    xor-int/2addr p1, p3

    return p1
.end method

.method public getBackgroundColor()I
    .locals 1

    .line 479
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getBackgroundColorAsRaw()Ljava/lang/String;

    move-result-object v0

    .line 480
    invoke-static {v0}, Lcom/metamoji/un/flip/UnFlipUnitUtil;->colorFromString(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getBackgroundColorAsRaw()Ljava/lang/String;
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "backgroundColor"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 851
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFlipState()I
    .locals 3

    .line 528
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_model:Lcom/metamoji/df/model/IModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "flipState"

    invoke-interface {v0, v2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getFlipUnitBaseLocalBounds()Landroid/graphics/RectF;
    .locals 4

    .line 809
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getFlipUnitRectToView(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 4

    if-nez p1, :cond_0

    .line 815
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    .line 818
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipUnitBaseLocalBounds()Landroid/graphics/RectF;

    move-result-object v0

    .line 820
    new-instance v1, Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/un/flip/UnFlipUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    .line 821
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v0}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v2, p1}, Lcom/metamoji/un/flip/UnFlipUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 823
    new-instance v0, Landroid/graphics/RectF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v0, v2, v1, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getKnobRectToView(Landroid/view/View;)Landroid/graphics/RectF;
    .locals 4

    if-nez p1, :cond_0

    .line 829
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    return-object p1

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v0

    const/high16 v1, 0x41a00000    # 20.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 834
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41200000    # 10.0f

    .line 836
    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 838
    new-instance v0, Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/RectF;->left:F

    iget v3, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v0, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/un/flip/UnFlipUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 839
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v2, v3, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v2, p1}, Lcom/metamoji/un/flip/UnFlipUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 841
    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v3, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v2, v0, v3, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method public handleDirections(Ljava/util/List;Lcom/metamoji/ns/direction/INsDirectionObserver;Ljava/lang/Runnable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ns/direction/NsReceivedDirection;",
            ">;",
            "Lcom/metamoji/ns/direction/INsDirectionObserver;",
            "Ljava/lang/Runnable;",
            ")V"
        }
    .end annotation

    .line 863
    new-instance v0, Lcom/metamoji/df/controller/StageQueueingDisposer;

    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    .line 866
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/direction/NsReceivedDirection;

    .line 867
    invoke-virtual {p0, v1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 870
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 871
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 870
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 871
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 872
    throw p1
.end method

.method protected handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 882
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v0

    .line 883
    invoke-static {v0}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 884
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->handleBackgroundColorDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 885
    :cond_0
    invoke-static {v0}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 886
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->handleFlipStateDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 888
    :cond_1
    const-string p1, "flip unit received unknown direction."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public handleTap(Landroid/graphics/PointF;)V
    .locals 4

    .line 612
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 614
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 621
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v3, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v3

    invoke-direct {v0, v2, v2, v1, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    goto :goto_0

    .line 617
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-direct {v0, v2, v2, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 625
    :goto_0
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 626
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->prepareToAnimation()Z

    move-result p1

    .line 629
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/flip/UnFlipUnit;Z)V

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v1, v2, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 101
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    const/4 p1, 0x0

    .line 103
    iput-boolean p1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->registerCollabo_:Z

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->registerCollaboHandler()V

    .line 108
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->isCurrentPage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 111
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->enlistFlipUnit(Lcom/metamoji/un/flip/UnFlipUnit;)V

    :cond_0
    return-void
.end method

.method public isContainer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 2

    .line 594
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    move-result v0

    .line 596
    instance-of v1, p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    if-eqz v1, :cond_0

    .line 597
    check-cast p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 598
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->handleToolModeChangeEvent(Lcom/metamoji/nt/NtToolModeChangedContext;)V

    return v0

    .line 599
    :cond_0
    instance-of v1, p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    if-eqz v1, :cond_1

    .line 600
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    return v0

    .line 602
    :cond_1
    instance-of p1, p1, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;

    if-eqz p1, :cond_2

    .line 603
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    :cond_2
    return v0
.end method

.method public noRotating()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public pageActivated(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 403
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageActivated(Lcom/metamoji/df/controller/DfPageController;)V

    .line 405
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    .line 407
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->enlistFlipUnit(Lcom/metamoji/un/flip/UnFlipUnit;)V

    return-void
.end method

.method public pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 418
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V

    .line 420
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->delistFlipUnit(Lcom/metamoji/un/flip/UnFlipUnit;)V

    return-void
.end method

.method public paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 332
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    return-void
.end method

.method performBackgroundColorUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 283
    const-string p1, "ob"

    goto :goto_0

    :cond_0
    const-string p1, "nb"

    .line 285
    :goto_0
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 286
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/flip/UnFlipUnit;->setBackgroundColor(Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    return-void
.end method

.method performFlipStateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 294
    const-string p1, "os"

    goto :goto_0

    :cond_0
    const-string p1, "ns"

    :goto_0
    const/4 v0, 0x0

    .line 296
    invoke-interface {p2, p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 297
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/metamoji/un/flip/UnFlipUnit;->setFlipState(IZLcom/metamoji/df/controller/EditContext;Z)Z

    return-void
.end method

.method performFlipUnitUndoUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 227
    const-string p1, "ob"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 228
    const-string v1, "os"

    invoke-interface {p2, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    goto :goto_0

    .line 230
    :cond_0
    const-string p1, "nb"

    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 231
    const-string v1, "ns"

    invoke-interface {p2, v1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result p2

    :goto_0
    if-eqz p1, :cond_1

    .line 235
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "backgroundColor"

    invoke-interface {v0, v1, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "flipState"

    invoke-interface {p1, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 241
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 194
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "flipUnitFlipState"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "flipUnitBackgroundColor"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "flipUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v1, "flipUnitGeopropUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 210
    const-string/jumbo p1, "unknown undo model type (%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 207
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->performFlipStateUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 204
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->performBackgroundColorUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 198
    :pswitch_2
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->performFlipUnitUndoUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 201
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6cd72719 -> :sswitch_3
        -0x1c4393eb -> :sswitch_2
        -0x10f6d4fc -> :sswitch_1
        0x1033d393 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 123
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->unregisterCollaboHandler()V

    .line 125
    invoke-direct {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getUnitManager()Lcom/metamoji/un/flip/UnFlipUnitManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/un/flip/UnFlipUnitManager;->delistFlipUnit(Lcom/metamoji/un/flip/UnFlipUnit;)V

    .line 127
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method prepareToAnimation()Z
    .locals 4

    .line 667
    iget-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->duringAnimation_:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    .line 670
    iput-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->duringAnimation_:Z

    .line 672
    iget-object v2, p0, Lcom/metamoji/un/flip/UnFlipUnit;->animation_:Lcom/metamoji/un/flip/ui/UnFlipUnitAnimation;

    if-eqz v2, :cond_1

    return v1

    .line 675
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    .line 680
    :cond_2
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v3, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p0, v2}, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/un/flip/UnFlipUnit;Landroidx/fragment/app/FragmentActivity;)V

    invoke-virtual {v1, v3}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return v0
.end method

.method registerCollaboHandler()V
    .locals 1

    .line 999
    iget-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->registerCollabo_:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1009
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1011
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    const/4 v0, 0x1

    .line 1012
    iput-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->registerCollabo_:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 488
    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/un/flip/UnFlipUnit;->setBackgroundColor(Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    return-void
.end method

.method public setBackgroundColor(Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z
    .locals 4

    .line 493
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getBackgroundColorAsRaw()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    .line 497
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 499
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->createBackgroundColorUndoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 500
    const-string v3, "ob"

    invoke-interface {v2, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    const-string v0, "nb"

    invoke-interface {v2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    invoke-virtual {p2, v2, v1}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 506
    :cond_2
    const-string p2, "backgroundColor"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 507
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 509
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p2}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :goto_1
    if-eqz p3, :cond_4

    .line 513
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->isDirectable()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 514
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;

    move-result-object p2

    .line 515
    invoke-virtual {p2, p1}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->setBackgroundColor(Ljava/lang/String;)V

    .line 516
    invoke-direct {p0, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->sendBackgroundColorDirection(Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;)V

    .line 521
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    return v1
.end method

.method public setFlipState(ILcom/metamoji/df/controller/EditContext;)V
    .locals 1

    const/4 v0, 0x1

    .line 535
    invoke-virtual {p0, p1, v0, p2, v0}, Lcom/metamoji/un/flip/UnFlipUnit;->setFlipState(IZLcom/metamoji/df/controller/EditContext;Z)Z

    return-void
.end method

.method public setFlipState(IZLcom/metamoji/df/controller/EditContext;Z)Z
    .locals 4

    .line 540
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v0

    if-eq v0, p1, :cond_3

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    .line 543
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->createFlipStateUndoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 544
    const-string v3, "os"

    invoke-interface {v2, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 545
    const-string v0, "ns"

    invoke-interface {v2, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 547
    invoke-virtual {p3, v2, v1}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 550
    :cond_0
    iget-object p3, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "flipState"

    invoke-interface {p3, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    if-eqz p4, :cond_1

    .line 553
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->isDirectable()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 554
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;

    move-result-object p3

    .line 555
    invoke-virtual {p3, p1}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->setFlipState(I)V

    .line 556
    invoke-direct {p0, p3}, Lcom/metamoji/un/flip/UnFlipUnit;->sendFlipStateDirection(Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 562
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 0

    .line 432
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    :cond_0
    return-void
.end method

.method startAnimation()V
    .locals 2

    .line 697
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/UnFlipUnit$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/flip/UnFlipUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public toggleFlipState()V
    .locals 4

    .line 640
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_1

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v3, 0x0

    .line 653
    invoke-virtual {p0, v3}, Lcom/metamoji/un/flip/UnFlipUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v3

    .line 655
    :try_start_0
    invoke-virtual {p0, v0, v1, v3, v2}, Lcom/metamoji/un/flip/UnFlipUnit;->setFlipState(IZLcom/metamoji/df/controller/EditContext;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 658
    invoke-virtual {p0, v3}, Lcom/metamoji/un/flip/UnFlipUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    if-ne v0, v2, :cond_2

    .line 662
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    :cond_2
    return-void

    :catchall_0
    move-exception v0

    .line 658
    invoke-virtual {p0, v3}, Lcom/metamoji/un/flip/UnFlipUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 659
    throw v0
.end method

.method unregisterCollaboHandler()V
    .locals 1

    .line 1021
    iget-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->registerCollabo_:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1026
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 1031
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1033
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    const/4 v0, 0x0

    .line 1034
    iput-boolean v0, p0, Lcom/metamoji/un/flip/UnFlipUnit;->registerCollabo_:Z

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSprite()V
    .locals 11

    .line 704
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 708
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getWidth()F

    move-result v0

    .line 709
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getHeight()F

    move-result v1

    .line 711
    iget-object v2, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 712
    iget-object v2, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 714
    iget-object v2, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    .line 715
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 717
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getBackgroundColor()I

    move-result v3

    .line 718
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getBackgroundColorAsRaw()Ljava/lang/String;

    move-result-object v4

    .line 719
    iget-boolean v5, p0, Lcom/metamoji/un/flip/UnFlipUnit;->isSelected:Z

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_1

    iget-object v5, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v7, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-ne v5, v7, :cond_1

    .line 720
    iget-object v5, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const v7, 0x3f733333    # 0.95f

    invoke-virtual {v5, v7}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    goto :goto_0

    .line 722
    :cond_1
    iget-object v5, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v5, v6}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    .line 724
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v5

    const/high16 v7, 0x40000000    # 2.0f

    cmpg-float v7, v0, v7

    if-gez v7, :cond_2

    const/high16 v7, 0x40800000    # 4.0f

    div-float v7, v0, v7

    goto :goto_1

    :cond_2
    const/high16 v7, 0x41200000    # 10.0f

    :goto_1
    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v5, :cond_4

    if-eq v5, v8, :cond_3

    goto :goto_2

    :cond_3
    const v10, 0x3e4ccccd    # 0.2f

    .line 745
    invoke-virtual {v2, v10}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 746
    new-instance v10, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v10, v3}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v10}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    const/4 v10, 0x2

    .line 748
    new-array v10, v10, [F

    fill-array-data v10, :array_0

    .line 749
    invoke-virtual {v2, v10}, Lcom/metamoji/df/sprite/Graphics;->setLineDash([F)V

    .line 751
    invoke-virtual {v2, v7, v9}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 752
    invoke-virtual {v2, v0, v9}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 753
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 754
    invoke-virtual {v2, v9, v1}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 755
    invoke-virtual {v2, v9, v7}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 756
    invoke-virtual {v2, v7, v9}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 757
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    goto :goto_2

    .line 732
    :cond_4
    invoke-virtual {v2, v9}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 733
    new-instance v10, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v10, v3}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v10}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 735
    invoke-virtual {v2, v7, v9}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 736
    invoke-virtual {v2, v0, v9}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 737
    invoke-virtual {v2, v0, v1}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 738
    invoke-virtual {v2, v9, v1}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 739
    invoke-virtual {v2, v9, v7}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 740
    invoke-virtual {v2, v7, v9}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 741
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    .line 763
    :goto_2
    const-string v0, "ff000000"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 764
    invoke-static {v3}, Lcom/metamoji/un/flip/UnFlipUnitUtil;->lighterColorForColor(I)I

    move-result v0

    goto :goto_3

    :cond_5
    invoke-static {v3}, Lcom/metamoji/un/flip/UnFlipUnitUtil;->darkerColorForColor(I)I

    move-result v0

    .line 765
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 766
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_6

    :goto_4
    return-void

    .line 769
    :cond_6
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v4

    .line 770
    invoke-static {p0, v4, v1}, Lcom/metamoji/un/flip/UnFlipUnitManager;->isFlippableUnit(Lcom/metamoji/un/flip/UnFlipUnit;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/nt/NtPageController;)Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/metamoji/un/flip/UnFlipUnit;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    sget-object v4, Lcom/metamoji/df/controller/ControllerContext$MediaType;->MEDIATYPE_NONE:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-eq v1, v4, :cond_8

    :cond_7
    move v3, v0

    .line 776
    :cond_8
    new-instance v0, Lcom/metamoji/df/sprite/PaintSolid;

    invoke-direct {v0, v3}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 777
    invoke-virtual {v2, v9}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    if-ne v5, v8, :cond_9

    const/high16 v0, 0x3f000000    # 0.5f

    .line 779
    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    goto :goto_5

    .line 781
    :cond_9
    invoke-virtual {v2, v6}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    .line 784
    :goto_5
    invoke-virtual {v2, v9, v9}, Lcom/metamoji/df/sprite/Graphics;->moveTo(FF)V

    .line 785
    invoke-virtual {v2, v7, v9}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 786
    invoke-virtual {v2, v9, v7}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 787
    invoke-virtual {v2, v9, v9}, Lcom/metamoji/df/sprite/Graphics;->lineTo(FF)V

    .line 788
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->closePath()V

    return-void

    nop

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f19999a    # 0.6f
    .end array-data
.end method
