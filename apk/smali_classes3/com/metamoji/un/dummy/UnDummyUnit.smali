.class public Lcom/metamoji/un/dummy/UnDummyUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnDummyUnit.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/dummy/UnDummyUnit$DummyUndoPerformer;
    }
.end annotation


# static fields
.field private static final MMJUN_MODELPROPVALUE_DUMMY_ADD_UNIT_UNDO_VERSION_LATEST:I = 0x1

.field private static final MMJUN_MODELPROPVALUE_DUMMY_GEOPROP_UNDO__VERSION_LATEST:I = 0x1

.field private static final MMJUN_MODELPROPVALUE_DUMMY_VERSION_LATEST:I = 0x1

.field private static final MMJUN_MODELPROP_DUMMY_ADD_UNIT_UNDO_CHILD:Ljava/lang/String; = "c"

.field private static final MMJUN_MODELTYPE_DUMMY_ADD_UNIT_UNDO:Ljava/lang/String; = "dummyaddunitundo"

.field private static final MMJUN_MODELTYPE_DUMMY_GEOPROP_UNDO:Ljava/lang/String; = "dummygeopropundo"

.field public static final MODELTYPE:Ljava/lang/String; = "$dummy"


# instance fields
.field private _tapListener:Lcom/metamoji/df/sprite/TapListener;


