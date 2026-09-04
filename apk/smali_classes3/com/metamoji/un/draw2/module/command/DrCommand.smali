.class public Lcom/metamoji/un/draw2/module/command/DrCommand;
.super Ljava/lang/Object;
.source "DrCommand.java"


# static fields
.field private static final MODEL_PROPERTY_COLLABORATION_TARGET:Ljava/lang/String; = "A"

.field private static final MODEL_PROPERTY_COLLABORATION_TYPE:Ljava/lang/String; = "Y"

.field private static final MODEL_PROPERTY_DIRECTION:Ljava/lang/String; = "D"

.field private static final MODEL_PROPERTY_EXTRA_DATA:Ljava/lang/String; = "E"

.field private static final MODEL_PROPERTY_IS_REVERSAL:Ljava/lang/String; = "V"

.field private static final MODEL_PROPERTY_REVERSE_DIRECTION:Ljava/lang/String; = "R"

.field private static final MODEL_PROPERTY_REVERSE_EXTRA_DATA:Ljava/lang/String; = "X"

.field private static final MODEL_TYPE:Ljava/lang/String; = "C"

.field private static final MODEL_TYPE_EXTRA_DATA:Ljava/lang/String; = "E"


# instance fields
.field private m_closed:Z

.field private m_collaborationTarget:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

.field private m_collaborationType:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

.field private m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

.field private m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

.field private m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

.field private m_extraData:Lcom/metamoji/df/model/IModel;

.field private m_isReversal:Z

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

.field private m_reverseExtraData:Lcom/metamoji/df/model/IModel;


# direct methods
.method public constructor <init>(Lcom/metamoji/un/draw2/module/DrModuleContext;)V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 56
    sget-object p1, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationType:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    .line 57
    sget-object p1, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationTarget:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_isReversal:Z

    .line 59
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->NONE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    .line 60
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    return-void
.end method

