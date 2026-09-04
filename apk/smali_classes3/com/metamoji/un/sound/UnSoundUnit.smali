.class public Lcom/metamoji/un/sound/UnSoundUnit;
.super Lcom/metamoji/nt/NtUnitController;
.source "UnSoundUnit.java"

# interfaces
.implements Lcom/metamoji/ns/direction/INsDirectionHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/sound/UnSoundUnit$ModelDef;,
        Lcom/metamoji/un/sound/UnSoundUnit$UndoModelDef;,
        Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;,
        Lcom/metamoji/un/sound/UnSoundUnit$ContextDef;
    }
.end annotation


# static fields
.field static final MMJ_SOUND_UNIT_AUTHOR_INFO_INDEX_DATE:I = 0x2

.field static final MMJ_SOUND_UNIT_AUTHOR_INFO_INDEX_ROOMID:I = 0x1

.field static final MMJ_SOUND_UNIT_AUTHOR_INFO_INDEX_USERID:I = 0x0

.field public static final MODELTYPE:Ljava/lang/String; = "$soundunit"

.field static s_permissionCheckUnit_:Lcom/metamoji/un/sound/UnSoundUnit;


# instance fields
.field pauseWhenFocused_:Z

.field player_:Lcom/metamoji/media/ui/UnMediaPlayer;

.field pressing_:Z

.field recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

.field registerCollabo_:Z

.field tapEventListenerAdded_:Z

.field tapListener_:Lcom/metamoji/df/sprite/TapListener;

.field viewportListenerAdded_:Z

.field viewportListener_:Lcom/metamoji/df/sprite/ViewportListener;


# direct methods
.method static bridge synthetic -$$Nest$mgetUnitManager(Lcom/metamoji/un/sound/UnSoundUnit;)Lcom/metamoji/un/sound/UnSoundUnitManager;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 252
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    return-void
.end method

.method public static createSoundUnitModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 195
    const-string v0, "$soundunit"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 196
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 197
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    const-string/jumbo v1, "unit"

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public static getFocusedSoundUnit()Lcom/metamoji/un/sound/UnSoundUnit;
    .locals 2

    .line 203
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 210
    instance-of v1, v0, Lcom/metamoji/un/sound/UnSoundUnit;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lcom/metamoji/un/sound/UnSoundUnit;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getPermissionCheckUnit()Lcom/metamoji/un/sound/UnSoundUnit;
    .locals 1

    .line 223
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnit;->s_permissionCheckUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    return-object v0
.end method

.method private getUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;
    .locals 1

    .line 339
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getSoundUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v0

    return-object v0
.end method

