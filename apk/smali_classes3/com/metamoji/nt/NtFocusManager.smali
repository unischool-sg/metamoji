.class public Lcom/metamoji/nt/NtFocusManager;
.super Ljava/lang/Object;
.source "NtFocusManager.java"


# instance fields
.field private _focusUnit:Lcom/metamoji/nt/NtUnitController;

.field private _onFocusOrPageChangedEvent:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/nt/NtFocusManager;",
            ">;"
        }
    .end annotation
.end field

.field private _onWillFocusOrPageChangeEvent:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _sheet:Lcom/metamoji/nt/NtNoteController;


# direct methods
.method public constructor <init>(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/metamoji/nt/NtFocusManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    const/4 p1, 0x0

    .line 56
    iput-object p1, p0, Lcom/metamoji/nt/NtFocusManager;->_focusUnit:Lcom/metamoji/nt/NtUnitController;

    .line 57
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtFocusManager;->_onFocusOrPageChangedEvent:Lcom/metamoji/cm/CmEventListener;

    .line 58
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/nt/NtFocusManager;->_onWillFocusOrPageChangeEvent:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method

.method private _getFocusUnitFromEditvalue()Lcom/metamoji/nt/NtUnitController;
    .locals 3

    .line 368
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    const-string v1, "focus"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtNoteController;->getEditValueAsModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 370
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "model.type = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "!type"

    invoke-interface {v0, v2}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/metamoji/nt/NtFocusManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v2, v0}, Lcom/metamoji/nt/NtNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 371
    iget-object v1, p0, Lcom/metamoji/nt/NtFocusManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v1, v0}, Lcom/metamoji/nt/NtNoteController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private _getRootUnitController()Lcom/metamoji/nt/NtUnitController;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-nez v0, :cond_0

    .line 308
    const-string v1, "_getRootUnitController null"

    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_0
    return-object v0
.end method