# direct methods
.method static bridge synthetic -$$Nest$monTapped(Lcom/metamoji/un/dummy/UnDummyUnit;Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static createNewDummyUnitModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 317
    const-string v0, "$dummy"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 318
    const-string v0, "!version"

    const/4 v1, 0x1

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method private onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 6

    .line 100
    iget-object v0, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/df/controller/DfController;

    .line 102
    instance-of v2, v1, Lcom/metamoji/nt/NtUnitController;

    if-eqz v2, :cond_0

    .line 103
    check-cast v1, Lcom/metamoji/nt/NtUnitController;

    .line 104
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->canFocus()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 106
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v4

    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v2

    .line 108
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Sprite;->hitTestPoint(Landroid/graphics/PointF;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->hasFocus()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V

    goto :goto_0

    .line 111
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitController;->hasFocus()Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 383
    new-instance v0, Lcom/metamoji/un/dummy/UnDummyUnit$DummyUndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/dummy/UnDummyUnit$DummyUndoPerformer;-><init>(Lcom/metamoji/un/dummy/UnDummyUnit-IA;)V

    .line 384
    const-string v1, "dummyaddunitundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 385
    const-string v1, "dummygeopropundo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 392
    const-string v0, "dummyaddunitundo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 393
    const-string v0, "dummygeopropundo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private updateSprite(Z)V
    .locals 5

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getWidth()F

    move-result v0

    .line 421
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getHeight()F

    move-result v1

    .line 423
    iget-object v2, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    if-eqz p1, :cond_0

    .line 425
    iget-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    new-instance v2, Lcom/metamoji/df/sprite/PaintSolid;

    const v3, -0xffff01

    invoke-direct {v2, v3}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 426
    iget-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    new-instance v2, Lcom/metamoji/df/sprite/PaintSolid;

    const/16 v3, 0xff

    const/16 v4, 0x88

    invoke-static {v4, v4, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v3

    invoke-direct {v2, v3}, Lcom/metamoji/df/sprite/PaintSolid;-><init>(I)V

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 429
    iget-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {p1, v2}, Lcom/metamoji/df/sprite/Graphics;->setLineWidth(F)V

    .line 431
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    return-void
.end method


# virtual methods
.method public addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V
    .locals 9

    const/4 v0, 0x0

    .line 205
    invoke-virtual {p0, v0}, Lcom/metamoji/un/dummy/UnDummyUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    const/4 v2, -0x1

    .line 207
    :try_start_0
    invoke-static {p1, p0, v2}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtUnitController;

    .line 211
    const-string v3, "location"

    invoke-virtual {p2, v3, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 214
    iget v5, v3, Landroid/graphics/PointF;->x:F

    .line 215
    iget v3, v3, Landroid/graphics/PointF;->y:F

    goto/16 :goto_2

    .line 221
    :cond_0
    const-string/jumbo v3, "tapPos"

    invoke-virtual {p2, v3, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;

    const/high16 v5, 0x42480000    # 50.0f

    if-eqz v3, :cond_5

    .line 224
    sget-object v6, Lcom/metamoji/un/dummy/UnDummyUnit$2;->$SwitchMap$com$metamoji$nt$NtUnitController$AddUnitPosition:[I

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitController$AddUnitPosition;->ordinal()I

    move-result v3

    aget v3, v6, v3

    if-eq v3, v4, :cond_4

    const/4 v6, 0x2

    if-eq v3, v6, :cond_3

    const/4 v6, 0x3

    if-eq v3, v6, :cond_2

    const/4 v6, 0x4

    if-eq v3, v6, :cond_1

    goto :goto_1

    .line 236
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getWidth()F

    move-result v3

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v5

    sub-float/2addr v3, v5

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    .line 237
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getHeight()F

    move-result v6

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    div-float v5, v6, v5

    goto :goto_0

    .line 232
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getWidth()F

    move-result v3

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    sub-float/2addr v3, v5

    .line 233
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getHeight()F

    move-result v6

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v7

    sub-float/2addr v6, v7

    sub-float v5, v6, v5

    goto :goto_0

    .line 229
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getWidth()F

    move-result v3

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v6

    sub-float/2addr v3, v6

    sub-float/2addr v3, v5

    :goto_0
    move v8, v5

    move v5, v3

    move v3, v8

    goto :goto_2

    .line 226
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getHeight()F

    move-result v3

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v6

    sub-float/2addr v3, v6

    sub-float/2addr v3, v5

    goto :goto_2

    :cond_5
    :goto_1
    move v3, v5

    .line 248
    :goto_2
    new-instance v6, Lcom/metamoji/df/controller/GeometricProps;

    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v5, v3}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-direct {v6, v7, v0, v0, v0}, Lcom/metamoji/df/controller/GeometricProps;-><init>(Landroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Ljava/lang/Float;Ljava/lang/Float;)V

    .line 249
    sget-object v0, Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;->None:Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;

    invoke-virtual {v2, v6, v1, v0}, Lcom/metamoji/nt/NtUnitController;->setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 255
    const-string v0, "dummyaddunitundo"

    invoke-static {p0, v0}, Lcom/metamoji/un/dummy/UnDummyUnit$DummyUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    .line 257
    invoke-interface {v0, v4}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 258
    const-string v3, "c"

    invoke-interface {v0, v3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 259
    invoke-virtual {v1, v0, v4}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 262
    const-string/jumbo p1, "toFocus"

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    invoke-interface {p1, v2}, Lcom/metamoji/nt/INtAppFrame;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 266
    :cond_6
    invoke-virtual {p0, v1}, Lcom/metamoji/un/dummy/UnDummyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, v1}, Lcom/metamoji/un/dummy/UnDummyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 267
    throw p1
.end method

.method public geometricPropsChanged(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public getHeight()F
    .locals 2

    .line 148
    invoke-super {p0}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v0

    :cond_0
    return v0
.end method

.method public getWidth()F
    .locals 2

    .line 162
    invoke-super {p0}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-nez v1, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v0

    :cond_0
    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 81
    iget-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 82
    iget-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const-string v0, "dummyUnit"

    iput-object v0, p1, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    .line 85
    new-instance p1, Lcom/metamoji/un/dummy/UnDummyUnit$1;

    invoke-direct {p1, p0}, Lcom/metamoji/un/dummy/UnDummyUnit$1;-><init>(Lcom/metamoji/un/dummy/UnDummyUnit;)V

    iput-object p1, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    .line 92
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->hasFocus()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->updateSprite(Z)V

    return-void
.end method

.method public isContainer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public killFocus(Z)V
    .locals 0

    .line 196
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->killFocus(Z)V

    const/4 p1, 0x0

    .line 197
    invoke-direct {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->updateSprite(Z)V

    return-void
.end method

.method protected performAddUnitUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 345
    const-string v0, "c"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p1, :cond_0

    .line 349
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 352
    invoke-virtual {p0, p2}, Lcom/metamoji/un/dummy/UnDummyUnit;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    .line 353
    invoke-static {p1}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    return-void

    .line 356
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    const/4 p1, -0x1

    .line 359
    invoke-static {p2, p0, p1}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    return-void
.end method

.method protected performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 368
    invoke-static {p0, p2, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->performUndo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Z)V

    .line 371
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 372
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->hasFocus()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->updateSprite(Z)V

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 330
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 332
    const-string v1, "dummyaddunitundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/dummy/UnDummyUnit;->performAddUnitUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 334
    :cond_0
    const-string v1, "dummygeopropundo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/dummy/UnDummyUnit;->performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 337
    :cond_1
    const-string/jumbo p1, "unknown undo type: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 129
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/dummy/UnDummyUnit;->_tapListener:Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    return-void
.end method

.method public setFocus(Lcom/metamoji/nt/NtFocusOption;)V
    .locals 0

    .line 175
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->setFocus(Lcom/metamoji/nt/NtFocusOption;)V

    const/4 p1, 0x1

    .line 176
    invoke-direct {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->updateSprite(Z)V

    return-void
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 4

    if-nez p2, :cond_0

    return-void

    .line 283
    :cond_0
    const-string p3, "dummygeopropundo"

    invoke-static {p0, p3}, Lcom/metamoji/un/dummy/UnDummyUnit$DummyUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    .line 284
    invoke-static {p0, p3, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->pushUndoInfo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/GeometricProps;)V

    .line 287
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 288
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, v0}, Lcom/metamoji/un/dummy/UnDummyUnit;->setHeight(F)V

    .line 289
    iget-object v0, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget v0, v0, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0, v0}, Lcom/metamoji/un/dummy/UnDummyUnit;->setWidth(F)V

    move v0, v1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 292
    :goto_0
    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz v2, :cond_2

    .line 293
    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, v2}, Lcom/metamoji/un/dummy/UnDummyUnit;->setX(F)V

    .line 294
    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, v2}, Lcom/metamoji/un/dummy/UnDummyUnit;->setY(F)V

    .line 296
    :cond_2
    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz v2, :cond_3

    .line 297
    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/dummy/UnDummyUnit;->setRotation(D)V

    .line 299
    :cond_3
    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz v2, :cond_4

    .line 300
    iget-object v2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lcom/metamoji/un/dummy/UnDummyUnit;->setContentScale(D)V

    .line 304
    :cond_4
    invoke-virtual {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    if-eqz v0, :cond_5

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/un/dummy/UnDummyUnit;->hasFocus()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/metamoji/un/dummy/UnDummyUnit;->updateSprite(Z)V

    .line 310
    :cond_5
    invoke-virtual {p2, p3, v1}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    return-void
.end method
