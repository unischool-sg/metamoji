.class public Lcom/metamoji/nt/NtUnitController;
.super Lcom/metamoji/df/controller/DfUnitController;
.source "NtUnitController.java"

# interfaces
.implements Lcom/metamoji/ctold/CtTaggableObject;
.implements Lcom/metamoji/nt/INtController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtUnitController$ModelDef;,
        Lcom/metamoji/nt/NtUnitController$ContextDef;,
        Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;,
        Lcom/metamoji/nt/NtUnitController$AddUnitPosition;
    }
.end annotation


# static fields
.field protected static _unitContainerExtenders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/nt/INtUnitContainerExtender;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final SUBID_TYPE:Ljava/lang/String;

.field private _calledUpdateViewmodeHighlight:Z

.field protected _displayTag:Z

.field private _isDirectable:Z

.field protected _mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

.field private _readOnly:Z

.field protected _tagSprite:Lcom/metamoji/df/sprite/Sprite;

.field protected _tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;"
        }
    .end annotation
.end field

.field cp_default:Lcom/metamoji/nt/ICommandProcessor;


# direct methods
.method static bridge synthetic -$$Nest$fput_calledUpdateViewmodeHighlight(Lcom/metamoji/nt/NtUnitController;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitController;->_calledUpdateViewmodeHighlight:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V
    .locals 0

    .line 228
    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/df/controller/DfUnitController;-><init>(Lcom/metamoji/df/controller/ControllerContext;Lcom/metamoji/df/model/IModel;Ljava/lang/String;)V

    .line 76
    const-string/jumbo p2, "unit"

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitController;->SUBID_TYPE:Ljava/lang/String;

    .line 549
    new-instance p2, Lcom/metamoji/nt/NtCommandProcessor;

    invoke-direct {p2}, Lcom/metamoji/nt/NtCommandProcessor;-><init>()V

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitController;->cp_default:Lcom/metamoji/nt/ICommandProcessor;

    const/4 p2, 0x0

    .line 1552
    iput-boolean p2, p0, Lcom/metamoji/nt/NtUnitController;->_calledUpdateViewmodeHighlight:Z

    .line 231
    iput-boolean p2, p0, Lcom/metamoji/nt/NtUnitController;->_readOnly:Z

    .line 232
    iput-boolean p2, p0, Lcom/metamoji/nt/NtUnitController;->_isDirectable:Z

    .line 233
    iget-object p1, p1, Lcom/metamoji/df/controller/ControllerContext;->mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    return-void
.end method

.method public static registerUnitContainerExtender(Lcom/metamoji/nt/INtUnitContainerExtender;)V
    .locals 1

    .line 289
    sget-object v0, Lcom/metamoji/nt/NtUnitController;->_unitContainerExtenders:Ljava/util/List;

    if-nez v0, :cond_0

    .line 290
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/metamoji/nt/NtUnitController;->_unitContainerExtenders:Ljava/util/List;

    .line 293
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtUnitController;->_unitContainerExtenders:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static visitModelForUnitID(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/controller/ModelVisitContext;)V
    .locals 5

    .line 455
    check-cast p1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;

    .line 457
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewID:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v1

    const-string/jumbo v2, "unit"

    const-string/jumbo v3, "unitId"

    if-ne v0, v1, :cond_0

    .line 459
    invoke-interface {p0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 461
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 462
    invoke-interface {p0, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 465
    :cond_0
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->CollectModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 466
    invoke-interface {p0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 467
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 469
    :cond_1
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewIDForSchool:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v1

    const-string v4, "_[unit-forUser]_"

    if-ne v0, v1, :cond_2

    .line 471
    invoke-interface {p0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 473
    iget-object v1, p1, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->userId:Ljava/lang/String;

    filled-new-array {v0, v4, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s%s%s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 474
    invoke-interface {p0, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p0

    .line 476
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 478
    :cond_2
    sget-object v0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->RenewIDForInvalidUnitId:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    move-result-object v1

    if-ne v0, v1, :cond_4

    .line 480
    invoke-interface {p0, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 481
    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 482
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmLocalIdManager;->generateSubIdWithType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 483
    invoke-interface {p0, v3, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getIdTable()Ljava/util/Map;

    move-result-object p0

    .line 485
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    .line 487
    :cond_4
    sget-object p0, Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;->SearchModel:Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    invoke-virtual {p1}, Lcom/metamoji/nt/NtIdentifiersModelVisitContext;->getCommand()Lcom/metamoji/nt/NtIdentifiersModelVisitContext$Command;

    return-void
.end method


# virtual methods
.method public addTagEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;)V"
        }
    .end annotation

    .line 1060
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1062
    invoke-interface {v0, p1}, Lcom/metamoji/ctold/CtDocTagManager;->addTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_0
    return-void
.end method

.method public addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method addVoiceSubMenu(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/SortedSet<",
            "Lcom/metamoji/nt/NtUnitCommandInfo;",
            ">;)",
            "Ljava/util/SortedSet<",
            "Lcom/metamoji/nt/NtUnitCommandInfo;",
            ">;"
        }
    .end annotation

    .line 408
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 409
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 410
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtUnitController;->collectSelectedAuthorInfos(Ljava/util/List;)V

    .line 413
    invoke-virtual {p0, v1}, Lcom/metamoji/nt/NtUnitController;->canPerformPlayFromAuthorInfo(Ljava/util/List;)Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 414
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 415
    const-string v5, "authorInfos"

    invoke-virtual {v2, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    new-instance v1, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_AUTHOR_INFO:Lcom/metamoji/nt/NtCommand;

    .line 417
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/metamoji/noteanytime/R$string;->Voice_PlayFromCreateTime:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 418
    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->canPerformPlayFromVoiceTag()Z

    move-result v1

    const/4 v2, 0x0

    if-ne v1, v4, :cond_1

    .line 422
    new-instance v1, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v5, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_VOICE_TAG:Lcom/metamoji/nt/NtCommand;

    .line 423
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    sget v7, Lcom/metamoji/noteanytime/R$string;->Voice_PlayTag:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v5, v6, v2, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 424
    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->canPerformDetachVoiceTagSelectedObjects()Z

    move-result v1

    if-ne v1, v4, :cond_2

    .line 434
    new-instance v1, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    .line 435
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    sget v6, Lcom/metamoji/noteanytime/R$string;->Voice_DetachLink:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v4, v5, v2, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 436
    invoke-interface {v0, v1}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_2
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    if-nez p1, :cond_3

    .line 441
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    .line 443
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    :cond_4
    return-object p1
.end method

.method public applyPasteboardExtras(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1532
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 1533
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 1534
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createPasteboardExtrasApplyManager()Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;

    move-result-object v2

    .line 1535
    invoke-virtual {v2, p1, v0, v1}, Lcom/metamoji/nt/NtPasteboardExtrasApplyManager;->applyPasteboardExtras(Ljava/util/Map;Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPageController;)V

    return-void
.end method

.method public applyPenStyle(Lcom/metamoji/nt/share/NtPenStyle;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public applyShapeStyle(Lcom/metamoji/nt/share/NtPenStyle;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method protected callUpdateViewModeHighlightText()V
    .locals 2

    .line 1554
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1555
    invoke-virtual {v0}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1561
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/nt/NtUnitController;->_calledUpdateViewmodeHighlight:Z

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 1564
    iput-boolean v0, p0, Lcom/metamoji/nt/NtUnitController;->_calledUpdateViewmodeHighlight:Z

    .line 1565
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitController$6;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitController$6;-><init>(Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Viewport;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method public canFocus()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public canPerformDetachVoiceTagSelectedObjects()Z
    .locals 2

    .line 1362
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1368
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/VcUtil;->createTaggedObjectFilterForPlayVoiceTag(Lcom/metamoji/ctold/CtDocTagManager;)Lcom/metamoji/ctold/CtTaggedObjectFilter;

    move-result-object v0

    .line 1369
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtUnitController;->getSelectedTaggableObjectCount(Lcom/metamoji/ctold/CtTaggedObjectFilter;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public canPerformPlayFromAuthorInfo(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtAuthorInfo;",
            ">;)Z"
        }
    .end annotation

    .line 1300
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_AUTHOR_INFO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1303
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v1

    .line 1307
    :cond_1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 1308
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/nt/NtAuthorInfo;

    .line 1309
    invoke-virtual {v2}, Lcom/metamoji/nt/NtAuthorInfo;->getActionTime()Ljava/util/Date;

    move-result-object v2

    .line 1310
    invoke-virtual {v0, v2}, Ljava/util/Date;->compareTo(Ljava/util/Date;)I

    move-result v3

    if-lez v3, :cond_2

    move-object v0, v2

    goto :goto_0

    .line 1315
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-nez p1, :cond_4

    return v1

    .line 1319
    :cond_4
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    if-nez p1, :cond_5

    return v1

    .line 1323
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object p1

    if-nez p1, :cond_6

    return v1

    .line 1327
    :cond_6
    invoke-virtual {p1, v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->isExistTicketAt(Ljava/util/Date;)Z

    move-result p1

    return p1
.end method

.method public canPerformPlayFromVoiceTag()Z
    .locals 2

    .line 1278
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_VC_PLAY_FROM_VOICE_TAG:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1284
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/VcUtil;->createTaggedObjectFilterForPlayVoiceTag(Lcom/metamoji/ctold/CtDocTagManager;)Lcom/metamoji/ctold/CtTaggedObjectFilter;

    move-result-object v0

    .line 1285
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtUnitController;->getSelectedTaggableObjectCount(Lcom/metamoji/ctold/CtTaggedObjectFilter;)I

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public collectSelectedAuthorInfos(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtAuthorInfo;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public commandsForSelectedUnits()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitCommandInfo;",
            ">;"
        }
    .end annotation

    .line 342
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->isContainer()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object v0

    .line 350
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getSelectedCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    move v2, v3

    .line 351
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v1

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/nt/NtUnitController;

    .line 352
    sget-object v7, Lcom/metamoji/nt/NtUnitController;->_unitContainerExtenders:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/metamoji/nt/INtUnitContainerExtender;

    .line 353
    invoke-interface {v8, v6}, Lcom/metamoji/nt/INtUnitContainerExtender;->commandsForChildUnit(Lcom/metamoji/nt/NtUnitController;)Ljava/util/List;

    move-result-object v8

    if-eqz v8, :cond_6

    if-nez v2, :cond_4

    .line 357
    new-instance v9, Lcom/metamoji/nt/NtUnitController$2;

    invoke-direct {v9, p0}, Lcom/metamoji/nt/NtUnitController$2;-><init>(Lcom/metamoji/nt/NtUnitController;)V

    invoke-static {v8, v9}, Lcom/metamoji/cm/CmUtils;->removeAll(Ljava/util/Collection;Lcom/metamoji/cm/CmUtils$ICmPredicator;)V

    :cond_4
    if-nez v5, :cond_5

    .line 365
    new-instance v5, Ljava/util/TreeSet;

    invoke-direct {v5}, Ljava/util/TreeSet;-><init>()V

    .line 367
    invoke-interface {v5, v8}, Ljava/util/SortedSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 370
    :cond_5
    invoke-interface {v5, v8}, Ljava/util/SortedSet;->retainAll(Ljava/util/Collection;)Z

    .line 371
    invoke-interface {v5}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-nez v8, :cond_6

    move v4, v3

    :cond_6
    :goto_1
    if-nez v4, :cond_3

    :cond_7
    if-nez v4, :cond_2

    .line 387
    :cond_8
    invoke-virtual {p0, v5}, Lcom/metamoji/nt/NtUnitController;->addVoiceSubMenu(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 389
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v2

    if-nez v2, :cond_9

    goto :goto_2

    .line 392
    :cond_9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :cond_a
    :goto_2
    return-object v1
.end method

.method public deselect()V
    .locals 0

    return-void
.end method

.method public destroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 0

    .line 333
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfUnitController;->destroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    return-void
.end method

.method public doesNotConcernAboutHitTestPoint(Landroid/graphics/PointF;ZZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public extractPenStyles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/metamoji/nt/share/NtPenStyle;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public extractText()Ljava/lang/String;
    .locals 1

    .line 837
    const-string v0, ""

    return-object v0
.end method

.method public getAppFrame()Lcom/metamoji/nt/INtAppFrame;
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    return-object v0
.end method

.method public getAuthorInfoOfChild(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/nt/NtAuthorInfo;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 1

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;
    .locals 1

    .line 207
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 208
    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;
    .locals 1

    .line 1182
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDocument()Lcom/metamoji/df/controller/DfDocument;
    .locals 1

    .line 74
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    return-object v0
.end method

.method public getDocument()Lcom/metamoji/nt/NtDocument;
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/metamoji/df/controller/DfUnitController;->getDocument()Lcom/metamoji/df/controller/DfDocument;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocument;

    return-object v0
.end method

.method protected getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 191
    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMinSize()Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 783
    new-instance v0, Lcom/metamoji/cm/SizeF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v0
.end method

.method public getNoteController()Lcom/metamoji/nt/NtNoteController;
    .locals 1

    .line 166
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectBounds()Lcom/metamoji/cm/RectEx;
    .locals 5

    .line 1178
    new-instance v0, Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getX()F

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getY()F

    move-result v2

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v3

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    return-object v0
.end method

.method public getObjectFilterForTag()Lcom/metamoji/ctold/CtTaggedObjectFilter;
    .locals 1

    .line 1052
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/media/voice/VcUtil;->createTaggedObjectFilterForPlayVoiceTag(Lcom/metamoji/ctold/CtDocTagManager;)Lcom/metamoji/ctold/CtTaggedObjectFilter;

    move-result-object v0

    return-object v0
.end method

.method public getObjectId()Ljava/lang/String;
    .locals 1

    .line 1158
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getUnitId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getObjectListener()Lcom/metamoji/ctold/CtObjectListener;
    .locals 1

    .line 1265
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1266
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/INtController;

    invoke-interface {v0}, Lcom/metamoji/nt/INtController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectSprite()Lcom/metamoji/df/sprite/Sprite;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getObjectType()Lcom/metamoji/ctold/object/CtObjectType;
    .locals 1

    .line 1153
    sget-object v0, Lcom/metamoji/ctold/object/CtObjectType;->CT_OBJTYPE_UNIT:Lcom/metamoji/ctold/object/CtObjectType;

    return-object v0
.end method

.method public getOwnerUnit()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPageController()Lcom/metamoji/nt/NtPageController;
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->pageController()Lcom/metamoji/df/controller/DfPageController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtPageController;

    return-object v0
.end method

.method public getParentObject()Lcom/metamoji/ctold/CtTaggableObject;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScalingMinSize()Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 792
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getMinSize()Lcom/metamoji/cm/SizeF;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedCount()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTaggableObjectCount(Lcom/metamoji/ctold/CtTaggedObjectFilter;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getSelectedTaggableObjects(Lcom/metamoji/ctold/CtTaggedObjectFilter;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ctold/CtTaggedObjectFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public getSelectedUnitControllers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitController;",
            ">;"
        }
    .end annotation

    .line 1008
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getTaggableObject(Ljava/lang/String;)Lcom/metamoji/ctold/CtTaggableObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getUnitId()Ljava/lang/String;
    .locals 2

    .line 912
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    const-string/jumbo v1, "unitId"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleChangeShapeStyle(Lcom/metamoji/cm/CmContext;)V
    .locals 6

    .line 618
    const-string/jumbo v0, "selectInfo"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 623
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->shapeStyleFromSelection(Ljava/lang/Object;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 629
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 633
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 634
    const-string v2, "ShapeSettings"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 639
    :cond_3
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 640
    new-instance v4, Lcom/metamoji/ui/dialog/ShapeSettings;

    const/4 v5, 0x1

    invoke-direct {v4, v0, v5}, Lcom/metamoji/ui/dialog/ShapeSettings;-><init>(Lcom/metamoji/nt/share/NtPenStyle;Z)V

    .line 641
    invoke-virtual {v4, v3}, Lcom/metamoji/ui/dialog/ShapeSettings;->setArguments(Landroid/os/Bundle;)V

    .line 642
    new-instance v0, Lcom/metamoji/nt/NtUnitController$4;

    invoke-direct {v0, p0, v4, p1}, Lcom/metamoji/nt/NtUnitController$4;-><init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/ui/dialog/ShapeSettings;Ljava/lang/Object;)V

    invoke-virtual {v4, v0}, Lcom/metamoji/ui/dialog/ShapeSettings;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 651
    invoke-virtual {v4, v1, v2}, Lcom/metamoji/ui/dialog/ShapeSettings;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method handleChangeStrokeStyle(Lcom/metamoji/cm/CmContext;)V
    .locals 5

    .line 577
    const-string/jumbo v0, "selectInfo"

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 582
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->penStyleFromSelection(Ljava/lang/Object;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 588
    :cond_1
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_0

    .line 592
    :cond_2
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 593
    const-string v2, "PenSettings"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    if-eqz v3, :cond_3

    goto :goto_0

    .line 599
    :cond_3
    new-instance v3, Lcom/metamoji/ui/dialog/PenSettings2;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Lcom/metamoji/ui/dialog/PenSettings2;-><init>(Lcom/metamoji/nt/share/NtPenStyle;Z)V

    .line 600
    new-instance v0, Lcom/metamoji/nt/NtUnitController$3;

    invoke-direct {v0, p0, v3, p1}, Lcom/metamoji/nt/NtUnitController$3;-><init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/ui/dialog/PenSettings2;Ljava/lang/Object;)V

    invoke-virtual {v3, v0}, Lcom/metamoji/ui/dialog/PenSettings2;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 610
    invoke-virtual {v3, v1, v2}, Lcom/metamoji/ui/dialog/PenSettings2;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method handleDetachVoiceTagOfSelectedObjects(Lcom/metamoji/cm/CmContext;)V
    .locals 5

    .line 1411
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->createTaggedObjectFilterForPlayVoiceTag(Lcom/metamoji/ctold/CtDocTagManager;)Lcom/metamoji/ctold/CtTaggedObjectFilter;

    move-result-object p1

    .line 1412
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->getSelectedTaggableObjects(Lcom/metamoji/ctold/CtTaggedObjectFilter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1414
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 1419
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 1420
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v2

    .line 1421
    sget-object v3, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    const/4 v4, 0x0

    invoke-interface {v2, v3, p1, v1, v4}, Lcom/metamoji/ctold/CtDocTagManager;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p1

    .line 1424
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ctold/tag/CtTagInstance;

    const/4 v2, 0x0

    .line 1426
    invoke-static {v1, v0, v2}, Lcom/metamoji/media/voice/VcUtil;->detachVoiceTag(Lcom/metamoji/ctold/tag/CtTagInstance;Lcom/metamoji/nt/NtNoteController;Lcom/metamoji/df/controller/EditContext;)V

    goto :goto_0

    .line 1429
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    sget-object v0, Lcom/metamoji/nt/NtCommand;->CMD_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p1, v0, v4}, Lcom/metamoji/nt/NtCommandManager;->selectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    :cond_2
    :goto_1
    return-void
.end method

.method handlePlayFromVoiceTagWithContext(Lcom/metamoji/cm/CmContext;)V
    .locals 4

    .line 1389
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    .line 1390
    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->createTaggedObjectFilterForPlayVoiceTag(Lcom/metamoji/ctold/CtDocTagManager;)Lcom/metamoji/ctold/CtTaggedObjectFilter;

    move-result-object v0

    .line 1391
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtUnitController;->getSelectedTaggableObjects(Lcom/metamoji/ctold/CtTaggedObjectFilter;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1393
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1398
    :cond_0
    sget-object v1, Lcom/metamoji/ctold/tag/CtSystemTagId;->CT_TAGID_VOICE:Lcom/metamoji/ctold/tag/CtSystemTagId;

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v2, v3}, Lcom/metamoji/ctold/CtDocTagManager;->getSystemTagInstances(Lcom/metamoji/ctold/tag/CtSystemTagId;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object p1

    .line 1401
    invoke-static {p1}, Lcom/metamoji/media/voice/VcUtil;->playFromVoiceTagInstances(Ljava/util/List;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public handleStyleChanged()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hasFocus()Z
    .locals 1

    .line 696
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-ne v0, p0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public hasSelect()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ignoreFocusRestrictionsByOthers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ignoreRemoveRestrictionsByOthers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public ignoreSelectRestrictionsByOthers()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected init(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 1

    .line 241
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfUnitController;->init(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 243
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->directableLayer(Lcom/metamoji/nt/NtLayerController;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitController;->_isDirectable:Z

    return-void
.end method

.method protected initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V
    .locals 2

    .line 249
    invoke-super {p0, p1, p2}, Lcom/metamoji/df/controller/DfUnitController;->initAfter(Lcom/metamoji/df/controller/ControllerContext;I)V

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    .line 252
    new-instance p2, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {p2}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    iput-object p2, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    const/4 v0, 0x0

    .line 253
    invoke-virtual {p2, v0}, Lcom/metamoji/df/sprite/Sprite;->setClipping(Z)V

    .line 254
    iget-object p2, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    const-string v1, "CTAG"

    invoke-virtual {p2, v1}, Lcom/metamoji/df/sprite/Sprite;->setName(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 256
    iget-object p2, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v1

    invoke-virtual {p2, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 257
    iget-object p2, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getRotation()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p2, v1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 258
    iget-object p2, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1, p2}, Lcom/metamoji/df/sprite/Sprite;->addChild(Lcom/metamoji/df/sprite/Sprite;)V

    .line 259
    iput-boolean v0, p0, Lcom/metamoji/nt/NtUnitController;->_displayTag:Z

    .line 260
    new-instance p1, Lcom/metamoji/nt/NtUnitController$1;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtUnitController$1;-><init>(Lcom/metamoji/nt/NtUnitController;)V

    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController;->_tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    return-void
.end method

.method public isBusy()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isContainer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDirectable()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/metamoji/nt/NtUnitController;->_isDirectable:Z

    return v0
.end method

.method public isReadonly()Z
    .locals 1

    .line 704
    iget-boolean v0, p0, Lcom/metamoji/nt/NtUnitController;->_readOnly:Z

    return v0
.end method

.method public killFocus(Z)V
    .locals 0

    return-void
.end method

.method public layerController()Lcom/metamoji/nt/NtLayerController;
    .locals 1

    .line 277
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getCurrentUnitContainer()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtLayerController;

    return-object v0
.end method

.method public linkHitTest(Landroid/graphics/PointF;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z
    .locals 2

    .line 1448
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfUnitController;->listenBroadcast(Lcom/metamoji/df/controller/BroadcastContext;)Z

    move-result v0

    .line 1449
    instance-of v1, p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    if-eqz v1, :cond_2

    .line 1450
    check-cast p1, Lcom/metamoji/nt/NtToolModeChangedContext;

    .line 1451
    invoke-virtual {p1}, Lcom/metamoji/nt/NtToolModeChangedContext;->getEditMode()Lcom/metamoji/nt/NtDocument$EditMode;

    move-result-object p1

    .line 1452
    sget-object v1, Lcom/metamoji/nt/NtDocument$EditMode;->VIEWMODE:Lcom/metamoji/nt/NtDocument$EditMode;

    if-ne p1, v1, :cond_0

    const/4 p1, 0x1

    .line 1454
    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitController;->_displayTag:Z

    .line 1455
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1457
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController;->_tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {p1, v1}, Lcom/metamoji/ctold/CtDocTagManager;->addTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1461
    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitController;->_displayTag:Z

    .line 1462
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1464
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController;->_tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {p1, v1}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 1467
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/metamoji/nt/NtUnitController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    .line 1469
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->isVisibleSearchTextBar()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1470
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->callUpdateViewModeHighlightText()V

    return v0

    .line 1472
    :cond_2
    instance-of v1, p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    if-eqz v1, :cond_3

    .line 1473
    check-cast p1, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;

    .line 1474
    invoke-virtual {p1}, Lcom/metamoji/df/controller/MediaChangedBroadcastContext;->getMediaType()Lcom/metamoji/df/controller/ControllerContext$MediaType;

    move-result-object p1

    .line 1475
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    if-eq p1, v1, :cond_4

    .line 1476
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    .line 1477
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    return v0

    .line 1479
    :cond_3
    instance-of p1, p1, Lcom/metamoji/nt/NtSearchTextWordChangeEventContext;

    if-eqz p1, :cond_4

    .line 1481
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->callUpdateViewModeHighlightText()V

    :cond_4
    return v0
.end method

.method public localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;
    .locals 1

    .line 1506
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->localToGlobal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1509
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Stage;->spriteToStage(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1512
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    .line 1513
    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Viewport;->stageToViewport(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p1

    .line 1516
    invoke-static {p1, v0, p2}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    return-object p1
.end method

.method public makePasteboardExtras(Ljava/util/List;)Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1522
    new-instance v0, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;-><init>(Lcom/metamoji/nt/NtDocument;)V

    .line 1523
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtUnitController;->makePasteboardExtras(Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public makePasteboardExtras(Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;",
            "Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1527
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createPasteboardExtrasMakeManager()Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;

    move-result-object v0

    .line 1528
    invoke-virtual {v0, p1, p2}, Lcom/metamoji/nt/NtPasteboardExtrasMakeManager;->makePasteboardExtras(Ljava/util/List;Lcom/metamoji/nt/NtPasteboardExtrasMakeHandlerContext;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method

.method public noFocusing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noResizing()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noResizingX()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noResizingY()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public noRotating()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected notifyObjectAdded(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    .line 1234
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->notifyObjectsAdded(Ljava/util/List;)V

    return-void
.end method

.method protected notifyObjectContentChanged(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    return-void
.end method

.method protected notifyObjectGeometricChanged(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    .line 1247
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    return-void
.end method

.method protected notifyObjectRemoving(Lcom/metamoji/ctold/CtTaggableObject;)V
    .locals 0

    .line 1239
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->notifyObjectsRemoving(Ljava/util/List;)V

    return-void
.end method

.method protected notifyObjectsAdded(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected notifyObjectsContentChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method protected notifyObjectsGeometricChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    .line 1250
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsGeometricChanged(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected notifyObjectsRemoving(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtTaggableObject;",
            ">;)V"
        }
    .end annotation

    .line 1242
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1243
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getObjectListener()Lcom/metamoji/ctold/CtObjectListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/ctold/CtObjectListener;->notifyObjectsRemoving(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public pageActivated(Lcom/metamoji/df/controller/DfPageController;)V
    .locals 0

    .line 1440
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfUnitController;->pageActivated(Lcom/metamoji/df/controller/DfPageController;)V

    .line 1443
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->callUpdateViewModeHighlightText()V

    return-void
.end method

.method public penStyleFromSelection(Ljava/lang/Object;)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z
    .locals 4

    .line 498
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "performCommand( "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 501
    sget-object v0, Lcom/metamoji/nt/NtUnitController$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    const/4 v3, 0x4

    if-eq v0, v3, :cond_0

    move v2, v1

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtUnitController;->handleDetachVoiceTagOfSelectedObjects(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 509
    :cond_1
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtUnitController;->handlePlayFromVoiceTagWithContext(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 506
    :cond_2
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtUnitController;->handleChangeShapeStyle(Lcom/metamoji/cm/CmContext;)V

    goto :goto_0

    .line 503
    :cond_3
    invoke-virtual {p0, p2}, Lcom/metamoji/nt/NtUnitController;->handleChangeStrokeStyle(Lcom/metamoji/cm/CmContext;)V

    :goto_0
    if-nez v2, :cond_6

    .line 522
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->isContainer()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 525
    sget-object v0, Lcom/metamoji/nt/NtUnitController$9;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result v2

    aget v0, v0, v2

    .line 533
    sget-object v0, Lcom/metamoji/nt/NtUnitController;->_unitContainerExtenders:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 534
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/INtUnitContainerExtender;

    .line 535
    invoke-interface {v1, p1, p2, p0}, Lcom/metamoji/nt/INtUnitContainerExtender;->performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_5
    return v1

    :cond_6
    return v2
.end method

.method public preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V
    .locals 2

    .line 303
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    iget-object v1, p0, Lcom/metamoji/nt/NtUnitController;->_tagSpriteUpdateListener:Lcom/metamoji/cm/ICmEventHandler;

    invoke-interface {v0, v1}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    .line 313
    :cond_0
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfUnitController;->preDestroyController(Lcom/metamoji/df/controller/ControllerContext;)V

    .line 315
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 317
    invoke-virtual {p1}, Lcom/metamoji/df/controller/ControllerContext;->isClosed()Z

    move-result p1

    if-nez p1, :cond_1

    .line 320
    const-string p1, "preDestroyController"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getAppFrame()Lcom/metamoji/nt/INtAppFrame;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/nt/INtAppFrame;->requestKillFocus()V

    :cond_1
    return-void
.end method

.method public processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController;->cp_default:Lcom/metamoji/nt/ICommandProcessor;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/ICommandProcessor;->processEnableCommand(Lcom/metamoji/nt/NtCommand;Z)Z

    move-result p1

    return p1
.end method

.method public processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController;->cp_default:Lcom/metamoji/nt/ICommandProcessor;

    invoke-interface {v0, p1}, Lcom/metamoji/nt/ICommandProcessor;->processInhibitCommand(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    return p1
.end method

.method public processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController;->cp_default:Lcom/metamoji/nt/ICommandProcessor;

    invoke-interface {v0, p1, p2}, Lcom/metamoji/nt/ICommandProcessor;->processSelectCommand(Lcom/metamoji/nt/NtCommand;I)Z

    move-result p1

    return p1
.end method

.method public removeTagEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Ljava/util/List<",
            "Lcom/metamoji/ctold/CtEventTagChanged;",
            ">;>;)V"
        }
    .end annotation

    .line 1071
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getDocTagManager()Lcom/metamoji/ctold/CtDocTagManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-interface {v0, p1}, Lcom/metamoji/ctold/CtDocTagManager;->removeTagChangedEventHandler(Lcom/metamoji/cm/ICmEventHandler;)V

    :cond_0
    return-void
.end method

.method public removeUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/cm/CmContext;)V
    .locals 0

    return-void
.end method

.method public requestForEditMode()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public selectUnit(Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    return-void
.end method

.method public setFocus(Lcom/metamoji/nt/NtFocusOption;)V
    .locals 0

    return-void
.end method

.method public setGeometricProps(Lcom/metamoji/df/controller/GeometricProps;Lcom/metamoji/df/controller/EditContext;Lcom/metamoji/nt/NtUnitController$GeometricPropsOption;)V
    .locals 0

    return-void
.end method

.method public setReadOnly(Z)V
    .locals 0

    .line 708
    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitController;->_readOnly:Z

    return-void
.end method

.method protected setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V
    .locals 2

    .line 809
    invoke-super {p0, p1}, Lcom/metamoji/df/controller/DfUnitController;->setSpriteGeometry(Lcom/metamoji/df/controller/GeometricProps;)V

    .line 811
    iget-object p1, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    if-eqz p1, :cond_0

    .line 812
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getBaseSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object p1

    .line 813
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 814
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getHeight()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 815
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    invoke-virtual {p1}, Lcom/metamoji/df/sprite/Sprite;->getRotation()F

    move-result p1

    neg-float p1, p1

    invoke-virtual {v0, p1}, Lcom/metamoji/df/sprite/Sprite;->setRotation(F)V

    .line 816
    iget-object p1, p0, Lcom/metamoji/nt/NtUnitController;->_mediaType:Lcom/metamoji/df/controller/ControllerContext$MediaType;

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitController;->updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    :cond_0
    return-void
.end method

.method public shapeStyleFromSelection(Ljava/lang/Object;)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public tagHitTest(Landroid/graphics/PointF;)Lcom/metamoji/ctold/CtTaggableObject;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public unitHitTest(Landroid/graphics/PointF;)Lcom/metamoji/nt/NtUnitController;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public unitHitTest(Landroid/graphics/PointF;ZZZZ)Lcom/metamoji/nt/NtUnitController;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public updateTagSprite(Lcom/metamoji/df/controller/ControllerContext$MediaType;)V
    .locals 2

    .line 1190
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitController;->_tagSprite:Lcom/metamoji/df/sprite/Sprite;

    if-nez v0, :cond_0

    return-void

    .line 1193
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 1194
    new-instance v1, Lcom/metamoji/nt/NtUnitController$5;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtUnitController$5;-><init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/df/controller/ControllerContext$MediaType;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateViewModeHighlightText()V
    .locals 8

    .line 1587
    sget-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->None:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    .line 1590
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_0

    .line 1596
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_0

    .line 1601
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 1605
    :cond_2
    invoke-interface {v3}, Lcom/metamoji/nt/INtEditor;->getSearchTextBar()Lcom/metamoji/nt/NtSearchTextBar;

    move-result-object v3

    if-nez v3, :cond_3

    :goto_0
    move-object v1, v2

    goto/16 :goto_4

    .line 1610
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtFactoryMaps;->createTextSearchInUnitModelFactory()Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;

    move-result-object v4

    if-nez v4, :cond_4

    goto :goto_1

    .line 1616
    :cond_4
    invoke-virtual {v3}, Lcom/metamoji/nt/NtSearchTextBar;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_7

    :cond_5
    :goto_1
    move-object v1, v2

    :cond_6
    move-object v2, v4

    goto/16 :goto_4

    .line 1620
    :cond_7
    invoke-virtual {v3}, Lcom/metamoji/nt/NtSearchTextBar;->isCompareNoCase()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1621
    sget-object v0, Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;->NoCase:Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;

    .line 1625
    :cond_8
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v5

    .line 1626
    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->VIEW:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v6, v5, :cond_d

    sget-object v6, Lcom/metamoji/nt/NtNoteController$NoteMode;->LASER:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-eq v6, v5, :cond_d

    .line 1635
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->isEditLayerEditable()Z

    move-result v3

    xor-int/lit8 v5, v3, 0x1

    const/4 v6, 0x1

    if-eqz v3, :cond_9

    .line 1640
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->canFocus()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->noFocusing()Z

    move-result v3

    if-eqz v3, :cond_9

    move v5, v6

    :cond_9
    if-nez v5, :cond_a

    .line 1644
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->canFocus()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1646
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/nt/NtPageController;->getCurrentLayer()Lcom/metamoji/nt/NtLayerController;

    move-result-object v7

    if-eq v3, v7, :cond_a

    .line 1648
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->layerController()Lcom/metamoji/nt/NtLayerController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLayerController;->getVisible()Z

    move-result v3

    if-eqz v3, :cond_a

    move v5, v6

    :cond_a
    if-nez v5, :cond_c

    .line 1655
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;->getProvider(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 1658
    invoke-interface {v3}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->alwaysHightlightOnly()Z

    move-result v7

    if-eqz v7, :cond_b

    move v5, v6

    :cond_b
    if-nez v5, :cond_c

    .line 1663
    invoke-interface {v3, p0}, Lcom/metamoji/nt/INtTextSearchInUnitModelProvider;->highlightNotCanFocus(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v3

    if-eqz v3, :cond_c

    goto :goto_2

    :cond_c
    move v6, v5

    :goto_2
    if-eqz v6, :cond_5

    .line 1672
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getSearchCurrentModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 1674
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-ne v5, v3, :cond_5

    .line 1675
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getSearchCurrentPosition()Lcom/metamoji/nt/NtTextSearchPosition;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 1678
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/nt/NtUnitController$7;

    invoke-direct {v2, p0, v4, v1}, Lcom/metamoji/nt/NtUnitController$7;-><init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Lcom/metamoji/nt/NtTextSearchPosition;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void

    .line 1697
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/nt/NtTextSearchUtil;->belongCurrentEditState(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_e

    goto :goto_3

    .line 1701
    :cond_e
    invoke-static {p0}, Lcom/metamoji/nt/NtTextSearchUtil;->isNotSearchTargetForPersonalTemplate(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v1

    if-eqz v1, :cond_f

    :goto_3
    goto/16 :goto_1

    .line 1705
    :cond_f
    invoke-virtual {v3}, Lcom/metamoji/nt/NtSearchTextBar;->getSearchWord()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 1706
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-gtz v3, :cond_6

    goto/16 :goto_1

    :goto_4
    if-nez v2, :cond_10

    return-void

    .line 1721
    :cond_10
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v3

    new-instance v4, Lcom/metamoji/nt/NtUnitController$8;

    invoke-direct {v4, p0, v2, v1, v0}, Lcom/metamoji/nt/NtUnitController$8;-><init>(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtTextSearchInUnitModelFactory;Ljava/lang/String;Lcom/metamoji/un/text/SearchWordUtil$CompareOptionType;)V

    invoke-virtual {v3, v4}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method
