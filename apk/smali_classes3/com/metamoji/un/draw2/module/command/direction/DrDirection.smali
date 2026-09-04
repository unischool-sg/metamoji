.class public Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.super Ljava/lang/Object;
.source "DrDirection.java"


# static fields
.field protected static final MODEL_PROPERTY_ADDITIONAL_DATA:Ljava/lang/String; = "A"

.field protected static final MODEL_PROPERTY_COLLABORATION_ID:Ljava/lang/String; = "C"

.field private static final MODEL_PROPERTY_MODULE_ACCEPTABLE_VERSION:Ljava/lang/String; = "O"

.field private static final MODEL_PROPERTY_MODULE_VERSION:Ljava/lang/String; = "M"

.field protected static final MODEL_PROPERTY_TYPE:Ljava/lang/String; = "T"

.field private static final MODEL_PROPERTY_VERSION:Ljava/lang/String; = "V"

.field protected static final MODEL_TYPE:Ljava/lang/String; = "D"


# instance fields
.field private m_bySelf:Z

.field private m_closed:Z

.field private m_collaborationId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_executed:Z

.field private m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

.field private m_isReversal:Z

.field private m_modifiedCanvas:Z

.field private m_modifiedModel:Z

.field private m_moduleAcceptableVersion:I

.field private m_moduleVersion:I