.method public static checkCommandModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 544
    const-string v0, "C"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->type(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static checkExtraData(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 551
    const-string v0, "E"

    invoke-static {p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->type(Lcom/metamoji/df/model/IModel;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static getCollaborationTargetFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;
    .locals 2

    if-nez p0, :cond_0

    .line 605
    sget-object p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    return-object p0

    .line 607
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    .line 608
    const-string v1, "A"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    .line 609
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommand$1;->$SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationTarget:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 616
    sget-object p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    :cond_1
    return-object p0
.end method

.method public static getCollaborationTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;
    .locals 2

    if-nez p0, :cond_0

    .line 589
    sget-object p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    return-object p0

    .line 591
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    .line 592
    const-string v1, "Y"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    .line 593
    sget-object v0, Lcom/metamoji/un/draw2/module/command/DrCommand$1;->$SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    .line 600
    sget-object p0, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    :cond_1
    return-object p0
.end method

.method public static getDirectionModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 563
    :cond_0
    const-string v0, "D"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getExtraDataFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 577
    :cond_0
    const-string v0, "E"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getIsReversalFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 624
    :cond_0
    const-string v1, "V"

    invoke-static {v1, v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p0

    return p0
.end method

.method public static getReverseDirectionModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 570
    :cond_0
    const-string v0, "R"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getReverseExtraDataFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 584
    :cond_0
    const-string v0, "X"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static newEmptyCommandModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 670
    const-string v0, "C"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 672
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static newEmptyExtraDataWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 683
    const-string v0, "E"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 685
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static saveExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 646
    :cond_0
    const-string v0, "E"

    if-eqz p1, :cond_1

    .line 647
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 649
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static saveIsReversalToModel(Lcom/metamoji/df/model/IModel;Z)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 635
    :cond_0
    const-string v0, "V"

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 636
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    return-void

    .line 638
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public static saveReverseExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 657
    :cond_0
    const-string v0, "X"

    if-eqz p1, :cond_1

    .line 658
    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 660
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method public allExtraDataPropertyNamesForReverse(Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 462
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 463
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 464
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1

    :cond_0
    if-eqz p1, :cond_1

    .line 466
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 467
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->allPropertyNames(Lcom/metamoji/df/model/IModel;Z)Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_2
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    return-object p1
.end method

.method public checkExtraDataPropertiesForReverse(Z)Z
    .locals 2

    .line 444
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 445
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 448
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 449
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->checkPropertiesOfModel(Lcom/metamoji/df/model/IModel;Z)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public collaborationTarget()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationTarget:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    return-object v0
.end method

.method public collaborationType()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationType:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 498
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 501
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    .line 502
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->destroy()V

    .line 504
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 506
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eqz v0, :cond_2

    .line 507
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->destroy()V

    .line 508
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    .line 510
    :cond_2
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    .line 511
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    .line 512
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    .line 513
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method public destroyExtraDataForReverse(Z)V
    .locals 2

    .line 471
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 472
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 484
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_2

    if-eqz v0, :cond_1

    .line 477
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveReverseExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 479
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_4

    .line 480
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 481
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 485
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 487
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_4

    .line 488
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 489
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    :cond_4
    return-void
.end method

.method public direction()Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    return-object v0
.end method

.method public executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    return-object v0
.end method

.method public extraData()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    :try_start_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 74
    throw v0
.end method

.method public getExtraDataPropertyCountForReverse(Z)I
    .locals 2

    .line 453
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 454
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 457
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    :goto_0
    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 458
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->allPropertyNames(Lcom/metamoji/df/model/IModel;Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public getExtraDataPropertyForName(Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 2

    .line 405
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 406
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 410
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    :cond_1
    if-eqz p2, :cond_2

    .line 413
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    :goto_0
    if-eqz p2, :cond_3

    .line 414
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->propertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public isReversal()Z
    .locals 1

    .line 130
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_isReversal:Z

    return v0
.end method

.method public model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public removeAllExtraDataPropertiesForReverse(Z)V
    .locals 1

    .line 433
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 434
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 437
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    :goto_0
    if-eqz p1, :cond_2

    .line 439
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeAllProperties(Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public removeExtraDataPropertyForName(Ljava/lang/String;Z)V
    .locals 2

    .line 418
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 419
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 423
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-eqz p2, :cond_2

    .line 426
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    :goto_0
    if-eqz p2, :cond_3

    .line 428
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :cond_3
    return-void
.end method

.method public restoreFromModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    const/4 v0, 0x0

    .line 170
    invoke-virtual {p0, p1, v0, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->restoreFromModel(Lcom/metamoji/df/model/IModel;ZZ)Z

    move-result p1

    return p1
.end method

.method public restoreFromModel(Lcom/metamoji/df/model/IModel;ZZ)Z
    .locals 4

    .line 174
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 175
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 179
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 182
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->checkCommandModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p1, 0x2

    .line 183
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_2
    if-nez p2, :cond_4

    .line 190
    const-string p2, "D"

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 192
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-static {p2, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->restoreDirectionFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object v3

    iput-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-nez v3, :cond_3

    const/4 p1, 0x3

    .line 194
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 197
    :cond_3
    invoke-virtual {v3, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setIsReversal(Z)V

    goto :goto_0

    :cond_4
    move-object p2, v1

    :cond_5
    :goto_0
    if-nez p3, :cond_8

    .line 203
    const-string p3, "R"

    invoke-static {p3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p3

    if-eqz p3, :cond_8

    .line 206
    invoke-static {p3, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 208
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    goto :goto_1

    .line 211
    :cond_6
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_context:Lcom/metamoji/un/draw2/module/DrModuleContext;

    invoke-static {p3, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->restoreDirectionFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-nez p2, :cond_7

    const/4 p1, 0x4

    .line 213
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 216
    :cond_7
    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setIsReversal(Z)V

    .line 222
    :cond_8
    :goto_1
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationType:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    .line 223
    const-string p3, "Y"

    invoke-static {p3, p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationType:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    .line 226
    sget-object p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->NONE:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationTarget:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    .line 227
    const-string p3, "A"

    invoke-static {p3, p2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p2

    check-cast p2, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationTarget:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    .line 230
    iput-boolean v2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_isReversal:Z

    .line 231
    const-string p2, "V"

    invoke-static {p2, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->boolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_isReversal:Z

    .line 234
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->getExtraDataFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    .line 235
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->getReverseExtraDataFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p2

    iput-object p2, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    .line 238
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    return v0
.end method

.method public reverseDirection()Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    return-object v0
.end method

.method public reverseExtraData()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 361
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method public saveToModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 8

    .line 247
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 248
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 252
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 255
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->checkCommandModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    const/4 v4, 0x2

    if-nez v3, :cond_2

    .line 256
    invoke-static {v4, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v2

    .line 262
    :cond_2
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    const-string v5, "D"

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->canSave()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 263
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->newEmptyDirectionModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 264
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v6, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 265
    invoke-static {v5, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    .line 267
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 268
    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 269
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    return v2

    .line 273
    :cond_4
    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    move-object v3, v1

    .line 277
    :goto_0
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    const-string v6, "R"

    if-eqz v5, :cond_7

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->canSave()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 279
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-ne v5, v7, :cond_5

    if-eqz v3, :cond_5

    .line 281
    invoke-static {v6, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 284
    :cond_5
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->newEmptyDirectionModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    .line 285
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {v5, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->saveToModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 286
    invoke-static {v6, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    .line 288
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 289
    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 290
    invoke-static {v3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    return v2

    .line 295
    :cond_7
    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 299
    :goto_1
    sget-object v1, Lcom/metamoji/un/draw2/module/command/DrCommand$1;->$SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->collaborationType()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "Y"

    if-eq v1, v0, :cond_8

    if-eq v1, v4, :cond_8

    .line 305
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 302
    :cond_8
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->collaborationType()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 310
    :goto_2
    sget-object v1, Lcom/metamoji/un/draw2/module/command/DrCommand$1;->$SwitchMap$com$metamoji$un$draw2$module$collaboration$DrCollaborationTarget:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->collaborationTarget()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const-string v2, "A"

    if-eq v1, v0, :cond_9

    if-eq v1, v4, :cond_9

    .line 316
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    goto :goto_3

    .line 313
    :cond_9
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->collaborationTarget()Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 321
    :goto_3
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_isReversal:Z

    const-string v2, "V"

    if-eqz v1, :cond_a

    .line 322
    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setBoolPropertyForName(Ljava/lang/String;ZLcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 324
    :cond_a
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 328
    :goto_4
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 329
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveReverseExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 332
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    return v0
.end method

.method public setCollaborationTarget(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationTarget:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationTarget;

    return-void
.end method

.method public setCollaborationType(Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;)V
    .locals 0

    .line 120
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_collaborationType:Lcom/metamoji/un/draw2/module/collaboration/DrCollaborationType;

    return-void
.end method

.method public setDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
    .locals 2

    .line 87
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 88
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 91
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eqz p1, :cond_1

    .line 93
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    .line 94
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    invoke-virtual {p1, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setIsReversal(Z)V

    :cond_1
    return-void
.end method

.method public setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V
    .locals 1

    .line 528
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    .line 529
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eqz v0, :cond_0

    .line 530
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    .line 532
    :cond_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eqz p1, :cond_1

    .line 533
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    :cond_1
    return-void
.end method

.method public setExtraData(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 346
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 347
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 350
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->checkExtraData(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 351
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 354
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    .line 355
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_2

    .line 356
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public setExtraDataPropertyForName(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2

    .line 385
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 386
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 390
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 393
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    :goto_0
    if-nez p3, :cond_3

    return-void

    :cond_3
    if-eqz p2, :cond_4

    .line 398
    invoke-static {p1, p2, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setPropertyForName(Ljava/lang/String;Ljava/lang/Object;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 400
    :cond_4
    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public setIsReversal(Z)V
    .locals 1

    .line 133
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 134
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 137
    :cond_0
    iput-boolean p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_isReversal:Z

    return-void
.end method

.method public setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 149
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 150
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 153
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->checkCommandModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 154
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 157
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz p1, :cond_2

    .line 159
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_extraData:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 160
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveReverseExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method

.method public setReverseDirection(Lcom/metamoji/un/draw2/module/command/direction/DrDirection;)V
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 103
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 106
    :cond_0
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eqz p1, :cond_2

    .line 108
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_executionType:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setExecutionType(Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;)V

    .line 109
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_direction:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    if-eq p1, v0, :cond_2

    .line 110
    :cond_1
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseDirection:Lcom/metamoji/un/draw2/module/command/direction/DrDirection;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->setIsReversal(Z)V

    :cond_2
    return-void
.end method

.method public setReverseExtraData(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 364
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_closed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 365
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 368
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->checkExtraData(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 369
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 372
    :cond_1
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_reverseExtraData:Lcom/metamoji/df/model/IModel;

    .line 373
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/DrCommand;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_2

    .line 374
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/command/DrCommand;->saveReverseExtraDataToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_2
    return-void
.end method
