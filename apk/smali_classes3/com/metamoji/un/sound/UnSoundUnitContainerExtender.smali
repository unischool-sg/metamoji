.class public Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;
.super Ljava/lang/Object;
.source "UnSoundUnitContainerExtender.java"

# interfaces
.implements Lcom/metamoji/nt/INtUnitContainerExtender;


# static fields
.field static indexX_:I

.field static indexY_:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static addSoundUnit(Ljava/lang/String;Lcom/metamoji/cm/CmContext;)V
    .locals 11

    .line 394
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 396
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->changeToSelectModeIfNoteSelectMode()V

    .line 398
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    .line 399
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v2

    .line 400
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentPage()Lcom/metamoji/nt/NtPageController;

    move-result-object v3

    .line 401
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getCurrentRootUnitController()Lcom/metamoji/nt/NtUnitController;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/unit/DrUnUnitController;

    const/4 v5, 0x0

    if-eqz p0, :cond_0

    .line 405
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtNoteController;->beginEdit(Ljava/lang/Object;)Lcom/metamoji/df/controller/EditContext;

    move-result-object v5

    .line 408
    :cond_0
    :try_start_0
    invoke-static {v2, v3}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->createSoundUnitModel(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 411
    new-instance v7, Landroid/graphics/PointF;

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetX()F

    move-result v8

    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getViewportOffsetY()F

    move-result v9

    invoke-direct {v7, v8, v9}, Landroid/graphics/PointF;-><init>(FF)V

    .line 412
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getZoom()F

    move-result v8

    .line 413
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    .line 414
    new-instance v9, Landroid/graphics/PointF;

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/df/sprite/Viewport;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getViewport()Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-direct {v9, v10, v0}, Landroid/graphics/PointF;-><init>(FF)V

    .line 415
    iget v0, v7, Landroid/graphics/PointF;->x:F

    mul-float/2addr v0, v8

    iget v10, v9, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v10

    iput v0, v9, Landroid/graphics/PointF;->x:F

    .line 416
    iget v0, v7, Landroid/graphics/PointF;->y:F

    mul-float/2addr v0, v8

    iget v7, v9, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v7

    iput v0, v9, Landroid/graphics/PointF;->y:F

    .line 417
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getStage()Lcom/metamoji/df/sprite/Stage;

    move-result-object v0

    .line 418
    invoke-virtual {v0, v9}, Lcom/metamoji/df/sprite/Stage;->stageToSprite(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 420
    invoke-virtual {v3}, Lcom/metamoji/nt/NtPageController;->getPaperSprite()Lcom/metamoji/df/sprite/Sprite;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/metamoji/df/sprite/Sprite;->globalToLocal(Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 422
    iget v7, v0, Landroid/graphics/PointF;->x:F

    sget v8, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexX_:I

    mul-int/lit8 v8, v8, 0x14

    add-int/lit8 v8, v8, -0xa

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v0, Landroid/graphics/PointF;->x:F

    .line 423
    iget v7, v0, Landroid/graphics/PointF;->y:F

    sget v8, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexY_:I

    mul-int/lit8 v8, v8, 0x14

    add-int/lit8 v8, v8, -0xa

    int-to-float v8, v8

    add-float/2addr v7, v8

    iput v7, v0, Landroid/graphics/PointF;->y:F

    .line 426
    iget v7, v0, Landroid/graphics/PointF;->x:F

    const/high16 v8, 0x41a00000    # 20.0f

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1

    .line 427
    iput v8, v0, Landroid/graphics/PointF;->x:F

    .line 429
    :cond_1
    iget v7, v0, Landroid/graphics/PointF;->y:F

    cmpg-float v7, v7, v8

    if-gez v7, :cond_2

    .line 430
    iput v8, v0, Landroid/graphics/PointF;->y:F

    :cond_2
    if-nez p1, :cond_3

    .line 434
    new-instance p1, Lcom/metamoji/cm/CmContext;

    invoke-direct {p1}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 437
    :cond_3
    const-string v7, "location"

    invoke-virtual {p1, v7, v0}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 439
    const-string/jumbo v0, "toFocus"

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {p1, v0, v8}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 441
    const-string/jumbo v0, "toSelect"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    invoke-virtual {p1, v0, v9}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    invoke-virtual {v4, v6, p1}, Lcom/metamoji/un/draw2/unit/DrUnUnitController;->addUnit(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/CmContext;)V

    if-eqz p0, :cond_4

    .line 446
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 447
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 448
    invoke-virtual {v3, v6}, Lcom/metamoji/nt/NtPageController;->getControllerOf(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/controller/DfController;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/sound/UnSoundUnit;

    .line 449
    invoke-virtual {v0, p1, v7}, Lcom/metamoji/un/sound/UnSoundUnit;->recordingCompleted(Ljava/io/File;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p0, :cond_5

    .line 454
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 457
    :cond_5
    invoke-virtual {v2, v8}, Lcom/metamoji/nt/NtDocument;->setSaveOnEnd(Z)V

    .line 459
    invoke-static {}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->incrementIndexY()V

    return-void

    :catchall_0
    move-exception p1

    if-eqz p0, :cond_6

    .line 454
    invoke-virtual {v1, v5}, Lcom/metamoji/nt/NtNoteController;->endEdit(Lcom/metamoji/df/controller/EditContext;)V

    .line 456
    :cond_6
    throw p1
.end method

.method static clearIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 61
    sput v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexX_:I

    .line 62
    sput v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexY_:I

    return-void
.end method

.method static createSoundUnitModel(Lcom/metamoji/nt/NtDocument;Lcom/metamoji/nt/NtPageController;)Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 366
    invoke-virtual {p0}, Lcom/metamoji/nt/NtDocument;->getModelManager()Lcom/metamoji/df/model/IModelManager;

    move-result-object p0

    .line 369
    invoke-static {p0}, Lcom/metamoji/un/sound/UnSoundUnit;->createSoundUnitModel(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    .line 372
    const-string/jumbo p1, "width"

    const/16 v0, 0x14

    invoke-interface {p0, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    .line 373
    const-string p1, "height"

    invoke-interface {p0, p1, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;I)V

    return-object p0
.end method

.method public static handleAddSoundUnit(Lcom/metamoji/cm/CmContext;)V
    .locals 1

    const/4 v0, 0x0

    .line 362
    invoke-static {v0, p0}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->addSoundUnit(Ljava/lang/String;Lcom/metamoji/cm/CmContext;)V

    return-void
.end method

.method public static handleAddSoundUnitFromFile(Lcom/metamoji/cm/CmContext;)V
    .locals 3

    .line 379
    const-string v0, "importFilePath"

    invoke-virtual {p0, v0}, Lcom/metamoji/cm/CmContext;->getExtData(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 381
    new-instance v1, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6;

    invoke-direct {v1, p0}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$6;-><init>(Lcom/metamoji/cm/CmContext;)V

    .line 388
    new-instance p0, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;

    const/4 v2, 0x0

    invoke-direct {p0, v2, v1}, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio$IMediaBgTaskForConvertAudioCompleteAction;)V

    .line 389
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->setSrcFile(Ljava/io/File;)V

    .line 390
    invoke-virtual {p0}, Lcom/metamoji/media/voice/converter/VcBgTaskForConvertAudio;->doInBackground()V

    return-void
.end method

.method private handleSaveToFile(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 6

    .line 229
    instance-of p1, p2, Lcom/metamoji/un/sound/UnSoundUnit;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 230
    check-cast p2, Lcom/metamoji/un/sound/UnSoundUnit;

    goto :goto_0

    .line 232
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 233
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 237
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    .line 238
    instance-of p2, p1, Lcom/metamoji/un/sound/UnSoundUnit;

    if-nez p2, :cond_2

    goto :goto_1

    .line 242
    :cond_2
    move-object p2, p1

    check-cast p2, Lcom/metamoji/un/sound/UnSoundUnit;

    :goto_0
    if-nez p2, :cond_3

    goto :goto_1

    .line 250
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-nez p1, :cond_4

    :goto_1
    return-void

    .line 256
    :cond_4
    invoke-virtual {p2}, Lcom/metamoji/un/sound/UnSoundUnit;->getCacheFileName()Ljava/lang/String;

    move-result-object v2

    .line 257
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 260
    invoke-virtual {p2}, Lcom/metamoji/un/sound/UnSoundUnit;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 262
    invoke-virtual {p2}, Lcom/metamoji/un/sound/UnSoundUnit;->getMediaId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 264
    invoke-virtual {p2}, Lcom/metamoji/un/sound/UnSoundUnit;->getRecordId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    move v0, v1

    .line 268
    :goto_2
    new-instance p2, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;

    invoke-direct {p2, p0, p1, v3}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$3;-><init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;)V

    invoke-static {v4, v5, v0, v2, p2}, Lcom/metamoji/media/MediaUtil;->downloadSoundFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)V

    return-void

    .line 295
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$4;

    invoke-direct {v0, p0, p1, v3}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$4;-><init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSendToApplication(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 6

    .line 151
    instance-of p1, p2, Lcom/metamoji/un/sound/UnSoundUnit;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 152
    check-cast p2, Lcom/metamoji/un/sound/UnSoundUnit;

    goto :goto_0

    .line 154
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-eq p2, v1, :cond_1

    goto :goto_1

    .line 159
    :cond_1
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    .line 160
    instance-of p2, p1, Lcom/metamoji/un/sound/UnSoundUnit;

    if-nez p2, :cond_2

    goto :goto_1

    .line 164
    :cond_2
    move-object p2, p1

    check-cast p2, Lcom/metamoji/un/sound/UnSoundUnit;

    :goto_0
    if-nez p2, :cond_3

    goto :goto_1

    .line 172
    :cond_3
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-nez p1, :cond_4

    :goto_1
    return-void

    .line 178
    :cond_4
    invoke-virtual {p2}, Lcom/metamoji/un/sound/UnSoundUnit;->getCacheFileName()Ljava/lang/String;

    move-result-object v2

    .line 179
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/media/voice/VcUtil;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 181
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_6

    .line 182
    invoke-virtual {p2}, Lcom/metamoji/un/sound/UnSoundUnit;->getUrl()Ljava/lang/String;

    move-result-object v4

    .line 184
    invoke-virtual {p2}, Lcom/metamoji/un/sound/UnSoundUnit;->getMediaId()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_5

    .line 186
    invoke-virtual {p2}, Lcom/metamoji/un/sound/UnSoundUnit;->getRecordId()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_5
    move v0, v1

    .line 190
    :goto_2
    new-instance p2, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$1;

    invoke-direct {p2, p0, p1, v3}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$1;-><init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;)V

    invoke-static {v4, v5, v0, v2, p2}, Lcom/metamoji/media/MediaUtil;->downloadSoundFile(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lcom/metamoji/media/voice/controller/VcRecordingsManager$IVcDownloadCompletionAction;)V

    return-void

    .line 217
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p2

    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$2;

    invoke-direct {v0, p0, p1, v3}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$2;-><init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;Lcom/metamoji/nt/NtEditorWindowController;Ljava/io/File;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleSoundUnitBar(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 307
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-interface {p1}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p1

    const-string v0, "$soundunit"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 308
    check-cast p2, Lcom/metamoji/un/sound/UnSoundUnit;

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitController;->getSelectedUnitControllers()Ljava/util/List;

    move-result-object p1

    .line 311
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    .line 315
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitController;

    .line 316
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object p2

    invoke-interface {p2}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 317
    move-object p2, p1

    check-cast p2, Lcom/metamoji/un/sound/UnSoundUnit;

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_3

    :goto_1
    return-void

    .line 326
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p1

    new-instance v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;

    invoke-direct {v0, p0, p2}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$5;-><init>(Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;Lcom/metamoji/un/sound/UnSoundUnit;)V

    invoke-virtual {p1, v0}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static incrementIndexY()V
    .locals 3

    .line 50
    sget v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexY_:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexY_:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 52
    sput v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexY_:I

    .line 53
    sget v2, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexX_:I

    add-int/lit8 v2, v2, 0x1

    sput v2, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexX_:I

    if-ne v2, v1, :cond_0

    .line 55
    sput v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->indexX_:I

    :cond_0
    return-void
.end method


# virtual methods
.method public commandsForChildUnit(Lcom/metamoji/nt/NtUnitController;)Ljava/util/List;
    .locals 7
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

    .line 76
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "$soundunit"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 77
    move-object v0, p1

    check-cast v0, Lcom/metamoji/un/sound/UnSoundUnit;

    .line 79
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 80
    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->canFocus()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 81
    new-instance v3, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_BAR:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SCHOOL_SOUND_BAR:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 83
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitCommandInfo;->getCommand()Lcom/metamoji/nt/NtCommand;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 89
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v3

    sget-object v4, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByApp:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v3, v4}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 91
    new-instance v3, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v4, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_SEND_TO_APPLICATION:Lcom/metamoji/nt/NtCommand;

    sget v5, Lcom/metamoji/noteanytime/R$string;->SendWindow_Application:I

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5, v1, v6}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 93
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    invoke-virtual {v3}, Lcom/metamoji/nt/NtUnitCommandInfo;->getCommand()Lcom/metamoji/nt/NtCommand;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 94
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/un/sound/UnSoundUnit;->getTicket()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUnavailableSendByFile:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 100
    new-instance v0, Lcom/metamoji/nt/NtUnitCommandInfo;

    sget-object v3, Lcom/metamoji/nt/NtCommand;->CMD_SOUND_UNIT_SAVE_TO_FILE:Lcom/metamoji/nt/NtCommand;

    sget v4, Lcom/metamoji/noteanytime/R$string;->Share_SaveToFile:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4, v1, v6}, Lcom/metamoji/nt/NtUnitCommandInfo;-><init>(Lcom/metamoji/nt/NtCommand;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 102
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p1

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUnitCommandInfo;->getCommand()Lcom/metamoji/nt/NtCommand;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 103
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v2

    :cond_3
    return-object v1
.end method

.method public performCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)Z
    .locals 2

    .line 123
    sget-object v0, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender$7;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p1}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 p3, 0x4

    if-eq p1, p3, :cond_0

    const/4 p1, 0x0

    return p1

    .line 135
    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleAddSoundUnitFromFile(Lcom/metamoji/cm/CmContext;)V

    return v0

    .line 132
    :cond_1
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleSaveToFile(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 129
    :cond_2
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleSendToApplication(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0

    .line 125
    :cond_3
    invoke-direct {p0, p2, p3}, Lcom/metamoji/un/sound/UnSoundUnitContainerExtender;->handleSoundUnitBar(Lcom/metamoji/cm/CmContext;Lcom/metamoji/nt/NtUnitController;)V

    return v0
.end method