.field private m_version:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkDirectionModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 365
    const-string v0, "D"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->type(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getAdditionalDataFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 448
    :cond_0
    const-string v0, "A"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getCollaborationIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 441
    :cond_0
    const-string v0, "C"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method public static getModuleAcceptableVersionFromModel(Lcom/metamoji/df/model/IModel;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 433
    const-string v1, "O"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result p0

    return p0
.end method

.method public static getModuleVersionFromModel(Lcom/metamoji/df/model/IModel;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x5

    .line 423
    const-string v1, "M"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result p0

    return p0
.end method

.method public static getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 2

    if-nez p0, :cond_0

    .line 375
    sget-object p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->NONE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object p0

    .line 377
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->NONE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 378
    const-string v1, "T"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object p0
.end method

.method public static getVersionFromModel(Lcom/metamoji/df/model/IModel;)I
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 v0, 0x1

    .line 413
    const-string v1, "V"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result p0

    return p0
.end method

.method public static newEmptyDirectionModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 482
    const-string v0, "D"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 484
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static restoreDirectionFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 4

    .line 493
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->checkDirectionModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    .line 494
    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 499
    :cond_0
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    move-result-object v0

    .line 500
    sget-object v2, Lcom/metamoji/un/draw2/module/command/direction/DrDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$direction$DrDirectionType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_1

    packed-switch v2, :pswitch_data_0

    move-object p1, v1

    goto/16 :goto_0

    .line 548
    :pswitch_0
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrBindUnbindDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto/16 :goto_0

    .line 545
    :pswitch_1
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetContentPropertiesDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto/16 :goto_0

    .line 542
    :pswitch_2
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto/16 :goto_0

    .line 539
    :pswitch_3
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto/16 :goto_0

    .line 536
    :pswitch_4
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 533
    :pswitch_5
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 530
    :pswitch_6
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 527
    :pswitch_7
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetExtraHandleVariationDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 524
    :pswitch_8
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 521
    :pswitch_9
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 518
    :pswitch_a
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 515
    :pswitch_b
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 512
    :pswitch_c
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 505
    :cond_1
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrGroupDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    goto :goto_0

    .line 502
    :cond_2
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;-><init>()V

    invoke-virtual {v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrAddRemoveDirection;->initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_3

    .line 554
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->intValue()I

    move-result p0

    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 557
    :cond_3
    invoke-virtual {p1, p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->restoreFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 558
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->intValue()I

    move-result p0

    invoke-static {p0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 559
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->destroy()V

    return-object v1

    :cond_4
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static saveAdditionalDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 469
    :cond_0
    const-string v0, "A"

    if-eqz p1, :cond_1

    .line 470
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 472
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static saveCollaborationIdToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 458
    :cond_0
    const-string v0, "C"

    if-eqz p1, :cond_1

    .line 459
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 461
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0
    .annotation runtime Ljavax/annotation/OverridingMethodsMustInvokeSuper;
    .end annotation

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0
    .annotation runtime Ljavax/annotation/OverridingMethodsMustInvokeSuper;
    .end annotation

    return-void
.end method

.method public bySelf()Z
    .locals 1

    .line 168
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_bySelf:Z

    return v0
.end method

.method public canSave()Z
    .locals 2

    .line 143
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 144
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->canSave_()Z

    move-result v0

    return v0
.end method

.method canSave_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_collaborationId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method public context()Lcom/metamoji/un/draw2/module/DrModuleContext;
    .locals 2

    .line 93
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 94
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    return-object v0
.end method

.method public destroy()V
    .locals 1

    .line 260
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 263
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->destroy_()V

    const/4 v0, 0x0

    .line 265
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 266
    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method destroy_()V
    .locals 0

    return-void
.end method

.method public executeAndCreateReverseDirection(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 3

    .line 178
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 179
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 182
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_executed:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 183
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 186
    :cond_1
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_executed:Z

    .line 187
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p1

    return-object p1
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-nez v0, :cond_0

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 81
    throw v0
.end method

.method public hasReverse()Z
    .locals 2

    .line 134
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 135
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 138
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->hasReverse_()Z

    move-result v0

    return v0
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public initWithContext(Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/metamoji/un/draw2/module/command/direction/DrDirection;",
            ">(",
            "Lcom/metamoji/un/draw2/module/DrModuleContext;",
            ")TT;"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 55
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->directionVersion()I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_version:I

    .line 56
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->version()I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_moduleVersion:I

    .line 57
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->acceptableVersion()I

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_moduleAcceptableVersion:I

    const/4 p1, 0x1

    .line 58
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setBySelf(Z)V

    .line 59
    sget-object p1, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NONE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    const/4 p1, 0x0

    .line 60
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setIsReversal(Z)V

    .line 63
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->init_()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 64
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method init_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isReversal()Z
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_isReversal:Z

    return v0
.end method

.method public modifiedCanvas()Z
    .locals 1

    .line 158
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_modifiedCanvas:Z

    return v0
.end method

.method public modifiedModel()Z
    .locals 1

    .line 155
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_modifiedModel:Z

    return v0
.end method

.method public moduleAcceptableVersion()I
    .locals 2

    .line 126
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 127
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 129
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_moduleAcceptableVersion:I

    return v0
.end method

.method public moduleVersion()I
    .locals 2

    .line 118
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 119
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 121
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_moduleVersion:I

    return v0
.end method

.method public restoreFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 196
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 200
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_executed:Z

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 201
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_1
    if-nez p1, :cond_2

    const/4 p1, 0x2

    .line 205
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 208
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->checkDirectionModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 209
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 212
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    move-result-object v3

    if-eq v0, v3, :cond_4

    const/4 p1, 0x4

    .line 213
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 218
    :cond_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->getVersionFromModel(Lcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_version:I

    .line 221
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->getModuleVersionFromModel(Lcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_moduleVersion:I

    .line 224
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->getModuleAcceptableVersionFromModel(Lcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_moduleAcceptableVersion:I

    .line 227
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->getCollaborationIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z

    move-result p1

    return p1
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 237
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 242
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 245
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->checkDirectionModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 246
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 249
    :cond_2
    const-string v0, "T"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 250
    const-string v0, "V"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_version:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    .line 251
    const-string v0, "M"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_moduleVersion:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    .line 252
    const-string v0, "O"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_moduleAcceptableVersion:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    .line 253
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveToModel_(Lcom/metamoji/df/model/IModel;)Z

    move-result p1

    return p1
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public setBySelf(Z)V
    .locals 0

    .line 169
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_bySelf:Z

    return-void
.end method

.method public setCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_collaborationId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method public setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    return-void
.end method

.method public setIsReversal(Z)V
    .locals 0

    .line 325
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_isReversal:Z

    return-void
.end method

.method public setModifiedCanvas(Z)V
    .locals 0

    .line 159
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_modifiedCanvas:Z

    return-void
.end method

.method public setModifiedModel(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_modifiedModel:Z

    return-void
.end method

.method public type()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 2

    .line 102
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 103
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    move-result-object v0

    return-object v0
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 282
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->NONE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method

.method public version()I
    .locals 2

    .line 110
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 113
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_version:I

    return v0
.end method

.method public wasExecuted()Z
    .locals 1

    .line 341
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->m_executed:Z

    return v0
.end method