.method private handleMediaIdDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 3

    .line 2264
    new-instance v0, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;-><init>(Ljava/lang/Object;)V

    .line 2265
    invoke-virtual {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;->getMediaId()Ljava/lang/String;

    move-result-object p1

    .line 2266
    invoke-virtual {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2267
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->setMediaId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2268
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 2269
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_0
    return-void
.end method

.method private handleRecordIdDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 3

    .line 2228
    new-instance v0, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;-><init>(Ljava/lang/Object;)V

    .line 2229
    invoke-virtual {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;->getRecordId()Ljava/lang/String;

    move-result-object p1

    .line 2230
    invoke-virtual {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;->getUrl()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2231
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->setRecordId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2232
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 2233
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_0
    return-void
.end method

.method private handleTicketDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 3

    .line 2191
    new-instance v0, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;

    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;-><init>(Ljava/lang/Object;)V

    .line 2192
    invoke-virtual {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->getTicket()Ljava/lang/String;

    move-result-object p1

    .line 2193
    invoke-virtual {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->getAuthorInfo()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2194
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->setTicket(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2195
    invoke-interface {p2}, Lcom/metamoji/ns/direction/INsDirectionObserver;->documentModified()V

    .line 2196
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/metamoji/ns/direction/INsDirectionObserver;->pageContentsChanged(Lcom/metamoji/nt/NtPageController;)V

    :cond_0
    return-void
.end method

.method private performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 423
    invoke-static {p0, p2, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->performUndo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Z)V

    .line 425
    new-instance p1, Lcom/metamoji/df/controller/GeometricProps;

    invoke-direct {p1}, Lcom/metamoji/df/controller/GeometricProps;-><init>()V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 428
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    .line 430
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updatePlayer()V

    .line 431
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateRecorder()V

    return-void
.end method

.method public static registerPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 500
    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;-><init>(Lcom/metamoji/un/sound/UnSoundUnit-IA;)V

    .line 501
    const-string/jumbo v1, "soundUnitUndo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 502
    const-string/jumbo v1, "soundUnitGeopropUndo"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 503
    const-string/jumbo v1, "soundUnitTicket"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 504
    const-string/jumbo v1, "soundUnitRecordId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 505
    const-string/jumbo v1, "soundUnitMediaId"

    invoke-interface {p0, v1, v0}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method

.method private sendMediaIdDirection(Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;)V
    .locals 8

    .line 2278
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2282
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2284
    invoke-virtual {p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 2285
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 2288
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 2289
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2284
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 2291
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;->destroy()V

    return-void
.end method

.method private sendRecordIdDirection(Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;)V
    .locals 8

    .line 2242
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2246
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2248
    invoke-virtual {p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 2249
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 2252
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 2253
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2248
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 2255
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;->destroy()V

    return-void
.end method

.method private sendTicketDirection(Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;)V
    .locals 8

    .line 2205
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2209
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2211
    invoke-virtual {p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->getDirection()Ljava/lang/Object;

    move-result-object v2

    .line 2212
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getDirectionHandlerID()Ljava/lang/String;

    move-result-object v3

    .line 2215
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v6

    .line 2216
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 2211
    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/ns/direction/NsDirectionManager;->sendDirection(Ljava/lang/Object;Ljava/lang/String;ZZLcom/metamoji/nt/NtPageController;Lcom/metamoji/nt/NtLayerController;)V

    .line 2219
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->destroy()V

    return-void
.end method

.method private setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 760
    const-string/jumbo v1, "soundUnitGeopropUndo"

    invoke-static {p0, v1, v0}, Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 762
    invoke-static {p0, v1, p1}, Lcom/metamoji/un/util/UnGeoPropUndoSupport;->pushUndoInfo(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/GeometricProps;)V

    .line 764
    invoke-virtual {p2, v1, v0}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 768
    :cond_0
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    if-eqz p2, :cond_1

    .line 769
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->setHeight(F)V

    .line 770
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->size:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->setWidth(F)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 773
    :goto_0
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    if-eqz p2, :cond_2

    .line 774
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->setX(F)V

    .line 775
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->origin:Landroid/graphics/PointF;

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p0, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->setY(F)V

    .line 777
    :cond_2
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    if-eqz p2, :cond_3

    .line 778
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->rotation:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->setRotation(D)V

    .line 780
    :cond_3
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    if-eqz p2, :cond_4

    .line 781
    iget-object p2, p1, Lcom/metamoji/df/controller/GeometricProps;->contentScale:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    float-to-double v1, p2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->setContentScale(D)V

    .line 785
    :cond_4
    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnit;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    return v0
.end method

.method private setGeometricPropsSelf(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z
    .locals 0

    .line 796
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    .line 797
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->notifyGeometricPropsChangedToParent(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p1

    return p1
.end method

.method public static setPermissionCheckUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V
    .locals 0

    .line 220
    sput-object p0, Lcom/metamoji/un/sound/UnSoundUnit;->s_permissionCheckUnit_:Lcom/metamoji/un/sound/UnSoundUnit;

    return-void
.end method

.method public static unregisterPerformer(Lcom/metamoji/df/model/IModelManager;)V
    .locals 2

    .line 512
    const-string/jumbo v0, "soundUnitUndo"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 513
    const-string/jumbo v0, "soundUnitGeopropUndo"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 514
    const-string/jumbo v0, "soundUnitTicket"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 515
    const-string/jumbo v0, "soundUnitRecordId"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    .line 516
    const-string/jumbo v0, "soundUnitMediaId"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModelManager;->registerUndoPerformer(Ljava/lang/String;Lcom/metamoji/df/model/IUndoPerformer;)V

    return-void
.end method


# virtual methods
.method addTapEventListener()V
    .locals 2

    .line 1829
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapEventListenerAdded_:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1833
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1835
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapListener_:Lcom/metamoji/df/sprite/TapListener;

    if-nez v1, :cond_1

    .line 1836
    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$9;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$9;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    iput-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapListener_:Lcom/metamoji/df/sprite/TapListener;

    :cond_1
    const/4 v1, 0x1

    .line 1843
    iput-boolean v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapEventListenerAdded_:Z

    .line 1844
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapListener_:Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method addViewportListener()V
    .locals 2

    .line 1501
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListenerAdded_:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1505
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    .line 1507
    iput-boolean v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListenerAdded_:Z

    .line 1508
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListener_:Lcom/metamoji/df/sprite/ViewportListener;

    if-nez v1, :cond_1

    .line 1509
    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$8;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$8;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    iput-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListener_:Lcom/metamoji/df/sprite/ViewportListener;

    .line 1578
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListener_:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public canFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public closePlayer()V
    .locals 2

    .line 1258
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$5;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$5;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public closeRecorder()V
    .locals 2

    .line 1298
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$7;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$7;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public collectSelectedAuthorInfos(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtAuthorInfo;",
            ">;)V"
        }
    .end annotation

    .line 1463
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAuthorInfo()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1469
    :cond_0
    :try_start_0
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1471
    new-instance v0, Lcom/metamoji/nt/NtAuthorInfo;

    invoke-direct {v0}, Lcom/metamoji/nt/NtAuthorInfo;-><init>()V

    const/4 v2, 0x0

    .line 1472
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtAuthorInfo;->setUserId(Ljava/lang/String;)V

    const/4 v2, 0x1

    .line 1473
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/nt/NtAuthorInfo;->setRoomId(Ljava/lang/String;)V

    const/4 v2, 0x2

    .line 1474
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getDouble(I)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/nt/NtAuthorInfo;->setActionTime(D)V

    .line 1475
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1478
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method

.method protected createBaseSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 2

    .line 1147
    new-instance v0, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v0}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v1, 0x0

    .line 1148
    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    return-object v0
.end method

.method createMediaIdUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 908
    const-string/jumbo v0, "soundUnitMediaId"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method createRecordIdUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 974
    const-string/jumbo v0, "soundUnitRecordId"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method createTicketUndoModel()Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 964
    const-string/jumbo v0, "soundUnitTicket"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/metamoji/un/sound/UnSoundUnit$UnSoundUnitUndoPerformer;->makeNewUndoModelForController(Lcom/metamoji/df/controller/DfController;Ljava/lang/String;I)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    return-object v0
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 333
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtUnitStateManager;->removeUnitInPage(Lcom/metamoji/nt/NtUnitController;)V

    .line 335
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method getAuthorInfo()Ljava/lang/String;
    .locals 2

    .line 1070
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "authorInfo"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCacheFileName()Ljava/lang/String;
    .locals 2

    .line 1110
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1114
    :cond_0
    const-string v1, ".m4a"

    invoke-static {v0, v1}, Lcom/metamoji/media/MediaUtil;->createCacheFileName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getCacheFolder()Ljava/io/File;
    .locals 1

    .line 1106
    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getDirectionHandlerID()Ljava/lang/String;
    .locals 1

    .line 2142
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMediaId()Ljava/lang/String;
    .locals 2

    .line 1086
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "mediaId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRecordId()Ljava/lang/String;
    .locals 2

    .line 1079
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "recordId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSoundUnitRect()Landroid/graphics/RectF;
    .locals 5

    .line 2105
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2106
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0

    .line 2110
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2111
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->getOverlayGuardView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 2112
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2113
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->getOverlayGuardView()Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_3

    .line 2117
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    return-object v0

    .line 2120
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitBaseLocalBounds()Landroid/graphics/RectF;

    move-result-object v1

    .line 2122
    new-instance v2, Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/RectF;->left:F

    iget v4, v1, Landroid/graphics/RectF;->top:F

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/un/sound/UnSoundUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    .line 2123
    new-instance v3, Landroid/graphics/PointF;

    iget v4, v1, Landroid/graphics/RectF;->right:F

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    invoke-direct {v3, v4, v1}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {p0, v3, v0}, Lcom/metamoji/un/sound/UnSoundUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 2125
    new-instance v1, Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-direct {v1, v3, v2, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v1
.end method

.method getTicket()Ljava/lang/String;
    .locals 2

    .line 1063
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "ticket"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUnitBaseLocalBounds()Landroid/graphics/RectF;
    .locals 4

    .line 2130
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 2

    .line 1095
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v1, "url"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
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

    .line 2154
    new-instance v0, Lcom/metamoji/df/controller/StageQueueingDisposer;

    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/df/controller/StageQueueingDisposer;-><init>(Lcom/metamoji/df/sprite/Stage;)V

    .line 2157
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

    .line 2158
    invoke-virtual {p0, v1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2161
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 2162
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_0
    move-exception p1

    .line 2161
    invoke-virtual {v0}, Lcom/metamoji/df/controller/StageQueueingDisposer;->dispose()V

    .line 2162
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 2163
    throw p1
.end method

.method protected handleOneDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V
    .locals 2

    .line 2173
    invoke-virtual {p1}, Lcom/metamoji/ns/direction/NsReceivedDirection;->direction()Ljava/lang/Object;

    move-result-object v0

    .line 2174
    invoke-static {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2175
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->handleTicketDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 2176
    :cond_0
    invoke-static {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2177
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->handleRecordIdDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 2178
    :cond_1
    invoke-static {v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;->isTargetDirection(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2179
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->handleMediaIdDirection(Lcom/metamoji/ns/direction/NsReceivedDirection;Lcom/metamoji/ns/direction/INsDirectionObserver;)V

    return-void

    .line 2181
    :cond_2
    const-string p1, "image unit received unknown direction."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-void
.end method

.method public handleTap(Landroid/graphics/PointF;)V
    .locals 4

    .line 1798
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1799
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1800
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1801
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1803
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x0

    .line 1804
    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnit;->play(Z)V

    return-void

    .line 1809
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecordable()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1810
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result p1

    if-nez p1, :cond_3

    .line 1811
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->record()V

    return-void

    .line 1817
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1818
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    return-void

    .line 1821
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1822
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    :cond_3
    return-void
.end method

.method public ignoreFocusRestrictionsByOthers()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 264
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    const/4 p1, 0x0

    .line 266
    iput-boolean p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->registerCollabo_:Z

    .line 267
    iput-boolean p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->pressing_:Z

    .line 270
    iput-boolean p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapEventListenerAdded_:Z

    .line 271
    iput-boolean p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->pauseWhenFocused_:Z

    .line 272
    iput-boolean p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListenerAdded_:Z

    .line 275
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->registerCollaboHandler()V

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    .line 282
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/df/controller/DfPageController;->isCurrentPage()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 283
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->enlistSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    :cond_0
    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 0

    .line 291
    invoke-super {p0, p1, p2}, Lcom/metamoji/nt/NtUnitController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 294
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance p2, Lcom/metamoji/un/sound/UnSoundUnit$1;

    invoke-direct {p2, p0}, Lcom/metamoji/un/sound/UnSoundUnit$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {p1, p2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isContainer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 579
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isRecordable()Z
    .locals 6

    .line 1339
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1340
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 1345
    :cond_0
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v1

    sget-object v3, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v1, v3, :cond_1

    goto/16 :goto_1

    .line 1352
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->allowToEditOthersWritings()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1353
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    .line 1354
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtUnitController;->getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;

    move-result-object v0

    .line 1355
    invoke-static {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->isAuthorMyself(Lcom/metamoji/nt/NtAuthorInfo;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 1361
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    .line 1362
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 1363
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    .line 1365
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1367
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtUnitStateManager;->isEdittingByOtherUsers(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 1370
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    .line 1371
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_7

    .line 1373
    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    return v5

    .line 1374
    :cond_4
    :goto_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1375
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->personalModeType()I

    move-result v0

    if-ne v0, v5, :cond_5

    return v5

    .line 1379
    :cond_5
    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/nt/NtPageController;->getUserOrGroupIdFromPersonalLayerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1380
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v5

    :cond_6
    return v2

    :cond_7
    return v5

    :cond_8
    :goto_1
    return v2
.end method

.method public isRecording()Z
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public killFocus(Z)V
    .locals 3

    .line 665
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->removeTapEventListener()V

    .line 666
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->removeViewportListener()V

    .line 668
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->killFocus(Z)V

    .line 671
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnit$3;

    invoke-direct {v0, p0}, Lcom/metamoji/un/sound/UnSoundUnit$3;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 5

    .line 993
    instance-of v0, p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    if-eqz v0, :cond_0

    .line 994
    move-object v0, p1

    check-cast v0, Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 1004
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->handleToolModeChangeEvent(Lcom/metamoji/nt/NtToolModeChangedContext;)V

    goto/16 :goto_0

    .line 1006
    :cond_0
    instance-of v0, p1, Lcom/metamoji/media/MediaUploadedEventContext;

    if-eqz v0, :cond_1

    .line 1007
    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/MediaUploadedEventContext;

    .line 1008
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1010
    iget-object v2, v0, Lcom/metamoji/media/MediaUploadedEventContext;->ticket:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/metamoji/media/MediaUploadedEventContext;->ticket:Ljava/lang/String;

    .line 1012
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1013
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    goto :goto_0

    .line 1015
    :cond_1
    instance-of v0, p1, Lcom/metamoji/media/MediaUploadingEventContext;

    if-eqz v0, :cond_2

    .line 1016
    move-object v0, p1

    check-cast v0, Lcom/metamoji/media/MediaUploadingEventContext;

    .line 1017
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1019
    iget-object v2, v0, Lcom/metamoji/media/MediaUploadingEventContext;->ticket:Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/metamoji/media/MediaUploadingEventContext;->ticket:Ljava/lang/String;

    .line 1021
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1022
    iget-object v2, v0, Lcom/metamoji/media/MediaUploadingEventContext;->recordId:Ljava/lang/String;

    .line 1023
    iget-object v0, v0, Lcom/metamoji/media/MediaUploadingEventContext;->url:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1026
    :try_start_0
    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/metamoji/un/sound/UnSoundUnit;->setRecordId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    .line 1027
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 1030
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager;->SharedInstance()Lcom/metamoji/media/MediaUploadManager;

    move-result-object v0

    .line 1031
    invoke-virtual {v0, v1}, Lcom/metamoji/media/MediaUploadManager;->setRecordIdNotificationCompletedToUploadData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1033
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 1036
    :cond_2
    instance-of v0, p1, Lcom/metamoji/nt/NtLayerChangedEventContext;

    if-eqz v0, :cond_4

    .line 1037
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1038
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    .line 1040
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1041
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recordingCompleteIfNeed()V

    goto :goto_0

    .line 1044
    :cond_4
    instance-of v0, p1, Lcom/metamoji/ns/NsRoomSettingChangedEventContext;

    if-eqz v0, :cond_6

    .line 1045
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1046
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    .line 1048
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1049
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->recorder_:Lcom/metamoji/un/sound/UnSoundUnitRecorder;

    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnitRecorder;->recordingCompleteIfNeed()V

    .line 1054
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    move-result p1

    return p1
.end method

.method mergeUploadingImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 9

    .line 1203
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 1204
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    .line 1206
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1207
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1208
    new-instance v4, Landroid/graphics/Paint;

    const/4 v5, 0x3

    invoke-direct {v4, v5}, Landroid/graphics/Paint;-><init>(I)V

    .line 1211
    new-instance v5, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    const/4 v8, 0x0

    invoke-direct {v5, v8, v8, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1212
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6, v8, v8, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1213
    invoke-virtual {v3, p1, v5, v6, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 1215
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    const/16 v4, 0x9e

    const/16 v5, 0xa2

    const/16 v6, 0x99

    const/16 v7, 0x9b

    .line 1216
    invoke-virtual {p1, v6, v7, v4, v5}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 1217
    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v4, 0x1

    .line 1218
    invoke-virtual {p1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1219
    invoke-virtual {p1, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 1221
    div-int/lit8 v5, v0, 0xa

    int-to-float v5, v5

    .line 1222
    div-int/lit8 v6, v0, 0x4

    int-to-float v6, v6

    int-to-float v0, v0

    sub-float/2addr v0, v6

    sub-float/2addr v0, v5

    int-to-float v1, v1

    sub-float/2addr v1, v6

    sub-float/2addr v1, v5

    .line 1226
    new-instance v5, Landroid/graphics/RectF;

    add-float v7, v0, v6

    add-float/2addr v6, v1

    invoke-direct {v5, v0, v1, v7, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1227
    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v3, v0, v1, v6, p1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1229
    sget p1, Lcom/metamoji/noteanytime/R$drawable;->design1_mnu_icon_cloud:I

    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0}, Lcom/metamoji/cm/Size;-><init>()V

    const/4 v1, -0x1

    invoke-static {p1, v1, v0}, Lcom/metamoji/ui/HoverCm;->createHighlightImageWithImage(IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1230
    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v0, v8, v8, v1, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 1231
    new-instance v1, Landroid/graphics/Paint;

    const/4 v6, 0x2

    invoke-direct {v1, v6}, Landroid/graphics/Paint;-><init>(I)V

    .line 1232
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1233
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1234
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setDither(Z)V

    .line 1235
    invoke-virtual {v3, p1, v0, v5, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-object v2
.end method

.method onTapped(Lcom/metamoji/df/sprite/TouchEvent;)V
    .locals 4

    .line 1862
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 1867
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    .line 1869
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getLayerId()Ljava/lang/String;

    move-result-object v1

    .line 1870
    const-string v2, "_[layer-forPersonalTemplate]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_1

    .line 1872
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    .line 1874
    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1881
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    .line 1885
    :cond_2
    invoke-interface {p1}, Lcom/metamoji/df/sprite/TouchEvent;->getPoint()Landroid/graphics/PointF;

    move-result-object p1

    .line 1888
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->viewportToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1889
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1890
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1892
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1893
    iget v1, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1, p1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1894
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 1896
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result p1

    if-nez p1, :cond_6

    const/4 p1, 0x0

    .line 1897
    invoke-virtual {p0, p1}, Lcom/metamoji/un/sound/UnSoundUnit;->play(Z)V

    return-void

    .line 1902
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecordable()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1903
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result p1

    if-nez p1, :cond_6

    .line 1904
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->record()V

    return-void

    .line 1910
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1911
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    return-void

    .line 1914
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1915
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    :cond_6
    :goto_0
    return-void
.end method

.method public pageActivated(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 1

    .line 686
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageActivated(Lcom/metamoji/df/controller/DfPageController;)V

    .line 690
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->enlistSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 693
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/metamoji/nt/NtUnitStateManager;->addUnitInPage(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/df/controller/DfPageController;)V

    .line 695
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return-void
.end method

.method public pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 706
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->pageDeactivating(Lcom/metamoji/df/controller/DfPageController;)V

    .line 709
    invoke-static {}, Lcom/metamoji/nt/NtUnitStateManager;->sharedInstance()Lcom/metamoji/nt/NtUnitStateManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtUnitStateManager;->removeUnitInPage(Lcom/metamoji/nt/NtUnitController;)V

    .line 711
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 712
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 715
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    .line 725
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->delistSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    return-void
.end method

.method public paperSizeChanged(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 551
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 2030
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    if-eqz v0, :cond_0

    .line 2031
    invoke-virtual {v0}, Lcom/metamoji/media/ui/UnMediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method performMediaIdUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 479
    const-string v0, "or"

    goto :goto_0

    :cond_0
    const-string v0, "nr"

    :goto_0
    if-eqz p1, :cond_1

    .line 480
    const-string v1, "om"

    goto :goto_1

    :cond_1
    const-string v1, "nm"

    :goto_1
    if-eqz p1, :cond_2

    .line 481
    const-string p1, "ou"

    goto :goto_2

    :cond_2
    const-string p1, "nu"

    .line 483
    :goto_2
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 484
    invoke-interface {p2, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 488
    invoke-virtual {p0, v0, p1, v2, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->setRecordId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    goto :goto_3

    .line 490
    :cond_3
    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->setMediaId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    .line 493
    :goto_3
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return-void
.end method

.method performRecordIdUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 463
    const-string v0, "or"

    goto :goto_0

    :cond_0
    const-string v0, "nr"

    :goto_0
    if-eqz p1, :cond_1

    .line 464
    const-string p1, "ou"

    goto :goto_1

    :cond_1
    const-string p1, "nu"

    .line 466
    :goto_1
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 469
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/metamoji/un/sound/UnSoundUnit;->setRecordId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    .line 471
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return-void
.end method

.method performSoundUnitUndoUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 382
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string p2, "ot"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 383
    iget-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "or"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 384
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "om"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "ou"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 386
    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "oa"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 388
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string p2, "nt"

    invoke-interface {p1, p2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 389
    iget-object p2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "nr"

    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 390
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v1, "nm"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 391
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v2, "nu"

    invoke-interface {v1, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 392
    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "na"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    if-eqz p1, :cond_1

    .line 396
    iget-object v3, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v4, "ticket"

    invoke-interface {v3, v4, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 399
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v3, "recordId"

    invoke-interface {p1, v3, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    if-eqz v0, :cond_3

    .line 402
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string p2, "mediaId"

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 405
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo p2, "url"

    invoke-interface {p1, p2, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 408
    iget-object p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string p2, "authorInfo"

    invoke-interface {p1, p2, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    .line 414
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updatePlayer()V

    .line 415
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateRecorder()V

    return-void
.end method

.method performTicketUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 439
    const-string v0, "ot"

    goto :goto_0

    :cond_0
    const-string v0, "nt"

    :goto_0
    if-eqz p1, :cond_1

    .line 443
    const-string p1, "oa"

    goto :goto_1

    :cond_1
    const-string p1, "na"

    .line 445
    :goto_1
    invoke-interface {p2, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 449
    invoke-interface {p2, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v1, 0x1

    .line 451
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/metamoji/un/sound/UnSoundUnit;->setTicket(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    .line 455
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return-void
.end method

.method public performUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 350
    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    .line 352
    const-string/jumbo v1, "soundUnitUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->performSoundUnitUndoUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 354
    :cond_0
    const-string/jumbo v1, "soundUnitGeopropUndo"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 355
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->performGeopropUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 356
    :cond_1
    const-string/jumbo v1, "soundUnitTicket"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 357
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->performTicketUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 358
    :cond_2
    const-string/jumbo v1, "soundUnitRecordId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 359
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->performRecordIdUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 360
    :cond_3
    const-string/jumbo v1, "soundUnitMediaId"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 361
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->performMediaIdUndoOrRedo(ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 363
    :cond_4
    const-string/jumbo p1, "unkown undo model type (%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public play(Z)V
    .locals 7

    .line 1988
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getCacheFileName()Ljava/lang/String;

    move-result-object v4

    .line 1989
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getCacheFolder()Ljava/io/File;

    move-result-object v3

    .line 1991
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v6

    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnit$11;

    move-object v2, p0

    move-object v1, p0

    move v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/sound/UnSoundUnit$11;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;Lcom/metamoji/un/sound/UnSoundUnit;Ljava/io/File;Ljava/lang/String;Z)V

    invoke-virtual {v6, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playerBarClosed()V
    .locals 2

    .line 2072
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2074
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$13;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$13;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public playerDidPlayToEndTime()V
    .locals 1

    .line 2099
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2100
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->stop()V

    :cond_0
    return-void
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 311
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->unregisterCollaboHandler()V

    .line 313
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    .line 316
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    .line 320
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUnitManager()Lcom/metamoji/un/sound/UnSoundUnitManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/metamoji/un/sound/UnSoundUnitManager;->delistSoundUnit(Lcom/metamoji/un/sound/UnSoundUnit;)V

    .line 322
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public reRecord()V
    .locals 6

    .line 2043
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    const/4 v1, 0x0

    .line 2044
    invoke-virtual {p0, v1}, Lcom/metamoji/un/sound/UnSoundUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v2

    const/4 v3, 0x1

    const-wide/16 v4, 0xa

    .line 2046
    :try_start_0
    invoke-virtual {p0, v1, v1, v2, v3}, Lcom/metamoji/un/sound/UnSoundUnit;->setTicket(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    .line 2047
    invoke-virtual {p0, v1, v1, v2, v3}, Lcom/metamoji/un/sound/UnSoundUnit;->setMediaId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2051
    invoke-virtual {p0, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 2054
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    .line 2056
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    .line 2058
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$12;

    invoke-direct {v1, p0, p0}, Lcom/metamoji/un/sound/UnSoundUnit$12;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;Lcom/metamoji/un/sound/UnSoundUnit;)V

    :goto_0
    invoke-virtual {v0, v1, v4, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    .line 2049
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2051
    invoke-virtual {p0, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 2054
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    .line 2056
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    .line 2058
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$12;

    invoke-direct {v1, p0, p0}, Lcom/metamoji/un/sound/UnSoundUnit$12;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;Lcom/metamoji/un/sound/UnSoundUnit;)V

    goto :goto_0

    .line 2051
    :goto_1
    invoke-virtual {p0, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 2054
    invoke-virtual {v0}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    .line 2056
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    .line 2058
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/un/sound/UnSoundUnit$12;

    invoke-direct {v2, p0, p0}, Lcom/metamoji/un/sound/UnSoundUnit$12;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v0, v2, v4, v5}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThreadAsync(Ljava/lang/Runnable;J)Z

    .line 2064
    throw v1
.end method

.method public record()V
    .locals 2

    .line 1930
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$10;

    invoke-direct {v1, p0, p0}, Lcom/metamoji/un/sound/UnSoundUnit$10;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recordBarClosed()V
    .locals 2

    .line 2084
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2086
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$14;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$14;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public recordingCompleted(Ljava/io/File;Z)V
    .locals 8

    if-eqz p2, :cond_0

    .line 1404
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closeRecorder()V

    .line 1407
    :cond_0
    invoke-static {}, Lcom/metamoji/media/MediaUtil;->makeTicket()Ljava/lang/String;

    move-result-object v2

    .line 1408
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object p2

    const/4 v0, 0x0

    .line 1409
    invoke-virtual {p0, v0}, Lcom/metamoji/un/sound/UnSoundUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    .line 1412
    :try_start_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v3

    .line 1413
    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->userId()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1415
    invoke-virtual {v3}, Lcom/metamoji/ns/NsCollaboManager;->roomId()Ljava/lang/String;

    move-result-object v0

    .line 1416
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    .line 1417
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1418
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1419
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 1420
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    long-to-double v4, v4

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v6

    .line 1422
    :try_start_1
    invoke-virtual {v3, v4, v5}, Lorg/json/JSONArray;->put(D)Lorg/json/JSONArray;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    .line 1424
    :try_start_2
    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 1426
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    const/4 v3, 0x1

    .line 1429
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/metamoji/un/sound/UnSoundUnit;->setTicket(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z

    .line 1430
    invoke-static {v2}, Lcom/metamoji/media/service/MediaGetMediaFile;->urlForGetMediaFileForMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1431
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/metamoji/un/sound/UnSoundUnit;->setMediaId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1433
    invoke-virtual {p0, v1}, Lcom/metamoji/un/sound/UnSoundUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 1436
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    .line 1441
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getCacheFileName()Ljava/lang/String;

    move-result-object p2

    .line 1442
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getCacheFolder()Ljava/io/File;

    move-result-object v0

    .line 1443
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1445
    invoke-static {p1, v1}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 1449
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v0

    .line 1450
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    sget p1, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_BUTTON:I

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/media/MediaUploadManager2;->registFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/nt/NtDocument;Z)V

    .line 1452
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return-void

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 1433
    invoke-virtual {p0, v1}, Lcom/metamoji/un/sound/UnSoundUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 1436
    invoke-virtual {p2}, Lcom/metamoji/nt/NtPageController;->setNeedsUpdateThumbnail()V

    .line 1438
    throw p1
.end method

.method registerCollaboHandler()V
    .locals 1

    .line 2299
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->registerCollabo_:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2304
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2309
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2311
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->registerHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    const/4 v0, 0x1

    .line 2312
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->registerCollabo_:Z

    :cond_2
    :goto_0
    return-void
.end method

.method removeTapEventListener()V
    .locals 2

    .line 1849
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapEventListenerAdded_:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1853
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1855
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapListener_:Lcom/metamoji/df/sprite/TapListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeTapListener(Lcom/metamoji/df/sprite/TapListener;)V

    const/4 v0, 0x0

    .line 1856
    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapListener_:Lcom/metamoji/df/sprite/TapListener;

    const/4 v0, 0x0

    .line 1857
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->tapEventListenerAdded_:Z

    :cond_1
    :goto_0
    return-void
.end method

.method removeViewportListener()V
    .locals 2

    .line 1583
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListenerAdded_:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1587
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1589
    iget-object v1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListener_:Lcom/metamoji/df/sprite/ViewportListener;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    const/4 v0, 0x0

    .line 1590
    iput-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListener_:Lcom/metamoji/df/sprite/ViewportListener;

    const/4 v0, 0x0

    .line 1591
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->viewportListenerAdded_:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public requestClosePlayer()V
    .locals 0

    .line 1102
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->closePlayer()V

    return-void
.end method

.method public seekToTime(D)V
    .locals 1

    .line 2068
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->player_:Lcom/metamoji/media/ui/UnMediaPlayer;

    invoke-virtual {v0, p1, p2}, Lcom/metamoji/media/ui/UnMediaPlayer;->seekToTime(D)V

    return-void
.end method

.method public setFocus(Lcom/metamoji/nt/NtFocusOption;)V
    .locals 1

    .line 611
    invoke-super {p0, p1}, Lcom/metamoji/nt/NtUnitController;->setFocus(Lcom/metamoji/nt/NtFocusOption;)V

    .line 615
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->addTapEventListener()V

    .line 616
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->addViewportListener()V

    .line 618
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnit$2;

    invoke-direct {v0, p0}, Lcom/metamoji/un/sound/UnSoundUnit$2;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 0

    .line 737
    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/sound/UnSoundUnit;->setGeometricPropsNoUpdate(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 738
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    .line 743
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 745
    invoke-virtual {p1, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->updateLayoutLabelWithUnit(Lcom/metamoji/nt/NtUnitController;)V

    :cond_1
    return-void
.end method

.method setMediaId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z
    .locals 6

    .line 869
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getRecordId()Ljava/lang/String;

    move-result-object v0

    .line 870
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getMediaId()Ljava/lang/String;

    move-result-object v1

    .line 871
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUrl()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 875
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    if-eqz p3, :cond_2

    .line 877
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->createMediaIdUndoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 878
    const-string v5, "or"

    invoke-interface {v4, v5, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 879
    const-string v0, "om"

    invoke-interface {v4, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const-string v0, "nm"

    invoke-interface {v4, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 881
    const-string v0, "ou"

    invoke-interface {v4, v0, v2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    const-string v0, "nu"

    invoke-interface {v4, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-virtual {p3, v4, v3}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 887
    :cond_2
    iget-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "mediaId"

    invoke-interface {p3, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    iget-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "recordId"

    invoke-interface {p3, v0}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 889
    iget-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "url"

    invoke-interface {p3, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 892
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 893
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;

    move-result-object p3

    .line 894
    invoke-virtual {p3, p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;->setMediaId(Ljava/lang/String;)V

    .line 895
    invoke-virtual {p3, p2}, Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;->setUrl(Ljava/lang/String;)V

    .line 896
    invoke-direct {p0, p3}, Lcom/metamoji/un/sound/UnSoundUnit;->sendMediaIdDirection(Lcom/metamoji/un/sound/direction/UnSoundUnitMediaIdDirectionData;)V

    .line 901
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return v3
.end method

.method setPauseWhenFocused(Z)V
    .locals 0

    .line 984
    iput-boolean p1, p0, Lcom/metamoji/un/sound/UnSoundUnit;->pauseWhenFocused_:Z

    return-void
.end method

.method setRecordId(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z
    .locals 5

    .line 924
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getRecordId()Ljava/lang/String;

    move-result-object v0

    .line 925
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 928
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 930
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->createRecordIdUndoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 931
    const-string v4, "or"

    invoke-interface {v3, v4, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    const-string v0, "nr"

    invoke-interface {v3, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    const-string v0, "ou"

    invoke-interface {v3, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    const-string v0, "nu"

    invoke-interface {v3, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    invoke-virtual {p3, v3, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 939
    :cond_2
    iget-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string v0, "recordId"

    invoke-interface {p3, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 940
    iget-object p3, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    const-string/jumbo v0, "url"

    invoke-interface {p3, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_3

    .line 943
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result p3

    if-eqz p3, :cond_3

    .line 944
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;

    move-result-object p3

    .line 945
    invoke-virtual {p3, p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;->setRecordId(Ljava/lang/String;)V

    .line 946
    invoke-virtual {p3, p2}, Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;->setUrl(Ljava/lang/String;)V

    .line 947
    invoke-direct {p0, p3}, Lcom/metamoji/un/sound/UnSoundUnit;->sendRecordIdDirection(Lcom/metamoji/un/sound/direction/UnSoundUnitRecordIdDirectionData;)V

    .line 952
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return v2
.end method

.method setTicket(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;Z)Z
    .locals 5

    .line 813
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v0

    .line 814
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAuthorInfo()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 817
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_1

    .line 818
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    if-eqz p3, :cond_2

    .line 820
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->createTicketUndoModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 821
    const-string v4, "ot"

    invoke-interface {v3, v4, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string v0, "nt"

    invoke-interface {v3, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string v0, "oa"

    invoke-interface {v3, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 824
    const-string v0, "na"

    invoke-interface {v3, v0, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    invoke-virtual {p3, v3, v2}, Lcom/metamoji/df/controller/EditContext;->addUndo(Lcom/metamoji/df/model/IModel;Z)V

    .line 829
    :cond_2
    const-string/jumbo p3, "ticket"

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 830
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p3, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 832
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    .line 835
    :goto_1
    const-string p3, "authorInfo"

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    .line 836
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p3, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 838
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_model:Lcom/metamoji/df/model/IModel;

    invoke-interface {v0, p3}, Lcom/metamoji/df/model/IModel;->deleteProperty(Ljava/lang/String;)V

    :goto_2
    if-eqz p4, :cond_5

    .line 842
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 843
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p3

    invoke-static {p3}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;

    move-result-object p3

    .line 844
    invoke-virtual {p3, p1}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->setTicket(Ljava/lang/String;)V

    .line 845
    invoke-virtual {p3, p2}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->setAuthorInfo(Ljava/lang/String;)V

    .line 846
    invoke-direct {p0, p3}, Lcom/metamoji/un/sound/UnSoundUnit;->sendTicketDirection(Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;)V

    .line 851
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->updateSprite()V

    return v2
.end method

.method public stop()V
    .locals 0

    return-void
.end method

.method unitController()Lcom/metamoji/nt/NtUnitController;
    .locals 0

    return-object p0
.end method

.method unregisterCollaboHandler()V
    .locals 1

    .line 2321
    iget-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->registerCollabo_:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 2326
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isDirectable()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2331
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 2333
    invoke-virtual {v0, p0}, Lcom/metamoji/ns/direction/NsDirectionManager;->unregisterHandler(Lcom/metamoji/ns/direction/INsDirectionHandler;)V

    const/4 v0, 0x0

    .line 2334
    iput-boolean v0, p0, Lcom/metamoji/un/sound/UnSoundUnit;->registerCollabo_:Z

    :cond_2
    :goto_0
    return-void
.end method

.method updatePlayer()V
    .locals 2

    .line 1244
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$4;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$4;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateRecorder()V
    .locals 2

    .line 1283
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnit$6;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnit$6;-><init>(Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateSprite()V
    .locals 9

    .line 1156
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isValid()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1160
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getWidth()F

    move-result v0

    .line 1161
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getHeight()F

    move-result v1

    .line 1163
    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 1164
    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 1166
    iget-object v2, p0, Lcom/metamoji/un/sound/UnSoundUnit;->_sprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v3

    .line 1167
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Graphics;->clear()V

    .line 1169
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v2

    .line 1170
    invoke-static {}, Lcom/metamoji/media/MediaUploadManager2;->SharedInstance()Lcom/metamoji/media/MediaUploadManager2;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/metamoji/media/MediaUploadManager2;->isUploaded(Ljava/lang/String;)Z

    move-result v4

    .line 1174
    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isPlaying()Z

    move-result v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v5, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    .line 1185
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->play_btn:I

    if-nez v4, :cond_5

    goto :goto_2

    .line 1190
    :cond_2
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->rec_btn:I

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 1176
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->play_btn_push:I

    if-nez v4, :cond_5

    goto :goto_2

    .line 1181
    :cond_4
    sget v2, Lcom/metamoji/noteanytime/R$drawable;->rec_btn_push:I

    :cond_5
    :goto_1
    move v6, v7

    .line 1194
    :goto_2
    invoke-static {v2}, Lcom/metamoji/ui/HoverCm;->getRealSizeImage(I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v6, :cond_6

    .line 1196
    invoke-virtual {p0, v2}, Lcom/metamoji/un/sound/UnSoundUnit;->mergeUploadingImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_6
    move-object v6, v2

    .line 1198
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v0, v2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v8, v1, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    return-void
.end method
