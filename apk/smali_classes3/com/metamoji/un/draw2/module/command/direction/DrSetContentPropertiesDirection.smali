.class public Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrSetContentPropertiesDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_NEXT_CONTENT_ANGLE:Ljava/lang/String; = "na"

.field private static final MODEL_PROPERTY_NEXT_CONTENT_BOUNDS_HEIGHT:Ljava/lang/String; = "nh"

.field private static final MODEL_PROPERTY_NEXT_CONTENT_BOUNDS_WIDTH:Ljava/lang/String; = "nw"

.field private static final MODEL_PROPERTY_NEXT_CONTENT_BOUNDS_X:Ljava/lang/String; = "nx"

.field private static final MODEL_PROPERTY_NEXT_CONTENT_BOUNDS_Y:Ljava/lang/String; = "ny"

.field private static final MODEL_PROPERTY_NEXT_CONTENT_SCALE:Ljava/lang/String; = "ns"

.field private static final MODEL_PROPERTY_PREV_CONTENT_ANGLE:Ljava/lang/String; = "pa"

.field private static final MODEL_PROPERTY_PREV_CONTENT_BOUNDS_HEIGHT:Ljava/lang/String; = "ph"

.field private static final MODEL_PROPERTY_PREV_CONTENT_BOUNDS_WIDTH:Ljava/lang/String; = "pw"

.field private static final MODEL_PROPERTY_PREV_CONTENT_BOUNDS_X:Ljava/lang/String; = "px"

.field private static final MODEL_PROPERTY_PREV_CONTENT_BOUNDS_Y:Ljava/lang/String; = "py"

.field private static final MODEL_PROPERTY_PREV_CONTENT_SCALE:Ljava/lang/String; = "ps"

.field private static final MODEL_PROPERTY_RESTORE_TYPE:Ljava/lang/String; = "r"


# instance fields
.field private m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_nextContentAngleInDegrees:F

.field private m_nextContentBounds:Lcom/metamoji/cm/RectEx;

.field private m_nextContentScale:F

.field private m_prevContentAngleInDegrees:F

.field private m_prevContentBounds:Lcom/metamoji/cm/RectEx;

.field private m_prevContentScale:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method