.method private static _isDescendent(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/DfController;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    return v1

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/df/controller/DfController;->getChildren()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 182
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/controller/DfController;

    if-ne v2, p1, :cond_3

    return v1

    .line 186
    :cond_3
    invoke-static {v2, p1}, Lcom/metamoji/nt/NtFocusManager;->_isDescendent(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/DfController;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_4
    return v0
.end method

.method private _isRootUnit(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 322
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/nt/NtFocusManager;->_getRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v1

    if-ne v1, p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    return v0
.end method

.method private _killFocusDescendent(Lcom/metamoji/nt/NtUnitController;)V
    .locals 4

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 88
    invoke-static {v0, p1}, Lcom/metamoji/nt/NtFocusManager;->_isDescendent(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/DfController;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    .line 90
    invoke-direct {p0, v0, p1}, Lcom/metamoji/nt/NtFocusManager;->_killFocusFromUnit(Lcom/metamoji/nt/NtUnitController;Z)V

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 93
    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/NtFocusManager;->_killFocusFromUnit(Lcom/metamoji/nt/NtUnitController;Z)V

    .line 97
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    const-class v2, Lcom/metamoji/nt/NtUnitController;

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    :goto_0
    if-eqz v0, :cond_4

    .line 99
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    const-string v3, "!type"

    invoke-interface {v2, v3}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v3, "$layer"

    if-eq v2, v3, :cond_3

    if-nez v2, :cond_1

    goto :goto_1

    .line 106
    :cond_1
    invoke-static {v0, p1}, Lcom/metamoji/nt/NtFocusManager;->_isDescendent(Lcom/metamoji/df/controller/DfController;Lcom/metamoji/df/controller/DfController;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    .line 111
    :cond_2
    invoke-direct {p0, v0, v1}, Lcom/metamoji/nt/NtFocusManager;->_killFocusFromUnit(Lcom/metamoji/nt/NtUnitController;Z)V

    .line 112
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    const-class v2, Lcom/metamoji/nt/NtUnitController;

    invoke-static {v0, v2}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    goto :goto_0

    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 102
    const-string p1, "_killFocusDescendent: modeltype == null"

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_4
    :goto_2
    return-void
.end method

.method private _killFocusFromUnit(Lcom/metamoji/nt/NtUnitController;Z)V
    .locals 2

    .line 342
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "_killFocusFromUnit : flag = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_focusUnit:Lcom/metamoji/nt/NtUnitController;

    if-ne v0, p1, :cond_0

    .line 345
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtUnitController;->killFocus(Z)V

    :cond_0
    const/4 p1, 0x0

    .line 348
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtFocusManager;->_setFocusUnitToEditvalue(Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method

.method private _setFocusToUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_focusUnit:Lcom/metamoji/nt/NtUnitController;

    if-eqz v0, :cond_0

    .line 335
    const-string v0, "_setFocusToUnit: focus != null"

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 337
    :cond_0
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtFocusManager;->_setFocusUnitToEditvalue(Lcom/metamoji/nt/NtUnitController;)V

    .line 338
    invoke-virtual {p1, p2}, Lcom/metamoji/nt/NtUnitController;->setFocus(Lcom/metamoji/nt/NtFocusOption;)V

    return-void
.end method

.method private _setFocusUnitToEditvalue(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 356
    iput-object p1, p0, Lcom/metamoji/nt/NtFocusManager;->_focusUnit:Lcom/metamoji/nt/NtUnitController;

    .line 357
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 358
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    const-string v1, "focus"

    invoke-virtual {v0, v1, p1}, Lcom/metamoji/nt/NtNoteController;->setEditValueWithModel(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_1
    return-void
.end method

.method private callFocusOrPageChangedCallback()V
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_onFocusOrPageChangedEvent:Lcom/metamoji/cm/CmEventListener;

    if-eqz v0, :cond_0

    .line 274
    invoke-virtual {v0, p0}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private callWillFocusOrPageChangeCallback(Lcom/metamoji/nt/NtUnitController;)V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_onWillFocusOrPageChangeEvent:Lcom/metamoji/cm/CmEventListener;

    if-eqz v0, :cond_0

    .line 284
    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public changeFocus(Lcom/metamoji/nt/NtNoteController;)V
    .locals 0

    .line 258
    invoke-direct {p0}, Lcom/metamoji/nt/NtFocusManager;->callFocusOrPageChangedCallback()V

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    .line 72
    iput-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_focusUnit:Lcom/metamoji/nt/NtUnitController;

    .line 73
    iput-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_onFocusOrPageChangedEvent:Lcom/metamoji/cm/CmEventListener;

    .line 74
    iput-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_onWillFocusOrPageChangeEvent:Lcom/metamoji/cm/CmEventListener;

    return-void
.end method

.method public getCurrentPage()Lcom/metamoji/nt/NtPageController;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_sheet:Lcom/metamoji/nt/NtNoteController;

    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v0

    return-object v0
.end method

.method public getFocusUnit()Lcom/metamoji/nt/NtUnitController;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_focusUnit:Lcom/metamoji/nt/NtUnitController;

    return-object v0
.end method

.method public getSelectedCount()I
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 440
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getSelectedCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSelectedTaggableObjectCount(Lcom/metamoji/ctold/CtTaggedObjectFilter;)I
    .locals 2

    .line 470
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 472
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 473
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUnitController;->getSelectedTaggableObjectCount(Lcom/metamoji/ctold/CtTaggedObjectFilter;)I

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSelectedTaggableObjects(Lcom/metamoji/ctold/CtTaggedObjectFilter;)Ljava/util/List;
    .locals 2
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

    .line 452
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 454
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtUnitController;->getSelectedTaggableObjects(Lcom/metamoji/ctold/CtTaggedObjectFilter;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 459
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_1
    return-object p1
.end method

.method public getSelectedUnitControllers()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitController;",
            ">;"
        }
    .end annotation

    .line 422
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->isContainer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 425
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTargetUnitType()Ljava/lang/String;
    .locals 2

    .line 405
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 407
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 409
    const-string v1, "!type"

    invoke-interface {v0, v1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 411
    :cond_0
    const-string v0, "focusUnit does not have any model object."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_1
    return-object v1
.end method

.method public init()V
    .locals 0

    return-void
.end method

.method public initFocus()V
    .locals 2

    .line 381
    invoke-direct {p0}, Lcom/metamoji/nt/NtFocusManager;->_getFocusUnitFromEditvalue()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 382
    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtFocusManager;->_isRootUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 387
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z

    return-void

    .line 384
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->setFocusToRootUnit()Z

    return-void
.end method

.method public initFocusViewmode()V
    .locals 0

    .line 395
    invoke-direct {p0}, Lcom/metamoji/nt/NtFocusManager;->callFocusOrPageChangedCallback()V

    return-void
.end method

.method public isFocusUnitRoot()Z
    .locals 1

    .line 330
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/metamoji/nt/NtFocusManager;->_isRootUnit(Lcom/metamoji/nt/NtUnitController;)Z

    move-result v0

    return v0
.end method

.method public requestKillFocus()Z
    .locals 2

    .line 202
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    .line 203
    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    new-instance v1, Lcom/metamoji/nt/NtFocusManager$2;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtFocusManager$2;-><init>(Lcom/metamoji/nt/NtFocusManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 213
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusManager;->getFocusUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 215
    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitController;->getParent()Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    const-class v1, Lcom/metamoji/nt/NtUnitController;

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmUtils;->as(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtUnitController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    const/4 v0, 0x1

    return v0

    .line 221
    :cond_1
    invoke-virtual {p0, v1, v1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public requestSetFocus(Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    const/4 v0, 0x0

    .line 125
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    move-result p1

    return p1
.end method

.method public requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z
    .locals 3

    const-string v0, "requestSetFocus :"

    .line 136
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->isUIThread()Z

    move-result v2

    if-nez v2, :cond_0

    .line 139
    new-instance v0, Lcom/metamoji/nt/NtFocusManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/nt/NtFocusManager$1;-><init>(Lcom/metamoji/nt/NtFocusManager;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 v1, 0x0

    .line 148
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->info(Ljava/lang/String;)V

    .line 149
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtFocusManager;->callWillFocusOrPageChangeCallback(Lcom/metamoji/nt/NtUnitController;)V

    if-nez p1, :cond_1

    const/4 p1, 0x0

    .line 152
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtFocusManager;->_killFocusDescendent(Lcom/metamoji/nt/NtUnitController;)V

    goto :goto_0

    .line 155
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 157
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->canFocus()Z

    move-result v0

    if-nez v0, :cond_3

    return v1

    .line 159
    :cond_3
    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtFocusManager;->_killFocusDescendent(Lcom/metamoji/nt/NtUnitController;)V

    .line 160
    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtFocusManager;->_setFocusToUnit(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)V

    .line 162
    :goto_0
    invoke-direct {p0}, Lcom/metamoji/nt/NtFocusManager;->callFocusOrPageChangedCallback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 164
    const-string p2, "NtFocusManager.requestSetFocus"

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    :goto_1
    return v1
.end method

.method public setFocusOrPageChangedCallback(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "Lcom/metamoji/nt/NtFocusManager;",
            ">;)V"
        }
    .end annotation

    .line 232
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_onFocusOrPageChangedEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method

.method public setFocusToRootUnit()Z
    .locals 2

    .line 292
    invoke-direct {p0}, Lcom/metamoji/nt/NtFocusManager;->_getRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 295
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/nt/NtFocusManager;->requestSetFocus(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtFocusOption;)Z

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setWillFocusOrPageChangeCallback(Lcom/metamoji/cm/ICmEventHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/ICmEventHandler<",
            "[",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 240
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusManager;->_onWillFocusOrPageChangeEvent:Lcom/metamoji/cm/CmEventListener;

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmEventListener;->add(Lcom/metamoji/cm/ICmEventHandler;)V

    return-void
.end method
