.class public Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;
.super Ljava/lang/Object;
.source "UnSurveyUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/nt/INtUnitContainerExtender;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSurveyUnit(Lcom/metamoji/cm/CmContext;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/cm/CmContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 154
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 155
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    .line 156
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v1

    .line 157
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    .line 159
    invoke-static {v2, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->createSurveyUnitModel(Lcom/metamoji/nt/NtDocument;Ljava/util/Map;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    .line 162
    new-instance v4, Landroid/graphics/PointF;

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v5

    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/graphics/PointF;-><init>(FF)V

    .line 163
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v5

    .line 164
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 165
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

    .line 166
    iget v0, v4, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v5

    iget v7, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v7

    iput v0, v6, Landroid/graphics/PointF;->x:F

    .line 167
    iget v0, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v5

    iget v4, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v4

    iput v0, v6, Landroid/graphics/PointF;->y:F

    .line 168
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v6}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 171
    invoke-virtual {v1}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 174
    iget v1, v0, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x41a00000    # 20.0f

    cmpg-float v1, v1, v4

    if-gez v1, :cond_0

    .line 175
    iput v4, v0, Landroid/graphics/PointF;->x:F

    .line 177
    :cond_0
    iget v1, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 178
    iput v4, v0, Landroid/graphics/PointF;->y:F

    :cond_1
    if-nez p0, :cond_2

    .line 182
    new-instance p0, Lcom/metamoji/cm/CmContext;

    invoke-direct {p0}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 186
    :cond_2
    const-string v1, "location"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 188
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string/jumbo v1, "toFocus"

    invoke-virtual {p0, v1, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 190
    const-string/jumbo v0, "toSelect"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {p0, v0, v4}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    invoke-virtual {v3, p1, p0}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    .line 194
    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    return-void
.end method

.method static createSurveyUnitModel(Lcom/metamoji/nt/NtDocument;Ljava/util/Map;)Lcom/metamoji/df/model/IModel;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/nt/NtDocument;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/df/model/IModel;"
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    .line 201
    invoke-static {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->createSurveyUnitModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 204
    const-string/jumbo v0, "width"

    const/16 v1, 0x64

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 205
    const-string v0, "height"

    invoke-interface {p0, v0, v1}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 207
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 208
    const-string/jumbo v1, "settings"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "result"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 210
    const-string/jumbo p1, "value"

    invoke-interface {p0, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-object p0
.end method

.method public static handleAddSurveyUnit(Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 136
    new-instance v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    invoke-direct {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;-><init>()V

    .line 137
    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda5;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda5;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 146
    const-string p0, "UnSurveyUnitSettingsDialog"

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method private handleSurveyUnitAllowAnswer(Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    .line 398
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->getSurveyUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p1

    .line 400
    invoke-static {p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitAllowAnswer(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void
.end method

.method public static handleSurveyUnitAllowAnswer(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 408
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda9;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSurveyUnitAnswer(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 3

    .line 293
    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->getSurveyUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p2

    .line 294
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 295
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_ROLL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 296
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 298
    invoke-static {p1, p2, v0, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitAnswer(Lcom/metamoji/cm/CmContext;Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    return-void
.end method

.method public static handleSurveyUnitAnswer(Lcom/metamoji/cm/CmContext;Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    .line 306
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda0;

    move-object v6, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda0;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSurveyUnitClearResult(Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    .line 374
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->getSurveyUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p1

    .line 376
    invoke-static {p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitClearResult(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void
.end method

.method public static handleSurveyUnitClearResult(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 384
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda4;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSurveyUnitEditSettings(Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    .line 221
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->getSurveyUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p1

    .line 223
    invoke-static {p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitEditSettings(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void
.end method

.method public static handleSurveyUnitEditSettings(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 231
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda6;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSurveyUnitPublishResult(Lcom/metamoji/nt/NtUnitController;)V
    .locals 0

    .line 432
    invoke-virtual {p0, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->getSurveyUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p1

    .line 434
    invoke-static {p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitPublishResult(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    return-void
.end method

.method public static handleSurveyUnitPublishResult(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 442
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda3;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSurveyUnitResetAnswer(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 3

    .line 347
    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->getSurveyUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p2

    .line 348
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_ROLL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 350
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 352
    invoke-static {p2, v0, v1, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitResetAnswer(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    return-void
.end method

.method public static handleSurveyUnitResetAnswer(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 360
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda1;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private handleSurveyUnitViewResult(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 3

    .line 260
    invoke-virtual {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->getSurveyUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/survey/UnSurveyUnit;

    move-result-object p2

    .line 261
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_ID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 262
    invoke-static {}, Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;->values()[Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    move-result-object v1

    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_ROLL:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aget-object v1, v1, v2

    .line 263
    sget-object v2, Lcom/metamoji/un/survey/UnSurveyUnit;->MMJUN_EXTINFO_USER_NAME:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 265
    invoke-static {p2, v0, v1, p1}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitViewResult(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    return-void
.end method

.method public static handleSurveyUnitViewResult(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 278
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda7;-><init>(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static synthetic lambda$handleAddSurveyUnit$0(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 142
    :cond_0
    iget-object p0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    .line 143
    invoke-static {p1, p0}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->addSurveyUnit(Lcom/metamoji/cm/CmContext;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$handleSurveyUnitAllowAnswer$8(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 5

    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v0

    .line 411
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedAnswer()Z

    move-result v1

    .line 412
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 413
    const-string v3, "allowAnswer"

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 415
    invoke-virtual {p0, v2, v4, v0, v4}, Lcom/metamoji/un/survey/UnSurveyUnit;->setSettings(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z

    .line 417
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 418
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 419
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v1

    .line 420
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->settingsChanged(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 424
    throw v1
.end method

.method static synthetic lambda$handleSurveyUnitAnswer$4(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;Lcom/metamoji/un/survey/UnSurveyUnit;Lcom/metamoji/cm/CmContext;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 9

    if-nez p5, :cond_0

    return-void

    .line 323
    :cond_0
    iget-object v3, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->UserId:Ljava/lang/String;

    .line 324
    iget-object v2, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Answer:Ljava/util/List;

    .line 325
    iget-object v4, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Roll:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    .line 326
    iget-object v5, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->UserName:Ljava/lang/String;

    const/4 p0, 0x0

    .line 328
    invoke-virtual {p1, p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v7

    const/4 v6, 0x1

    const/4 v8, 0x1

    move-object v1, p1

    .line 330
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/un/survey/UnSurveyUnit;->setAnswer(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;ZLcom/metamoji/df/controller/EditContext;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 332
    invoke-virtual {v1, v7}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 336
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_VIEW_RESULT:Lcom/metamoji/nt/NtCommand;

    invoke-static {p0, p2}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->executeCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 332
    invoke-virtual {v1, v7}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 333
    throw p0
.end method

.method static synthetic lambda$handleSurveyUnitAnswer$5(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;Lcom/metamoji/cm/CmContext;)V
    .locals 2

    .line 307
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isAllowedAnswer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 308
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_DENY_ANSWER:I

    invoke-static {p0}, Lcom/metamoji/ns/NsCollaboUtils;->showAlertMessage(I)V

    return-void

    .line 312
    :cond_0
    new-instance v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;

    invoke-direct {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;-><init>()V

    .line 313
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->UnitId:Ljava/lang/String;

    .line 314
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Settings:Ljava/util/Map;

    .line 315
    iput-object p1, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->UserId:Ljava/lang/String;

    .line 316
    iput-object p2, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->Roll:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    .line 317
    iput-object p3, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->UserName:Ljava/lang/String;

    .line 318
    new-instance p1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;

    invoke-direct {p1, v0, p0, p4}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda8;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;Lcom/metamoji/un/survey/UnSurveyUnit;Lcom/metamoji/cm/CmContext;)V

    invoke-virtual {v0, p1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 339
    const-string p0, "UnSurveyUnitAnswerDialog"

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitAnswerDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleSurveyUnitClearResult$7(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 3

    const/4 v0, 0x0

    .line 385
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v1

    const/4 v2, 0x1

    .line 387
    :try_start_0
    invoke-virtual {p0, v0, v2, v1, v2}, Lcom/metamoji/un/survey/UnSurveyUnit;->setResult(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {p0, v1}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 390
    throw v0
.end method

.method static synthetic lambda$handleSurveyUnitEditSettings$1(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Landroid/os/Bundle;Z)V
    .locals 0

    if-nez p4, :cond_0

    return-void

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    const/4 p2, 0x0

    .line 242
    invoke-virtual {p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object p2

    const/4 p3, 0x1

    .line 244
    :try_start_0
    invoke-virtual {p1, p0, p3, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnit;->setSettings(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 246
    invoke-virtual {p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {p1, p2}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 247
    throw p0
.end method

.method static synthetic lambda$handleSurveyUnitEditSettings$2(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 2

    .line 232
    new-instance v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;

    invoke-direct {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;-><init>()V

    .line 233
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->UnitId:Ljava/lang/String;

    .line 234
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->Settings:Ljava/util/Map;

    .line 235
    new-instance v1, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda2;

    invoke-direct {v1, v0, p0}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$$ExternalSyntheticLambda2;-><init>(Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;Lcom/metamoji/un/survey/UnSurveyUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 250
    const-string p0, "UnSurveyUnitSettingsDialog"

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitSettingsDialog;->safeShow(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleSurveyUnitPublishResult$9(Lcom/metamoji/un/survey/UnSurveyUnit;)V
    .locals 5

    const/4 v0, 0x0

    .line 443
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v0

    .line 445
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->isPublishResult()Z

    move-result v1

    .line 446
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    .line 447
    const-string v3, "publish"

    const/4 v4, 0x1

    xor-int/2addr v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    invoke-virtual {p0, v2, v4, v0, v4}, Lcom/metamoji/un/survey/UnSurveyUnit;->setSettings(Ljava/util/Map;ZLcom/metamoji/df/controller/EditContext;Z)Z

    .line 451
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v1

    .line 452
    invoke-virtual {v1}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result v1

    if-nez v1, :cond_0

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getNoteController()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getSurveyUnitManager()Lcom/metamoji/un/survey/UnSurveyUnitManager;

    move-result-object v1

    .line 454
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/un/survey/UnSurveyUnitManager;->settingsChanged(Ljava/util/Map;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 457
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 458
    throw v1
.end method

.method static synthetic lambda$handleSurveyUnitResetAnswer$6(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 361
    invoke-virtual {p0, v0}, Lcom/metamoji/un/survey/UnSurveyUnit;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v7

    const/4 v6, 0x1

    const/4 v8, 0x1

    const/4 v2, 0x0

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 363
    :try_start_0
    invoke-virtual/range {v1 .. v8}, Lcom/metamoji/un/survey/UnSurveyUnit;->setAnswer(Ljava/util/List;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;ZLcom/metamoji/df/controller/EditContext;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 365
    invoke-virtual {v1, v7}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-virtual {v1, v7}, Lcom/metamoji/un/survey/UnSurveyUnit;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 366
    throw p0
.end method

.method static synthetic lambda$handleSurveyUnitViewResult$3(Lcom/metamoji/un/survey/UnSurveyUnit;Ljava/lang/String;Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;Ljava/lang/String;)V
    .locals 2

    .line 279
    new-instance v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;

    invoke-direct {v0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;-><init>()V

    .line 280
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getUnitId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UnitId:Ljava/lang/String;

    .line 281
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getSettings()Ljava/util/Map;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Settings:Ljava/util/Map;

    .line 282
    invoke-virtual {p0}, Lcom/metamoji/un/survey/UnSurveyUnit;->getResult()Ljava/util/Map;

    move-result-object p0

    invoke-static {p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->duplicateDic(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    iput-object p0, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Result:Ljava/util/Map;

    .line 283
    iput-object p1, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UserId:Ljava/lang/String;

    .line 284
    iput-object p2, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->Roll:Lcom/metamoji/un/survey/UnSurveyUnit$UnSurveyRollType;

    .line 285
    iput-object p3, v0, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->UserName:Ljava/lang/String;

    .line 286
    const-string p0, "UnSurveyUnitResultDialog"

    invoke-virtual {v0, p0}, Lcom/metamoji/un/survey/ui/UnSurveyUnitResultDialog;->safeShow(Ljava/lang/String;)V

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

    .line 47
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$surveyunit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 52
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 55
    new-instance v2, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SURVEY_UNIT_EDIT_SETTINGS:Lcom/metamoji/nt/NtCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_SURVEY_UNIT_SETTINGS:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v1, v5}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 56
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    invoke-virtual {v2}, Lcom/metamoji/nt/NtUnitCommandInfo;->getCommand()Lcom/metamoji/nt/NtCommand;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object v0

    :cond_1
    return-object v1
.end method

.method getSurveyUnit(Lcom/metamoji/nt/NtUnitController;)Lcom/metamoji/un/survey/UnSurveyUnit;
    .locals 3

    .line 113
    instance-of v0, p1, Lcom/metamoji/un/survey/UnSurveyUnit;

    if-eqz v0, :cond_0

    .line 114
    check-cast p1, Lcom/metamoji/un/survey/UnSurveyUnit;

    return-object p1

    .line 116
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 117
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    .line 121
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    .line 122
    instance-of v0, p1, Lcom/metamoji/un/survey/UnSurveyUnit;

    if-eqz v0, :cond_2

    .line 123
    check-cast p1, Lcom/metamoji/un/survey/UnSurveyUnit;

    return-object p1

    :cond_2
    return-object v2
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z
    .locals 1

    .line 74
    sget-object v0, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender$1;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 94
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitPublishResult(Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 91
    :pswitch_1
    invoke-direct {p0, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitAllowAnswer(Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 88
    :pswitch_2
    invoke-direct {p0, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitClearResult(Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 85
    :pswitch_3
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitResetAnswer(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 82
    :pswitch_4
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitAnswer(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 79
    :pswitch_5
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitViewResult(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 76
    :pswitch_6
    invoke-direct {p0, p3}, Lcom/metamoji/un/survey/UnSurveyUnitContainerExtender;->handleSurveyUnitEditSettings(Lcom/metamoji/nt/NtUnitController;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