.method private static saveNextContentAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 412
    const-string v1, "na"

    if-eqz v0, :cond_1

    .line 413
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 415
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveNextContentBoundsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 379
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const-string v1, "nh"

    const-string v2, "nw"

    const-string v3, "ny"

    const-string v4, "nx"

    if-nez v0, :cond_5

    .line 380
    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    .line 381
    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v4, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 383
    :cond_1
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 385
    :goto_0
    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    .line 386
    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v3, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 388
    :cond_2
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 390
    :goto_1
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    .line 391
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v2, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 393
    :cond_3
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 395
    :goto_2
    iget v0, p1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_4

    .line 396
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 398
    :cond_4
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 401
    :cond_5
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 402
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 403
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 404
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveNextContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    .line 423
    const-string v1, "ns"

    if-eqz v0, :cond_1

    .line 424
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 426
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePrevContentAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    .line 467
    const-string v1, "pa"

    if-eqz v0, :cond_1

    .line 468
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 470
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePrevContentBoundsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V
    .locals 6

    if-nez p0, :cond_0

    return-void

    .line 434
    :cond_0
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const-string v1, "ph"

    const-string v2, "pw"

    const-string v3, "py"

    const-string v4, "px"

    if-nez v0, :cond_5

    .line 435
    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    const/4 v5, 0x0

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_1

    .line 436
    iget v0, p1, Lcom/metamoji/cm/RectEx;->x:F

    invoke-static {v4, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 438
    :cond_1
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 440
    :goto_0
    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_2

    .line 441
    iget v0, p1, Lcom/metamoji/cm/RectEx;->y:F

    invoke-static {v3, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 443
    :cond_2
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 445
    :goto_1
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_3

    .line 446
    iget v0, p1, Lcom/metamoji/cm/RectEx;->width:F

    invoke-static {v2, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 448
    :cond_3
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 450
    :goto_2
    iget v0, p1, Lcom/metamoji/cm/RectEx;->height:F

    cmpl-float v0, v0, v5

    if-eqz v0, :cond_4

    .line 451
    iget p1, p1, Lcom/metamoji/cm/RectEx;->height:F

    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 453
    :cond_4
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 456
    :cond_5
    invoke-static {v4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 457
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 458
    invoke-static {v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 459
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePrevContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    .line 478
    const-string v1, "ps"

    if-eqz v0, :cond_1

    .line 479
    invoke-static {v1, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 481
    :cond_1
    invoke-static {v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 345
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 349
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 359
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 365
    :cond_0
    const-string v0, "r"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 369
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_CONTENT_PROPERTIES:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 318
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 322
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 332
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 338
    :cond_0
    const-string v0, "r"

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->REVERSE:Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    :cond_1
    return-void
.end method

.method canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public contentAngleInDegrees()F
    .locals 1

    .line 69
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    return v0
.end method

.method public contentAngleInRadians()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->radianFromDegree(F)F

    move-result v0

    return v0
.end method

.method public contentBounds()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    return-object v0
.end method

.method public contentScale()F
    .locals 1

    .line 83
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    return v0
.end method

.method destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 312
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 11

    .line 130
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectIsNull(Lcom/metamoji/cm/RectEx;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_4

    :cond_0
    return-object v1

    .line 136
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_6

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->bySelf()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 142
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_CONTENT_PROPERTIES:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v0, v5, v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 145
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    .line 147
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    sget-object v5, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_CONTENT_PROPERTIES:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v0, v4, v5, v1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 150
    :cond_2
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v6

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_4

    if-eqz p1, :cond_3

    goto/16 :goto_4

    :cond_3
    return-object v1

    .line 154
    :cond_4
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 159
    :cond_5
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 168
    :cond_6
    :goto_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v4

    aget v0, v0, v4

    const/4 v4, 0x5

    if-eq v0, v3, :cond_a

    const/4 v5, 0x2

    if-eq v0, v5, :cond_b

    const/4 v6, 0x3

    if-eq v0, v6, :cond_b

    const/4 v6, 0x4

    if-eq v0, v6, :cond_8

    if-eq v0, v4, :cond_9

    .line 182
    invoke-static {v5, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_7

    goto/16 :goto_4

    :cond_7
    return-object v1

    .line 176
    :cond_8
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_9

    goto :goto_1

    :cond_9
    move v3, v2

    goto :goto_1

    .line 170
    :cond_a
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_b

    move v2, v3

    :cond_b
    move v10, v3

    move v3, v2

    move v2, v10

    :goto_1
    if-eqz v3, :cond_11

    if-eqz v2, :cond_e

    .line 189
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;I)Z

    move-result v0

    if-nez v0, :cond_c

    .line 190
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->savePrevContentBoundsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V

    .line 192
    :cond_c
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentAngleInDegrees:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentAngleInDegrees()F

    move-result v3

    invoke-static {v0, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_d

    .line 193
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentAngleInDegrees()F

    move-result v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->savePrevContentAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 195
    :cond_d
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentScale:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentScale()F

    move-result v3

    invoke-static {v0, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_11

    .line 196
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentScale()F

    move-result v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->savePrevContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    goto :goto_2

    .line 199
    :cond_e
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {v0, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 200
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->saveNextContentBoundsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V

    .line 202
    :cond_f
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentAngleInDegrees()F

    move-result v3

    invoke-static {v0, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_10

    .line 203
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentAngleInDegrees()F

    move-result v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->saveNextContentAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 205
    :cond_10
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentScale()F

    move-result v3

    invoke-static {v0, v3, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_11

    .line 206
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentScale()F

    move-result v3

    invoke-static {v0, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->saveNextContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    :cond_11
    :goto_2
    if-eqz v2, :cond_13

    .line 213
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;I)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentAngleInDegrees()F

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    .line 215
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentScale()F

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_15

    .line 216
    :cond_12
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    iget v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    iget v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->updateContentBounds(Lcom/metamoji/cm/RectEx;FF)V

    goto :goto_3

    .line 219
    :cond_13
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentBounds:Lcom/metamoji/cm/RectEx;

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v2

    invoke-static {v0, v2, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;I)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentAngleInDegrees:F

    .line 220
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentAngleInDegrees()F

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_14

    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentScale:F

    .line 221
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentScale()F

    move-result v2

    invoke-static {v0, v2, v4}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-nez v0, :cond_15

    .line 222
    :cond_14
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentBounds:Lcom/metamoji/cm/RectEx;

    iget v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentAngleInDegrees:F

    iget v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentScale:F

    invoke-virtual {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->updateContentBounds(Lcom/metamoji/cm/RectEx;FF)V

    :cond_15
    :goto_3
    if-eqz p1, :cond_16

    :goto_4
    return-object p0

    :cond_16
    return-object v1
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init_()Z
    .locals 2

    .line 98
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentBounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    .line 99
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentAngleInDegrees()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->contentScale()F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    .line 101
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentBounds:Lcom/metamoji/cm/RectEx;

    .line 102
    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    iput v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentAngleInDegrees:F

    .line 103
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentScale:F

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_commonTargetId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 11

    .line 231
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 234
    const-string v0, "r"

    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->NORMAL:Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;

    .line 238
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection$DrRestoreType;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    .line 245
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    move v2, v1

    .line 256
    :cond_1
    const-string v0, "nx"

    const/4 v3, 0x0

    invoke-static {v0, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 257
    const-string v4, "ny"

    invoke-static {v4, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v4

    .line 258
    const-string v5, "nw"

    invoke-static {v5, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v5

    .line 259
    const-string v6, "nh"

    invoke-static {v6, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 260
    const-string v7, "na"

    invoke-static {v7, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v7

    .line 261
    const-string v8, "ns"

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-static {v8, v9, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v8

    if-eqz v2, :cond_2

    .line 263
    new-instance v10, Lcom/metamoji/cm/RectEx;

    invoke-direct {v10, v0, v4, v5, v6}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    iput-object v10, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    .line 264
    iput v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    .line 265
    iput v8, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    goto :goto_0

    .line 267
    :cond_2
    new-instance v10, Lcom/metamoji/cm/RectEx;

    invoke-direct {v10, v0, v4, v5, v6}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    iput-object v10, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentBounds:Lcom/metamoji/cm/RectEx;

    .line 268
    iput v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentAngleInDegrees:F

    .line 269
    iput v8, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentScale:F

    .line 279
    :goto_0
    const-string v0, "px"

    invoke-static {v0, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 280
    const-string v4, "py"

    invoke-static {v4, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v4

    .line 281
    const-string v5, "pw"

    invoke-static {v5, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v5

    .line 282
    const-string v6, "ph"

    invoke-static {v6, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v6

    .line 283
    const-string v7, "pa"

    invoke-static {v7, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v3

    .line 284
    const-string v7, "ps"

    invoke-static {v7, v9, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p1

    if-eqz v2, :cond_3

    .line 286
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentBounds:Lcom/metamoji/cm/RectEx;

    .line 287
    iput v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentAngleInDegrees:F

    .line 288
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentScale:F

    goto :goto_1

    .line 290
    :cond_3
    new-instance v2, Lcom/metamoji/cm/RectEx;

    invoke-direct {v2, v0, v4, v5, v6}, Lcom/metamoji/cm/RectEx;-><init>(FFFF)V

    iput-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    .line 291
    iput v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    .line 292
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    :goto_1
    return v1
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->saveNextContentBoundsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V

    .line 301
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->saveNextContentAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 302
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->saveNextContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 303
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentBounds:Lcom/metamoji/cm/RectEx;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->savePrevContentBoundsToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/cm/RectEx;)V

    .line 304
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentAngleInDegrees:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->savePrevContentAngleInDegreesToModel(Lcom/metamoji/df/model/IModel;F)V

    .line 305
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_prevContentScale:F

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->savePrevContentScaleToModel(Lcom/metamoji/df/model/IModel;F)V

    const/4 p1, 0x1

    return p1
.end method

.method public setContentAngleInDegrees(F)V
    .locals 0

    .line 72
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    return-void
.end method

.method public setContentAngleInRadians(F)V
    .locals 0

    .line 79
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->degreeFromRadian(F)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentAngleInDegrees:F

    return-void
.end method

.method public setContentBounds(Lcom/metamoji/cm/RectEx;)V
    .locals 0

    .line 65
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentBounds:Lcom/metamoji/cm/RectEx;

    return-void
.end method

.method public setContentScale(F)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 87
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 90
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->m_nextContentScale:F

    return-void
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 115
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_CONTENT_PROPERTIES:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method
