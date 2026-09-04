.class public Lcom/metamoji/df/controller/DfNoteController;
.super Lcom/metamoji/df/controller/DfController;
.source "DfNoteController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/df/controller/DfNoteController$ModelDef;,
        Lcom/metamoji/df/controller/DfNoteController$PagesIterator;
    }
.end annotation


# instance fields
.field private _oldOffset:Landroid/graphics/PointF;

.field private _oldZoom:F

.field private _overflow:Lcom/metamoji/cm/ThicknessF;

.field protected _purgeManager:Lcom/metamoji/df/controller/PurgeManager;

.field private _stage:Lcom/metamoji/df/sprite/Stage;

.field private _viewport:Lcom/metamoji/df/sprite/Viewport;

.field public onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/df/controller/PageEventContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_stage(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Stage;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/controller/DfNoteController;->_stage:Lcom/metamoji/df/sprite/Stage;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_viewport(Lcom/metamoji/df/controller/DfNoteController;)Lcom/metamoji/df/sprite/Viewport;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_stage(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/sprite/Stage;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_stage:Lcom/metamoji/df/sprite/Stage;

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_viewport(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/sprite/Viewport;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/DfController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 56
    new-instance p1, Lcom/metamoji/df/controller/PurgeManager;

    invoke-direct {p1, p0}, Lcom/metamoji/df/controller/PurgeManager;-><init>(Lcom/metamoji/df/controller/DfNoteController;)V

    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_purgeManager:Lcom/metamoji/df/controller/PurgeManager;

    const/4 p1, 0x0

    .line 60
    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_stage:Lcom/metamoji/df/sprite/Stage;

    .line 61
    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    .line 63
    new-instance p1, Lcom/metamoji/cm/ThicknessF;

    invoke-direct {p1}, Lcom/metamoji/cm/ThicknessF;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 65
    iput p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldZoom:F

    .line 66
    new-instance p1, Landroid/graphics/PointF;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldOffset:Landroid/graphics/PointF;

    .line 72
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfNoteController;->updateZoomFromModel()Z

    .line 73
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfNoteController;->updateOffsetFromModel()Z

    .line 75
    iget-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    const-string p2, "note"

    iput-object p2, p1, Lcom/metamoji/df/sprite/Sprite;->name:Ljava/lang/String;

    .line 78
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method

.method private changeCurrentPage(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_2

    .line 903
    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->equalsToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 904
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/DfPageController;

    if-eqz p1, :cond_0

    .line 906
    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->notifyPageDeactivating()V

    .line 908
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->prepareCurrentPage(Z)V

    goto :goto_0

    .line 911
    :cond_1
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->prepareCurrentPage(Z)V

    .line 914
    :cond_2
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfNoteController;->updateZoomFromModel()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 915
    iget p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldZoom:F

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->setStageZoom(F)V

    .line 916
    :cond_3
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfNoteController;->updateOffsetFromModel()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 917
    iget-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldOffset:Landroid/graphics/PointF;

    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget-object p2, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldOffset:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p1, p2, v0}, Lcom/metamoji/df/controller/DfNoteController;->setStageOffset(FFZ)V

    :cond_4
    return-void
.end method

.method private createView(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 367
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$9;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$9;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/controller/ControllerContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private firePageInsertEvent(ZIII)V
    .locals 0

    .line 631
    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/df/controller/PageEventContext;->newPageEventContextOnInserted(ZIII)Lcom/metamoji/df/controller/PageEventContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onPageStateChanged(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method

.method private firePageMovedEvent(ZIII)V
    .locals 1

    if-ge p3, p4, :cond_0

    add-int/lit8 p4, p4, -0x1

    .line 793
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result v0

    invoke-static {p1, p2, v0, p3, p4}, Lcom/metamoji/df/controller/PageEventContext;->newPageEventContextOnMoved(ZIIII)Lcom/metamoji/df/controller/PageEventContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onPageStateChanged(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method

.method private firePageRemoveEvent(ZIILjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 734
    invoke-static {p1, p2, p3, p4}, Lcom/metamoji/df/controller/PageEventContext;->newPageEventContextOnDeleted(ZIILjava/util/List;)Lcom/metamoji/df/controller/PageEventContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onPageStateChanged(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method

.method private purge()V
    .locals 5

    .line 338
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->canRestoreOnPurge()Z

    move-result v0

    .line 339
    invoke-virtual {p0, p0}, Lcom/metamoji/df/controller/DfNoteController;->createControllerContext(Lcom/metamoji/df/controller/DfController;)Lcom/metamoji/df/controller/ControllerContext;

    move-result-object v1

    .line 340
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_children:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/controller/DfController;

    .line 341
    check-cast v3, Lcom/metamoji/df/controller/DfPageController;

    .line 342
    iget-object v4, p0, Lcom/metamoji/df/controller/DfNoteController;->_purgeManager:Lcom/metamoji/df/controller/PurgeManager;

    invoke-virtual {v4, v3}, Lcom/metamoji/df/controller/PurgeManager;->isPurgeTarget(Lcom/metamoji/df/controller/DfPageController;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 343
    invoke-virtual {v3, v1}, Lcom/metamoji/df/controller/DfPageController;->purgeChildren(Lcom/metamoji/df/controller/ControllerContext;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_0

    .line 346
    invoke-virtual {v3, v1}, Lcom/metamoji/df/controller/DfPageController;->restoreChildren(Lcom/metamoji/df/controller/ControllerContext;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private updateOffsetFromModel()Z
    .locals 3

    .line 994
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getOffsetX()F

    move-result v0

    .line 995
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getOffsetY()F

    move-result v1

    .line 996
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldOffset:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    cmpl-float v2, v2, v1

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    .line 997
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldOffset:Landroid/graphics/PointF;

    iput v0, v2, Landroid/graphics/PointF;->x:F

    .line 998
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldOffset:Landroid/graphics/PointF;

    iput v1, v0, Landroid/graphics/PointF;->y:F

    const/4 v0, 0x1

    return v0
.end method

.method private updateZoomFromModel()Z
    .locals 2

    .line 973
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getZoom()F

    move-result v0

    .line 974
    iget v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldZoom:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_0

    .line 975
    iput v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldZoom:F

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addPage(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    if-nez p1, :cond_0

    .line 565
    const-string p1, "pageModel must not be null."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    const/4 v0, -0x1

    .line 573
    invoke-static {p1, p0, v0}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    .line 576
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPageIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/metamoji/df/controller/DfNoteController;->firePageInsertEvent(ZIII)V

    return-void
.end method

.method protected beforeChangingCurrentPage()V
    .locals 0

    return-void
.end method

.method public bindToWindow()V
    .locals 1

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->prepareCurrentPage(Z)V

    return-void
.end method

.method protected canRestoreOnPurge()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_purgeManager:Lcom/metamoji/df/controller/PurgeManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 120
    invoke-virtual {v0}, Lcom/metamoji/df/controller/PurgeManager;->destroy()V

    .line 121
    iput-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_purgeManager:Lcom/metamoji/df/controller/PurgeManager;

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_stage:Lcom/metamoji/df/sprite/Stage;

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->dispose()V

    .line 127
    iput-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_stage:Lcom/metamoji/df/sprite/Stage;

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    if-eqz v0, :cond_2

    .line 130
    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->dispose()V

    .line 131
    iput-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    .line 136
    :cond_2
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public getBaseSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    .line 491
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 492
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCurrentPage()Lcom/metamoji/df/controller/DfPageController;
    .locals 1

    .line 856
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPageIndex()I

    move-result v0

    .line 857
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/DfPageController;

    return-object v0
.end method

.method public getCurrentPageIndex()I
    .locals 3

    .line 866
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "currentPage"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getCurrentUnitContainer()Lcom/metamoji/df/controller/DfController;
    .locals 1

    .line 506
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 508
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->getCurrentUnitContainer()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNumberOfPages()I
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getOffsetX()F
    .locals 4

    .line 1073
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "offsetX"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1074
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    iget v1, v1, Lcom/metamoji/cm/ThicknessF;->left:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOffsetY()F
    .locals 4

    .line 1081
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "offsetY"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 1082
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    iget v1, v1, Lcom/metamoji/cm/ThicknessF;->top:F

    add-float/2addr v0, v1

    return v0
.end method

.method public getOverflow()Lcom/metamoji/cm/ThicknessF;
    .locals 1

    .line 1094
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    return-object v0
.end method

.method public getPage(I)Lcom/metamoji/df/controller/DfPageController;
    .locals 0

    .line 543
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->getChild(I)Lcom/metamoji/df/controller/DfController;

    move-result-object p1

    check-cast p1, Lcom/metamoji/df/controller/DfPageController;

    return-object p1
.end method

.method public getPageIndex(Lcom/metamoji/df/controller/DfPageController;)I
    .locals 0

    .line 557
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->getChildIndex(Lcom/metamoji/df/controller/DfController;)I

    move-result p1

    return p1
.end method

.method public getPagesIterator(Lcom/metamoji/df/controller/ControllerContext;)Lcom/metamoji/df/controller/DfNoteController$PagesIterator;
    .locals 1

    .line 837
    new-instance v0, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;

    invoke-direct {v0, p0, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$PagesIterator;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/df/controller/ControllerContext;)V

    return-object v0
.end method

.method public getPurgeManager()Lcom/metamoji/df/controller/PurgeManager;
    .locals 1

    .line 1102
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_purgeManager:Lcom/metamoji/df/controller/PurgeManager;

    return-object v0
.end method

.method public getStage()Lcom/metamoji/df/sprite/Stage;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_stage:Lcom/metamoji/df/sprite/Stage;

    return-object v0
.end method

.method public getStageBackgroundColor()I
    .locals 1

    const v0, -0x777778

    return v0
.end method

.method public getViewport()Lcom/metamoji/df/sprite/Viewport;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    return-object v0
.end method

.method public getZoom()F
    .locals 4

    .line 1014
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "zoom"

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 86
    invoke-super {p0, p1, p2}, Lcom/metamoji/df/controller/DfController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object p2

    iput-object p2, p1, Lcom/metamoji/df/controller/ControllerContext;->page:Lcom/metamoji/df/controller/DfPageController;

    .line 90
    invoke-direct {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->createView(Lcom/metamoji/df/controller/ControllerContext;)V

    const/4 p1, 0x0

    .line 93
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onPageStateChanged(Lcom/metamoji/df/controller/PageEventContext;)V

    return-void
.end method

.method public insertPageAt(ILcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 583
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result v0

    if-ltz p1, :cond_5

    if-gt v0, p1, :cond_0

    goto :goto_1

    :cond_0
    if-nez p2, :cond_1

    .line 591
    const-string p1, "pageModel must not be null."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void

    .line 595
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v1

    if-nez v1, :cond_2

    .line 597
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "no page controller at index %d."

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 601
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/df/controller/DfPageController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-nez v1, :cond_3

    .line 603
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "no page model at index %d."

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 608
    :cond_3
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v1, p2}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 611
    invoke-static {p2, p0, p1}, Lcom/metamoji/df/controller/DfUtility;->attachChildControllerFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/DfController;I)Lcom/metamoji/df/controller/DfController;

    .line 615
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPageIndex()I

    move-result p2

    if-gt p1, p2, :cond_4

    add-int/lit8 p2, p2, 0x1

    .line 619
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "currentPage"

    invoke-interface {v1, v2, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    const/4 v1, 0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    .line 623
    :goto_0
    invoke-direct {p0, v1, v0, p2, p1}, Lcom/metamoji/df/controller/DfNoteController;->firePageInsertEvent(ZIII)V

    return-void

    .line 586
    :cond_5
    :goto_1
    invoke-virtual {p0, p2}, Lcom/metamoji/df/controller/DfNoteController;->addPage(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public movePage(II)V
    .locals 7

    .line 741
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "NoteController.movePageAt from=%d to %d."

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 745
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "invalid fromPageIndex %d."

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 749
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPageIndex()I

    move-result v1

    .line 750
    invoke-virtual {p0, p2}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v2

    .line 751
    invoke-virtual {p0, v1}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v3

    .line 752
    iget-object v3, v3, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    .line 753
    iget-object v4, v0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    if-eqz v2, :cond_1

    .line 758
    iget-object v5, v2, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    .line 759
    iget-object v6, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v6, v4}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 760
    iget-object v6, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v6, v5, v4}, Lcom/metamoji/df/model/IModel;->insertBefore(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 762
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->getChildIndex(Lcom/metamoji/df/controller/DfController;)I

    move-result v4

    .line 763
    invoke-virtual {p0, v4}, Lcom/metamoji/df/controller/DfNoteController;->removeChildAt(I)Lcom/metamoji/df/controller/DfController;

    .line 764
    invoke-virtual {p0, v2}, Lcom/metamoji/df/controller/DfNoteController;->getChildIndex(Lcom/metamoji/df/controller/DfController;)I

    move-result v2

    .line 765
    invoke-virtual {p0, v2, v0}, Lcom/metamoji/df/controller/DfNoteController;->insertChildAt(ILcom/metamoji/df/controller/DfController;)V

    goto :goto_0

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result v2

    if-ne v2, p2, :cond_2

    .line 769
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v4}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 770
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v2, v4}, Lcom/metamoji/df/model/IModel;->add(Lcom/metamoji/df/model/IModel;)V

    .line 772
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->getChildIndex(Lcom/metamoji/df/controller/DfController;)I

    move-result v2

    .line 773
    invoke-virtual {p0, v2}, Lcom/metamoji/df/controller/DfNoteController;->removeChildAt(I)Lcom/metamoji/df/controller/DfController;

    .line 774
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->addChild(Lcom/metamoji/df/controller/DfController;)V

    .line 778
    :cond_2
    :goto_0
    invoke-virtual {p0, v3}, Lcom/metamoji/df/controller/DfNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/controller/DfPageController;

    .line 779
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->getChildIndex(Lcom/metamoji/df/controller/DfController;)I

    move-result v0

    .line 780
    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "currentPage"

    invoke-interface {v2, v3, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    if-eq v1, v0, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 783
    :goto_1
    invoke-direct {p0, v1, v0, p1, p2}, Lcom/metamoji/df/controller/DfNoteController;->firePageMovedEvent(ZIII)V

    return-void
.end method

.method public onMemoryWarning()V
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_purgeManager:Lcom/metamoji/df/controller/PurgeManager;

    invoke-virtual {v0}, Lcom/metamoji/df/controller/PurgeManager;->onMemoryWarning()V

    .line 319
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfNoteController;->purge()V

    return-void
.end method

.method public onOrientationChange(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 294
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 297
    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$8;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$8;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    :cond_0
    return-void
.end method

.method protected onPageStateChanged(Lcom/metamoji/df/controller/PageEventContext;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 846
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmEventListener;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 847
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onViewportScrollChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 189
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 192
    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$3;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$3;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    :cond_0
    return-void
.end method

.method public onViewportScrollEnd(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 168
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$2;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    :cond_0
    return-void
.end method

.method public onViewportScrollStart(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 151
    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$1;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$1;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    :cond_0
    return-void
.end method

.method public onViewportSizeChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 273
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 276
    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$7;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$7;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    :cond_0
    return-void
.end method

.method public onViewportZoomChanged(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 252
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 255
    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$6;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$6;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    :cond_0
    return-void
.end method

.method public onViewportZoomEnd(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 231
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 234
    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$5;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$5;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    :cond_0
    return-void
.end method

.method public onViewportZoomStart(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 210
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    new-instance v1, Lcom/metamoji/df/controller/DfNoteController$4;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/df/controller/DfNoteController$4;-><init>(Lcom/metamoji/df/controller/DfNoteController;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/controller/DfPageController;->accessControllerTree(Lcom/metamoji/df/controller/IControllerAccessHandler;)V

    :cond_0
    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->onPageChangedEventListener:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0}, Lcom/metamoji/cm/CmEventListener;->removeAll()V

    .line 112
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method protected prepareCurrentPage(Z)V
    .locals 2

    .line 936
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    .line 941
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_purgeManager:Lcom/metamoji/df/controller/PurgeManager;

    invoke-virtual {v1, v0}, Lcom/metamoji/df/controller/PurgeManager;->onPageActivate(Lcom/metamoji/df/controller/DfPageController;)V

    if-nez p1, :cond_0

    .line 947
    invoke-direct {p0}, Lcom/metamoji/df/controller/DfNoteController;->purge()V

    :cond_0
    if-eqz v0, :cond_1

    .line 952
    invoke-virtual {v0}, Lcom/metamoji/df/controller/DfPageController;->activate()V

    :cond_1
    return-void
.end method

.method public queryWorkareaLayoutOnActivation()Lcom/metamoji/df/controller/DfPageController$WaType;
    .locals 1

    .line 1127
    sget-object v0, Lcom/metamoji/df/controller/DfPageController$WaType;->UNDEFINED:Lcom/metamoji/df/controller/DfPageController$WaType;

    return-object v0
.end method

.method public removePageAt(I)V
    .locals 2

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 669
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->removePages(Ljava/util/List;)V

    return-void
.end method

.method public removePages(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 688
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPageIndex()I

    move-result v0

    .line 690
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->beforeChangingCurrentPage()V

    .line 696
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    .line 698
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result v2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    .line 699
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    move v5, v0

    :goto_0
    if-ltz v4, :cond_2

    .line 700
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, v5, :cond_1

    add-int/lit8 v5, v5, -0x1

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    if-le v5, v2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v5

    :goto_1
    if-eq v0, v2, :cond_4

    .line 712
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v4, "currentPage"

    invoke-interface {v0, v4, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    move v0, v3

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 714
    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    :goto_3
    if-ltz v4, :cond_6

    .line 715
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 716
    invoke-virtual {p0, v3}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 718
    iget-object v5, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    iget-object v6, v3, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v5, v6}, Lcom/metamoji/df/model/IModel;->remove(Lcom/metamoji/df/model/IModel;)V

    .line 719
    invoke-static {v3}, Lcom/metamoji/df/controller/DfUtility;->detachChildController(Lcom/metamoji/df/controller/DfController;)V

    :cond_5
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 723
    :cond_6
    invoke-virtual {p0, v2}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v3

    iget-object v3, v3, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    .line 724
    invoke-direct {p0, v1, v3}, Lcom/metamoji/df/controller/DfNoteController;->changeCurrentPage(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 727
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result v1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/metamoji/df/controller/DfNoteController;->firePageRemoveEvent(ZIILjava/util/List;)V

    return-void
.end method

.method protected setCurrentPageIndex(I)V
    .locals 3

    .line 875
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "setCurrentPageIndex: %d"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    if-ltz p1, :cond_1

    .line 878
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_children:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 882
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->beforeChangingCurrentPage()V

    .line 884
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getCurrentPage()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    iget-object v0, v0, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    .line 885
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "currentPage"

    invoke-interface {v1, v2, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 886
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->getPage(I)Lcom/metamoji/df/controller/DfPageController;

    move-result-object v1

    iget-object v1, v1, Lcom/metamoji/df/controller/DfPageController;->_model:Lcom/metamoji/df/model/IModel;

    .line 890
    invoke-direct {p0, v0, v1}, Lcom/metamoji/df/controller/DfNoteController;->changeCurrentPage(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 893
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfNoteController;->getNumberOfPages()I

    move-result v0

    invoke-static {p1, v0}, Lcom/metamoji/df/controller/PageEventContext;->newPageEventContextOnCurrentPageChanged(II)Lcom/metamoji/df/controller/PageEventContext;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->onPageStateChanged(Lcom/metamoji/df/controller/PageEventContext;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setOffset(FFZZ)V
    .locals 6

    .line 1057
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "offsetX"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 1058
    iget-object v4, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-string v5, "offsetY"

    invoke-interface {v4, v5, v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    .line 1059
    iget-object v3, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    iget v3, v3, Lcom/metamoji/cm/ThicknessF;->left:F

    sub-float v3, p1, v3

    cmpl-float v0, v3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    iget v0, v0, Lcom/metamoji/cm/ThicknessF;->top:F

    sub-float v0, p2, v0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 1060
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    iget-object v2, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    iget v2, v2, Lcom/metamoji/cm/ThicknessF;->left:F

    sub-float v2, p1, v2

    float-to-double v2, v2

    invoke-interface {v0, v1, v2, v3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    .line 1061
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    iget v1, v1, Lcom/metamoji/cm/ThicknessF;->top:F

    sub-float v1, p2, v1

    float-to-double v1, v1

    invoke-interface {v0, v5, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    :cond_1
    if-eqz p3, :cond_2

    .line 1065
    invoke-virtual {p0, p1, p2, p4}, Lcom/metamoji/df/controller/DfNoteController;->setStageOffset(FFZ)V

    :cond_2
    return-void
.end method

.method public setOldZoom(F)V
    .locals 0

    .line 985
    iput p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_oldZoom:F

    return-void
.end method

.method public setOverflow(Lcom/metamoji/cm/ThicknessF;)V
    .locals 0

    .line 1098
    iput-object p1, p0, Lcom/metamoji/df/controller/DfNoteController;->_overflow:Lcom/metamoji/cm/ThicknessF;

    return-void
.end method

.method setStageOffset(FFZ)V
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_stage:Lcom/metamoji/df/sprite/Stage;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Stage;->getZoom()F

    move-result v0

    .line 454
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Viewport;->getContentOffset()Landroid/graphics/PointF;

    move-result-object v1

    .line 455
    iget v2, v1, Landroid/graphics/PointF;->x:F

    mul-float/2addr p1, v0

    cmpl-float v2, v2, p1

    if-nez v2, :cond_0

    iget v1, v1, Landroid/graphics/PointF;->y:F

    mul-float v2, p2, v0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    return-void

    .line 460
    :cond_0
    iget-object v1, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    mul-float/2addr p2, v0

    invoke-virtual {v1, p1, p2, p3}, Lcom/metamoji/df/sprite/Viewport;->setContentOffset(FFZ)V

    return-void
.end method

.method setStageZoom(F)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getZoomScale()F

    move-result v0

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_viewport:Lcom/metamoji/df/sprite/Viewport;

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->setZoomScale(F)V

    return-void
.end method

.method public setZoom(FZ)V
    .locals 4

    .line 1027
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "zoom"

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsDouble(Ljava/lang/String;D)D

    move-result-wide v0

    double-to-float v0, v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 1029
    iget-object v0, p0, Lcom/metamoji/df/controller/DfNoteController;->_model:Lcom/metamoji/df/model/IModel;

    float-to-double v1, p1

    invoke-interface {v0, v3, v1, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;D)V

    :cond_0
    if-eqz p2, :cond_1

    .line 1032
    invoke-virtual {p0, p1}, Lcom/metamoji/df/controller/DfNoteController;->setStageZoom(F)V

    :cond_1
    return-void
.end method
