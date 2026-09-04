.class public Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;
.super Ljava/lang/Object;
.source "UnFlipUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/nt/INtUnitContainerExtender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addFlipUnit(Lcom/metamoji/cm/CmContext;I)V
    .locals 9

    .line 196
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 200
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 201
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    .line 202
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 205
    invoke-static {v2, p1}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->createFlipUnitModel(Lcom/metamoji/nt/NtDocument;I)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 208
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v5

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 209
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v5

    .line 210
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 211
    new-instance v6, Landroid/graphics/PointF;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v7

    int-to-float v7, v7

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v7, v8

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v8

    invoke-direct {v6, v7, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 212
    iget v0, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v5

    iget v7, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v7

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 213
    iget v0, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v5

    iget v4, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v4

    iput v0, v6, Landroid/graphics/PointF;->y:F

    .line 214
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 215
    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 217
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 220
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 221
    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 223
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 224
    iput v4, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    if-nez p0, :cond_2

    .line 228
    new-instance p0, Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 232
    :cond_2
    const-string v1, "location"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 234
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "toFocus"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 236
    const-string/jumbo v0, "toSelect"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 238
    invoke-virtual {v3, p1, p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    .line 240
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method static createFlipUnitModel(Lcom/metamoji/nt/NtDocument;I)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 244
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    .line 246
    invoke-static {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->createFlipUnitModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 249
    const-string/jumbo v0, "width"

    const/16 v1, 0x64

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 250
    const-string v0, "height"

    const/16 v1, 0x23

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 252
    invoke-static {p1}, Lcom/metamoji/un/flip/UnFlipUnitUtil;->stringFromColor(I)Ljava/lang/String;

    move-result-object p1

    .line 253
    const-string v0, "backgroundColor"

    invoke-interface {p0, v0, p1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    const-string p1, "flipState"

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method private getFlipUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/flip/UnFlipUnit;
    .locals 3

    .line 157
    instance-of v0, p1, Lcom/metamoji/un/flip/UnFlipUnit;

    if-eqz v0, :cond_0

    .line 158
    check-cast p1, Lcom/metamoji/un/flip/UnFlipUnit;

    return-object p1

    .line 160
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 161
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    .line 165
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    .line 166
    instance-of v0, p1, Lcom/metamoji/un/flip/UnFlipUnit;

    if-eqz v0, :cond_2

    .line 167
    check-cast p1, Lcom/metamoji/un/flip/UnFlipUnit;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public static handleAddFlipUnit(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 175
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleFlipUnitFlipBack(Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    .line 139
    invoke-direct {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->toggleFlipState(Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method

.method private handleFlipUnitFlipOver(Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    .line 135
    invoke-direct {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->toggleFlipState(Lcom/metamoji/nt/NtUnitController;)V

    return-void
.end method

.method private handleFlipUnitSetBackgroundColor(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 101
    invoke-direct {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->getFlipUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/flip/UnFlipUnit;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 107
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/flip/UnFlipUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$handleAddFlipUnit$3(Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->getResultColor()I

    move-result p0

    .line 189
    invoke-static {p1, p0}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->addFlipUnit(Lcom/metamoji/cm/CmContext;I)V

    return-void
.end method

.method static synthetic lambda$handleAddFlipUnit$4(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 176
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 177
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    .line 181
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 183
    new-instance v0, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda1;

    invoke-direct {v0, v1, p0}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 191
    const-string p0, "UnFlipCreateUnitDialog"

    invoke-virtual {v1, p0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleFlipUnitSetBackgroundColor$0(Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;Lcom/metamoji/un/flip/UnFlipUnit;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->getResultColor()I

    move-result p0

    const/4 p2, 0x0

    .line 123
    invoke-virtual {p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object p2

    .line 125
    :try_start_0
    invoke-static {p0}, Lcom/metamoji/un/flip/UnFlipUnitUtil;->stringFromColor(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->setBackgroundColor(Ljava/lang/String;Lcom/metamoji/df/controller/EditContext;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 127
    invoke-virtual {p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, p2}, Lcom/metamoji/un/flip/UnFlipUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 128
    throw p0
.end method

.method static synthetic lambda$handleFlipUnitSetBackgroundColor$1(Lcom/metamoji/un/flip/UnFlipUnit;)V
    .locals 2

    .line 108
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 111
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->closeDetailWindow()V

    .line 113
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getCurrentActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;

    invoke-direct {v1, v0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;-><init>(Landroidx/fragment/app/FragmentActivity;)V

    .line 115
    sget v0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_SET_BACKGROUND_COLOR:I

    invoke-virtual {v1, v0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->setDlgTitleResourceId(I)V

    .line 117
    new-instance v0, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda3;

    invoke-direct {v0, v1, p0}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;Lcom/metamoji/un/flip/UnFlipUnit;)V

    invoke-virtual {v1, v0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 130
    const-string p0, "UnFlipCreateUnitDialog"

    invoke-virtual {v1, p0}, Lcom/metamoji/un/flip/ui/UnFlipCreateUnitDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$toggleFlipState$2(Lcom/metamoji/un/flip/UnFlipUnit;)V
    .locals 0

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->toggleFlipState()V

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/un/flip/UnFlipUnit;->updateSprite()V

    return-void
.end method

.method private toggleFlipState(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 143
    invoke-direct {p0, p1}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->getFlipUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/flip/UnFlipUnit;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 149
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/flip/UnFlipUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public commandsForChildUnit(Lcom/metamoji/nt/NtUnitController;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtUnitController;",
            ")",
            "Ljava/util/List<",
            "Lcom/metamoji/nt/NtUnitCommandInfo;",
            ">;"
        }
    .end annotation

    .line 41
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$flipunit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 42
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/flip/UnFlipUnit;

    .line 44
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-virtual {v0}, Lcom/metamoji/un/flip/UnFlipUnit;->getFlipState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 46
    new-instance v0, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_BACK:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_FLIP_BACK:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 48
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitCommandInfo;->getCommand()Lcom/metamoji/nt/NtCommand;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 52
    :cond_0
    new-instance v0, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_FLIP_OVER:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_FLIP_OVER:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 54
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitCommandInfo;->getCommand()Lcom/metamoji/nt/NtCommand;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 55
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_1
    :goto_0
    new-instance v0, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_FLIP_UNIT_SET_BACKGROUND_COLOR:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SCHOOL_FLIP_UNIT_SET_BACKGROUND_COLOR:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5, v1, v3}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 63
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitCommandInfo;->getCommand()Lcom/metamoji/nt/NtCommand;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 64
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    .line 81
    sget-object p2, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 89
    :cond_0
    invoke-direct {p0, p3}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->handleFlipUnitFlipBack(Lcom/metamoji/nt/NtUnitController;)V

    return p2

    .line 86
    :cond_1
    invoke-direct {p0, p3}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->handleFlipUnitFlipOver(Lcom/metamoji/nt/NtUnitController;)V

    return p2

    .line 83
    :cond_2
    invoke-direct {p0, p3}, Lcom/metamoji/un/flip/UnFlipUnitContainerExtender;->handleFlipUnitSetBackgroundColor(Lcom/metamoji/nt/NtUnitController;)V

    return p2
.end method
