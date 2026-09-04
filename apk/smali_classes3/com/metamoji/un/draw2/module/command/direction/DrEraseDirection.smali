.class public Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrEraseDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;,
        Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_BASE_STROKE_ID:Ljava/lang/String; = "b"

.field private static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_ELEMENT_MODEL:Ljava/lang/String; = "m"

.field private static final MODEL_PROPERTY_ELEMENT_ORDER:Ljava/lang/String; = "o"

.field private static final MODEL_PROPERTY_ERASE_INTERVALS:Ljava/lang/String; = "r"

.field private static final MODEL_PROPERTY_ERASE_WHOLE:Ljava/lang/String; = "w"

.field private static final MODEL_PROPERTY_EXECUTION_TYPE:Ljava/lang/String; = "t"

.field private static final MODEL_PROPERTY_GROUPS:Ljava/lang/String; = "g"

.field private static final MODEL_PROPERTY_PEN_STYLE_MODEL:Ljava/lang/String; = "p"

.field private static final MODEL_PROPERTY_STROKE_END_INDEX:Ljava/lang/String; = "e"

.field private static final MODEL_PROPERTY_STROKE_START_INDEX:Ljava/lang/String; = "s"

.field private static final MODEL_PROPERTY_VARIATION:Ljava/lang/String; = "v"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_addElementIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_addInternalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_addedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_divisionIdsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_doErase:Z

.field private m_eraseInternalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_exclusionModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_executeFlagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private m_internalModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_removeElementIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_removeInternalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_removedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_selectionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/selection/DrSelection;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method

.method private addRemove()V
    .locals 30

    move-object/from16 v0, p0

    .line 1424
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    .line 1425
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v3

    .line 1426
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v2

    .line 1427
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v9

    .line 1428
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v10

    .line 1433
    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x5

    const/4 v15, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_3

    if-eq v4, v13, :cond_2

    if-eq v4, v12, :cond_2

    if-eq v4, v11, :cond_1

    if-eq v4, v14, :cond_0

    .line 1447
    invoke-static {v6, v15}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v4, v6

    goto :goto_0

    .line 1441
    :cond_1
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_0

    move v4, v5

    :goto_0
    move/from16 v17, v6

    goto :goto_2

    :cond_2
    move v4, v6

    goto :goto_1

    .line 1435
    :cond_3
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v4, :cond_2

    move v4, v5

    :goto_1
    move/from16 v17, v5

    :goto_2
    move/from16 v16, v4

    if-eqz v17, :cond_4

    .line 1452
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    goto :goto_3

    :cond_4
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    :goto_3
    if-eqz v17, :cond_5

    .line 1453
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    goto :goto_4

    :cond_5
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    :goto_4
    move-object/from16 v18, v7

    .line 1456
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    if-eqz v16, :cond_6

    .line 1461
    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    goto :goto_5

    :cond_6
    move-object v8, v15

    .line 1465
    :goto_5
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_16

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v14, v20

    check-cast v14, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1467
    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v11, v20

    check-cast v11, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    if-nez v11, :cond_7

    .line 1469
    invoke-static {v14}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v5, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_7
    const/4 v11, 0x4

    const/4 v14, 0x5

    goto :goto_6

    .line 1474
    :cond_7
    invoke-direct {v0, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->checkWhetherExecuteInternal(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;)Z

    move-result v20

    if-nez v20, :cond_8

    goto :goto_7

    .line 1480
    :cond_8
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v20

    if-eqz v20, :cond_a

    move/from16 v20, v6

    .line 1482
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 1484
    new-array v6, v5, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v23

    aput-object v23, v6, v20

    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    move-object/from16 v27, v4

    move v12, v5

    move-object v15, v7

    move-object/from16 v28, v8

    move/from16 v23, v20

    goto :goto_8

    :cond_9
    move-object v6, v4

    move/from16 v23, v5

    .line 1487
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeStartIndex()D

    move-result-wide v4

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    .line 1488
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeEndIndex()D

    move-result-wide v6

    move-object/from16 v26, v8

    .line 1489
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move/from16 v12, v23

    move-object/from16 v27, v24

    move-object/from16 v15, v25

    move-object/from16 v28, v26

    move/from16 v23, v20

    .line 1487
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsIntersectingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v6

    goto :goto_8

    :cond_a
    move-object/from16 v27, v4

    move v12, v5

    move/from16 v23, v6

    move-object v15, v7

    move-object/from16 v28, v8

    .line 1493
    invoke-virtual {v1, v14}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 1495
    new-array v4, v12, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    aput-object v14, v4, v23

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    goto :goto_8

    .line 1498
    :cond_b
    invoke-virtual {v3, v14}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v6

    :goto_8
    if-eqz v6, :cond_15

    .line 1503
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_c

    goto/16 :goto_c

    .line 1508
    :cond_c
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_9
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_14

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1510
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v6, :cond_e

    .line 1512
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v13, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_9

    .line 1517
    :cond_e
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v7

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeEndIndex()D

    move-result-wide v24

    cmpl-double v7, v7, v24

    if-gez v7, :cond_d

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v7

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeStartIndex()D

    move-result-wide v24

    cmpg-double v7, v7, v24

    if-gtz v7, :cond_f

    goto :goto_9

    :cond_f
    if-nez v16, :cond_10

    .line 1522
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v7

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeStartIndex()D

    move-result-wide v24

    cmpl-double v7, v7, v24

    if-nez v7, :cond_10

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v7

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeEndIndex()D

    move-result-wide v24

    cmpl-double v7, v7, v24

    if-nez v7, :cond_10

    .line 1530
    invoke-virtual {v15, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_10
    if-eqz v16, :cond_11

    move-object/from16 v8, v28

    .line 1537
    invoke-virtual {v8, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_a

    :cond_11
    move-object/from16 v8, v28

    .line 1540
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1543
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1546
    invoke-virtual {v10, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v5

    if-eqz v5, :cond_12

    .line 1548
    invoke-virtual {v5, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1551
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v13

    invoke-virtual {v7, v13, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1555
    :cond_12
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removedElementIds:Ljava/util/HashSet;

    if-eqz v5, :cond_13

    .line 1556
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1560
    :cond_13
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    .line 1563
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 1564
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    :goto_a
    move-object/from16 v28, v8

    const/4 v13, 0x2

    goto/16 :goto_9

    :cond_14
    :goto_b
    move-object/from16 v8, v28

    move v5, v12

    move-object v7, v15

    move/from16 v6, v23

    move-object/from16 v4, v27

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    goto :goto_d

    :cond_15
    :goto_c
    move v5, v12

    move-object v7, v15

    move/from16 v6, v23

    move-object/from16 v4, v27

    move-object/from16 v8, v28

    const/4 v11, 0x4

    const/4 v12, 0x3

    :goto_d
    const/4 v14, 0x5

    const/4 v15, 0x0

    goto/16 :goto_6

    :cond_16
    move-object/from16 v27, v4

    move v12, v5

    move/from16 v23, v6

    move-object v15, v7

    if-eqz v16, :cond_17

    .line 1572
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto :goto_e

    :cond_17
    const/4 v3, 0x0

    :goto_e
    if-eqz v17, :cond_18

    .line 1576
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    goto :goto_f

    :cond_18
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    :goto_f
    if-eqz v17, :cond_19

    .line 1579
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    goto :goto_10

    :cond_19
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    .line 1582
    :goto_10
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_11
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_20

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v16, :cond_1a

    .line 1584
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1a

    goto :goto_11

    .line 1589
    :cond_1a
    invoke-virtual {v1, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v11

    if-nez v11, :cond_1b

    goto :goto_11

    .line 1595
    :cond_1b
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    invoke-direct {v0, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->checkWhetherExecuteInternal(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;)Z

    move-result v13

    if-nez v13, :cond_1c

    goto :goto_11

    :cond_1c
    if-eqz v16, :cond_1d

    .line 1601
    invoke-virtual {v8, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1604
    invoke-virtual {v3, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 1607
    :cond_1d
    invoke-virtual {v1, v11}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1610
    invoke-virtual {v2, v7}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1613
    invoke-virtual {v10, v11}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v13

    if-eqz v13, :cond_1e

    .line 1615
    invoke-virtual {v13, v11}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1618
    iget-object v14, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v12

    invoke-virtual {v14, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    :cond_1e
    iget-object v12, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removedElementIds:Ljava/util/HashSet;

    if-eqz v12, :cond_1f

    .line 1623
    invoke-virtual {v12, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1627
    :cond_1f
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrElement;->destroy()V

    const/4 v12, 0x1

    .line 1630
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 1631
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    :goto_12
    const/4 v12, 0x1

    goto :goto_11

    :cond_20
    if-eqz v16, :cond_43

    .line 1636
    invoke-virtual {v8}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_43

    if-eqz v17, :cond_21

    .line 1638
    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    goto :goto_13

    :cond_21
    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    :goto_13
    move/from16 v7, v23

    .line 1641
    invoke-virtual {v1, v7, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementOrdersByAscending(ZLjava/util/Set;)Ljava/util/List;

    move-result-object v8

    .line 1644
    new-instance v7, Ljava/util/HashSet;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v11

    invoke-direct {v7, v11}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 1647
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v11, v12, :cond_39

    .line 1649
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    const/16 v19, 0x1

    add-int/lit8 v11, v11, -0x1

    move v12, v11

    const/4 v11, 0x0

    .line 1652
    :goto_14
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v11, v13, :cond_43

    .line 1654
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1655
    invoke-virtual {v1, v13}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v14

    check-cast v14, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v14, :cond_22

    move-object/from16 v17, v9

    move/from16 v16, v11

    const/4 v9, 0x0

    const/4 v11, 0x3

    .line 1657
    invoke-static {v11, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object/from16 v24, v5

    const/16 v22, 0x4

    goto/16 :goto_1b

    :cond_22
    move-object/from16 v17, v9

    move/from16 v16, v11

    const/4 v11, 0x3

    add-int/lit8 v9, v12, -0x1

    .line 1662
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1663
    invoke-virtual {v4, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    move-object/from16 v11, v24

    check-cast v11, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    if-nez v11, :cond_23

    .line 1665
    invoke-static {v12}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x4

    invoke-static {v12, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object/from16 v24, v5

    move/from16 v26, v9

    move/from16 v22, v12

    goto/16 :goto_1a

    :cond_23
    move-object/from16 v24, v5

    const/16 v22, 0x4

    .line 1670
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->executionType()Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    move-result-object v5

    if-eq v6, v5, :cond_24

    .line 1671
    invoke-static {v12}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v5

    const/4 v12, 0x5

    invoke-static {v12, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1672
    invoke-virtual {v11, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setExecutionType(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;)V

    .line 1673
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveExecutionTypeToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1677
    :cond_24
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v12

    invoke-virtual {v5, v12}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v5

    if-nez v5, :cond_25

    .line 1678
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1679
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1683
    :cond_25
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementModel()Lcom/metamoji/df/model/IModel;

    move-result-object v12

    invoke-static {v5, v12}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result v5

    if-nez v5, :cond_26

    .line 1684
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementModel(Lcom/metamoji/df/model/IModel;)V

    .line 1685
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveElementModelToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1689
    :cond_26
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementOrder()I

    move-result v5

    if-eq v13, v5, :cond_27

    .line 1690
    invoke-virtual {v11, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementOrder(I)V

    .line 1691
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-virtual {v11, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveElementOrderToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1695
    :cond_27
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    const/4 v12, 0x0

    invoke-virtual {v2, v5, v12, v12}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 1698
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v12

    if-eqz v12, :cond_2b

    .line 1699
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_28
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_29

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1700
    invoke-interface {v5, v13}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_28

    const/4 v12, 0x1

    goto :goto_15

    :cond_29
    const/4 v12, 0x0

    :goto_15
    if-nez v12, :cond_2a

    .line 1705
    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v13

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v25

    move/from16 v26, v9

    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-le v13, v9, :cond_2c

    goto :goto_16

    :cond_2a
    move/from16 v26, v9

    goto :goto_17

    :cond_2b
    move/from16 v26, v9

    :goto_16
    const/4 v12, 0x1

    :cond_2c
    :goto_17
    if-eqz v12, :cond_2e

    .line 1712
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setGroups(Ljava/util/ArrayList;)V

    .line 1713
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveGroupsToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_18

    :cond_2d
    move/from16 v26, v9

    .line 1716
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_2e

    const/4 v9, 0x0

    .line 1717
    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setGroups(Ljava/util/ArrayList;)V

    .line 1718
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveGroupsToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1723
    :cond_2e
    :goto_18
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v12

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeStartIndex()D

    move-result-wide v28

    cmpl-double v9, v12, v28

    if-eqz v9, :cond_2f

    .line 1724
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeStartIndex(D)V

    .line 1725
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1729
    :cond_2f
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v12

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeEndIndex()D

    move-result-wide v28

    cmpl-double v9, v12, v28

    if-eqz v9, :cond_30

    .line 1730
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v12

    invoke-virtual {v11, v12, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeEndIndex(D)V

    .line 1731
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1735
    :cond_30
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    if-eqz v9, :cond_32

    .line 1736
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    if-eqz v9, :cond_31

    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v9

    if-nez v9, :cond_33

    .line 1737
    :cond_31
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1738
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_19

    .line 1741
    :cond_32
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    if-eqz v9, :cond_33

    const/4 v9, 0x0

    .line 1742
    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1743
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1748
    :cond_33
    :goto_19
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    .line 1749
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->eraseWhole()Z

    move-result v12

    if-eq v9, v12, :cond_34

    .line 1750
    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setEraseWhole(Z)V

    .line 1751
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveEraseWholeToModel(Lcom/metamoji/df/model/IModel;)V

    .line 1755
    :cond_34
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_35

    goto :goto_1a

    .line 1760
    :cond_35
    invoke-virtual {v1, v14}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    if-eqz v5, :cond_36

    .line 1764
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1768
    :cond_36
    invoke-virtual {v10, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v5

    if-eqz v5, :cond_37

    .line 1770
    invoke-virtual {v5, v14}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1773
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v9, v11, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1777
    :cond_37
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removedElementIds:Ljava/util/HashSet;

    if-eqz v5, :cond_38

    .line 1778
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1782
    :cond_38
    invoke-virtual {v14}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    const/4 v12, 0x1

    .line 1785
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 1786
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    :goto_1a
    move/from16 v12, v26

    :goto_1b
    add-int/lit8 v11, v16, 0x1

    move-object/from16 v9, v17

    move-object/from16 v5, v24

    goto/16 :goto_14

    :cond_39
    move-object/from16 v24, v5

    move-object/from16 v17, v9

    .line 1790
    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3b

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1791
    invoke-virtual {v4, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    if-eqz v11, :cond_3a

    .line 1793
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    goto :goto_1c

    :cond_3a
    const/4 v11, 0x6

    .line 1795
    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v11, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1c

    :cond_3b
    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 1801
    :goto_1d
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_44

    .line 1803
    invoke-interface {v8, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 1804
    invoke-virtual {v1, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v11

    check-cast v11, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v11, :cond_3c

    const/4 v9, 0x7

    const/4 v11, 0x0

    .line 1806
    invoke-static {v9, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_20

    .line 1811
    :cond_3c
    new-instance v12, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    invoke-direct {v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;-><init>()V

    .line 1812
    invoke-virtual {v12, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setExecutionType(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;)V

    .line 1813
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1814
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementModel(Lcom/metamoji/df/model/IModel;)V

    .line 1815
    invoke-virtual {v12, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementOrder(I)V

    .line 1816
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    const/4 v13, 0x0

    invoke-virtual {v2, v9, v13, v13}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v9

    if-eqz v9, :cond_3d

    .line 1817
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v14

    if-lez v14, :cond_3d

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v9}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1e

    :cond_3d
    const/4 v14, 0x0

    :goto_1e
    invoke-virtual {v12, v14}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setGroups(Ljava/util/ArrayList;)V

    .line 1818
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeStartIndex(D)V

    .line 1819
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v13

    invoke-virtual {v12, v13, v14}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeEndIndex(D)V

    .line 1820
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1821
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v12, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setEraseWhole(Z)V

    .line 1824
    const-string v9, "i"

    iget-object v13, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v9, v13}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setModel(Lcom/metamoji/df/model/IModel;)V

    .line 1825
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v12, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    if-eqz v5, :cond_3e

    .line 1827
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-static {v9, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->insertChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1f

    .line 1829
    :cond_3e
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v5, v9}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    .line 1831
    :goto_1f
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    .line 1834
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3f

    goto :goto_20

    .line 1839
    :cond_3f
    invoke-virtual {v1, v11}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1842
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_40

    .line 1843
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1847
    :cond_40
    invoke-virtual {v10, v11}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v9

    if-eqz v9, :cond_41

    .line 1849
    invoke-virtual {v9, v11}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1852
    iget-object v12, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v13

    invoke-virtual {v12, v13, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1856
    :cond_41
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removedElementIds:Ljava/util/HashSet;

    if-eqz v9, :cond_42

    .line 1857
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v12

    invoke-virtual {v9, v12}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1861
    :cond_42
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    const/4 v12, 0x1

    .line 1864
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 1865
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    :goto_20
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_43
    move-object/from16 v17, v9

    .line 1871
    :cond_44
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_21
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_63

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-object/from16 v6, v27

    .line 1873
    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    if-nez v5, :cond_45

    const/16 v5, 0x8

    .line 1875
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_22
    move-object/from16 v27, v6

    goto :goto_21

    .line 1880
    :cond_45
    invoke-direct {v0, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->checkWhetherExecuteInternal(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;)Z

    move-result v7

    if-nez v7, :cond_46

    goto :goto_22

    .line 1885
    :cond_46
    invoke-virtual {v15, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v7, :cond_5e

    .line 1888
    invoke-virtual {v1, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v8, :cond_47

    const/16 v4, 0x9

    .line 1890
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_22

    .line 1899
    :cond_47
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementOrder()I

    move-result v9

    if-ltz v9, :cond_49

    .line 1900
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementOrder()I

    move-result v9

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v11

    if-ge v9, v11, :cond_48

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementOrder()I

    move-result v9

    goto :goto_23

    :cond_48
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->lastElementOrder()I

    move-result v9

    goto :goto_23

    .line 1902
    :cond_49
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->lastElementOrder()I

    move-result v9

    .line 1904
    :goto_23
    invoke-virtual {v1, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v11

    if-eq v11, v8, :cond_4a

    .line 1905
    invoke-virtual {v1, v8, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->changeOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    const/4 v11, 0x1

    goto :goto_24

    :cond_4a
    const/4 v11, 0x0

    .line 1912
    :goto_24
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementModel()Lcom/metamoji/df/model/IModel;

    move-result-object v12

    invoke-static {v12}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->getTransformFromModel(Lcom/metamoji/df/model/IModel;)Landroid/graphics/Matrix;

    move-result-object v12

    .line 1913
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementModel()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkAngleInDegreesFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v13

    .line 1914
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementModel()Lcom/metamoji/df/model/IModel;

    move-result-object v14

    move-object/from16 v16, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v14, v3}, Lcom/metamoji/un/draw2/module/element/DrElement;->checkContentScaleFromModel(Lcom/metamoji/df/model/IModel;F)F

    move-result v14

    .line 1918
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    move-object/from16 v22, v5

    const/4 v5, 0x5

    invoke-static {v12, v3, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/Matrix;Landroid/graphics/Matrix;I)Z

    move-result v3

    if-nez v3, :cond_4b

    :goto_25
    const/4 v3, 0x1

    goto :goto_26

    .line 1921
    :cond_4b
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v3

    invoke-static {v13, v3, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-nez v3, :cond_4c

    goto :goto_25

    .line 1924
    :cond_4c
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result v3

    invoke-static {v14, v3, v5}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v3

    if-nez v3, :cond_4d

    goto :goto_25

    :cond_4d
    const/4 v3, 0x0

    .line 1931
    :goto_26
    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementModel()Lcom/metamoji/df/model/IModel;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->getPenStyleModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_54

    move/from16 v21, v3

    move-object/from16 v3, v17

    .line 1937
    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v4, :cond_51

    move-object/from16 v17, v3

    .line 1942
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v3

    if-eq v4, v3, :cond_50

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v3

    if-eqz v3, :cond_4e

    goto :goto_27

    .line 1950
    :cond_4e
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v3, :cond_4f

    const/4 v4, 0x0

    .line 1952
    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_29

    :cond_4f
    const/4 v4, 0x0

    const/16 v5, 0xa

    .line 1954
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_29

    :cond_50
    :goto_27
    if-eqz v21, :cond_55

    .line 1944
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v4, v5, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v3

    goto :goto_29

    :cond_51
    move-object/from16 v17, v3

    .line 1959
    invoke-static {v5}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v3, :cond_53

    if-nez v21, :cond_52

    .line 1962
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v4

    if-eqz v4, :cond_52

    goto :goto_28

    :cond_52
    const/4 v4, 0x0

    .line 1965
    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_29

    :cond_53
    const/4 v4, 0x0

    const/16 v5, 0xb

    .line 1968
    invoke-static {v5, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_29

    :cond_54
    move/from16 v21, v3

    const/16 v3, 0xc

    .line 1972
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_55
    :goto_28
    const/4 v3, 0x0

    :goto_29
    if-eqz v21, :cond_56

    .line 1977
    invoke-direct {v0, v8, v12, v13, v14}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->updateVariationOfElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Landroid/graphics/Matrix;FF)V

    const/4 v5, 0x1

    goto :goto_2a

    :cond_56
    move v5, v11

    :goto_2a
    if-eqz v3, :cond_5a

    .line 1985
    invoke-static {v8, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->changePenStyleOfStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    move-result-object v3

    if-eq v3, v8, :cond_59

    .line 1990
    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1991
    invoke-virtual {v1, v3, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 1994
    invoke-virtual {v10, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v4

    if-eqz v4, :cond_58

    .line 1996
    invoke-virtual {v4, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result v5

    if-ltz v5, :cond_57

    .line 1998
    invoke-virtual {v4, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElementAtOrder(I)Z

    .line 1999
    invoke-virtual {v4, v3, v5}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    goto :goto_2b

    :cond_57
    const/16 v5, 0xd

    const/4 v9, 0x0

    .line 2001
    invoke-static {v5, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 2002
    invoke-virtual {v4, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Z

    .line 2005
    :goto_2b
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v3, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2009
    :cond_58
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    :cond_59
    const/4 v5, 0x1

    .line 2017
    :cond_5a
    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_5c

    .line 2018
    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_5b
    :goto_2c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2019
    invoke-virtual {v2, v7, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->checkMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v8

    if-nez v8, :cond_5b

    .line 2020
    invoke-virtual {v2, v7, v4}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    const/4 v5, 0x1

    goto :goto_2c

    :cond_5c
    if-eqz v5, :cond_5d

    const/4 v12, 0x1

    .line 2030
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 2031
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    :cond_5d
    const/4 v9, 0x0

    const/4 v12, 0x1

    goto :goto_2d

    :cond_5e
    move-object/from16 v16, v3

    move-object/from16 v22, v5

    .line 2035
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-eqz v3, :cond_5f

    const/16 v3, 0xe

    .line 2036
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_2d
    move-object/from16 v27, v6

    move-object/from16 v3, v16

    goto/16 :goto_21

    .line 2041
    :cond_5f
    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementModel()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    const/4 v9, 0x0

    invoke-static {v3, v5, v9}, Lcom/metamoji/un/draw2/module/element/DrElement;->restoreElementFromModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v3

    if-nez v3, :cond_60

    const/16 v3, 0xf

    .line 2043
    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2d

    .line 2048
    :cond_60
    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementOrder()I

    move-result v5

    invoke-virtual {v1, v3, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    .line 2051
    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 2052
    invoke-virtual/range {v22 .. v22}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->groups()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_61

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 2053
    invoke-virtual {v2, v4, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_2e

    .line 2058
    :cond_61
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addedElementIds:Ljava/util/HashSet;

    if-eqz v3, :cond_62

    .line 2059
    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_62
    const/4 v12, 0x1

    .line 2063
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 2064
    invoke-virtual {v0, v12}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    goto :goto_2d

    :cond_63
    return-void
.end method

.method private checkWhetherExecuteInternal(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;)Z
    .locals 10

    .line 2081
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2087
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-nez v2, :cond_1

    .line 2089
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    .line 2093
    :cond_1
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_executeFlagMap:Ljava/util/HashMap;

    if-eqz v3, :cond_2

    .line 2094
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    .line 2096
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    .line 2107
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v3

    .line 2108
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->bySelf()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_6

    invoke-virtual {v3, v0}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2110
    sget-object p1, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v3, v2, p1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    const/4 v4, 0x0

    if-eqz p1, :cond_5

    .line 2115
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-gez v6, :cond_3

    move v1, v4

    goto :goto_0

    .line 2120
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v8

    cmp-long p1, v6, v8

    if-lez p1, :cond_4

    .line 2121
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_4
    move v4, v1

    :cond_5
    :goto_0
    move p1, v1

    move v1, v4

    goto :goto_1

    .line 2131
    :cond_6
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v3, v0, v4, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 2134
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v3, p1, v0, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    move p1, v1

    :goto_1
    if-eqz v1, :cond_7

    .line 2142
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v3, v2, v0, v5}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 2148
    :cond_7
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_executeFlagMap:Ljava/util/HashMap;

    if-nez v0, :cond_8

    .line 2149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_executeFlagMap:Ljava/util/HashMap;

    .line 2151
    :cond_8
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_executeFlagMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return p1
.end method

.method private erase()V
    .locals 37

    move-object/from16 v0, p0

    .line 960
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v1

    .line 961
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v3

    .line 962
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->groupManager()Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;

    move-result-object v2

    .line 963
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v9

    .line 964
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v10

    .line 967
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v4

    sget-object v5, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REGISTER:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-ne v4, v5, :cond_0

    move v13, v12

    goto :goto_0

    :cond_0
    move v13, v11

    .line 970
    :goto_0
    new-instance v14, Ljava/util/HashSet;

    invoke-direct {v14}, Ljava/util/HashSet;-><init>()V

    .line 973
    new-instance v15, Lcom/metamoji/un/draw2/module/element/DrEraseContext;

    invoke-direct {v15}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;-><init>()V

    .line 976
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 979
    iget-object v5, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_12

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    .line 981
    invoke-direct {v0, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->checkWhetherExecuteInternal(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_1

    .line 987
    :cond_1
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 989
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v1, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 991
    new-array v7, v12, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    move-object/from16 v22, v4

    move-object/from16 v23, v5

    goto :goto_2

    :cond_2
    move-object v7, v4

    move-object v8, v5

    .line 994
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeStartIndex()D

    move-result-wide v4

    move-object/from16 v17, v6

    move-object/from16 v16, v7

    .line 995
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeEndIndex()D

    move-result-wide v6

    move-object/from16 v18, v8

    .line 996
    invoke-virtual/range {v18 .. v18}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    move-object/from16 v22, v16

    move-object/from16 v23, v18

    .line 994
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsIntersectingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    :cond_3
    move-object/from16 v22, v4

    move-object/from16 v23, v5

    .line 1000
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1002
    new-array v4, v12, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    goto :goto_2

    .line 1005
    :cond_4
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v7

    :goto_2
    if-eqz v7, :cond_11

    .line 1010
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_a

    .line 1015
    :cond_5
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1017
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v6, :cond_6

    const/4 v7, 0x0

    .line 1019
    invoke-static {v11, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_3

    :cond_6
    move v8, v11

    move/from16 v16, v8

    :goto_4
    const/4 v7, 0x0

    .line 1025
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->eraseIntervals()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v11

    if-ge v8, v11, :cond_e

    .line 1026
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->eraseIntervals()Ljava/util/List;

    move-result-object v11

    add-int/lit8 v7, v8, 0x1

    invoke-interface {v11, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Number;

    invoke-virtual {v11}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v17

    .line 1027
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->eraseIntervals()Ljava/util/List;

    move-result-object v11

    add-int/lit8 v8, v8, 0x2

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v19

    .line 1028
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v24

    cmpg-double v7, v17, v24

    if-gtz v7, :cond_b

    .line 1029
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v24

    cmpl-double v7, v17, v24

    if-nez v7, :cond_8

    .line 1030
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v24

    cmpg-double v7, v19, v24

    if-gez v7, :cond_7

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-object/from16 v20, v5

    .line 1031
    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_5

    :cond_7
    move-object/from16 v20, v5

    move-wide/from16 v16, v17

    .line 1033
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v18

    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :goto_5
    move/from16 v16, v12

    move-object/from16 v5, v20

    goto :goto_8

    :cond_8
    move-wide/from16 v18, v19

    move-object/from16 v20, v5

    .line 1037
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v24

    cmpl-double v5, v18, v24

    if-ltz v5, :cond_a

    .line 1038
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v16

    cmpg-double v5, v18, v16

    if-gez v5, :cond_9

    .line 1039
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v16

    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_5

    .line 1041
    :cond_9
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v16

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v18

    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_5

    :cond_a
    move/from16 v11, v16

    goto :goto_7

    :cond_b
    move/from16 v11, v16

    move-wide/from16 v16, v17

    move-wide/from16 v18, v19

    move-object/from16 v20, v5

    .line 1046
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v24

    cmpg-double v5, v16, v24

    if-gtz v5, :cond_d

    .line 1047
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v24

    cmpg-double v5, v18, v24

    if-gez v5, :cond_c

    .line 1048
    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_6

    .line 1050
    :cond_c
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v18

    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->addEraseInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :goto_6
    move-object/from16 v5, v20

    move/from16 v16, v12

    goto :goto_8

    :cond_d
    :goto_7
    move-object/from16 v5, v20

    move/from16 v16, v11

    :goto_8
    const/4 v11, 0x0

    goto/16 :goto_4

    :cond_e
    move/from16 v11, v16

    if-eqz v11, :cond_10

    .line 1058
    invoke-virtual {v14, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object/from16 v7, v22

    .line 1061
    invoke-virtual {v7, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-nez v6, :cond_f

    .line 1063
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    invoke-virtual {v7, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1066
    :cond_f
    invoke-virtual/range {v23 .. v23}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_10
    move-object/from16 v7, v22

    :goto_9
    move-object/from16 v22, v7

    const/4 v11, 0x0

    goto/16 :goto_3

    :cond_11
    :goto_a
    move-object/from16 v4, v22

    goto/16 :goto_1

    :cond_12
    move-object v7, v4

    .line 1072
    invoke-virtual {v14}, Ljava/util/HashSet;->size()I

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_26

    .line 1077
    :cond_13
    invoke-virtual {v1, v12, v14}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getSortedElementOrdersByAscending(ZLjava/util/Set;)Ljava/util/List;

    move-result-object v3

    .line 1083
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    .line 1085
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    add-int v6, v5, v4

    .line 1091
    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v8

    check-cast v8, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v8, :cond_14

    const/4 v11, 0x0

    .line 1093
    invoke-static {v12, v11}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v22, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v10

    move-object v7, v11

    move/from16 v21, v13

    move-object/from16 v23, v15

    move-object v10, v2

    move v2, v12

    goto/16 :goto_24

    .line 1098
    :cond_14
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    if-eqz v11, :cond_3e

    .line 1099
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-nez v14, :cond_15

    goto/16 :goto_23

    .line 1105
    :cond_15
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v16

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v17

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v19

    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/module/element/DrEraseContext;->getComplementsOfStroke(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)Ljava/util/List;

    move-result-object v14

    .line 1108
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v12

    move-object/from16 v17, v3

    const/4 v3, 0x0

    invoke-virtual {v2, v12, v3, v3}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->getGroupsContainingMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;ZZ)Ljava/util/HashSet;

    move-result-object v12

    if-eqz v12, :cond_16

    .line 1110
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v12}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_c

    :cond_16
    const/4 v3, 0x0

    .line 1119
    :goto_c
    invoke-virtual {v10, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v12

    if-eqz v12, :cond_17

    .line 1124
    invoke-virtual {v12, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result v18

    if-gez v18, :cond_18

    .line 1126
    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->elementCount()I

    move-result v18

    goto :goto_d

    :cond_17
    const/16 v18, -0x1

    :cond_18
    :goto_d
    move/from16 v19, v4

    .line 1138
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_divisionIdsMap:Ljava/util/HashMap;

    if-eqz v4, :cond_19

    .line 1139
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto :goto_e

    :cond_19
    const/4 v4, 0x0

    :goto_e
    move-object/from16 v22, v7

    move-object/from16 v20, v11

    move/from16 v21, v13

    move-object/from16 v23, v15

    move/from16 v7, v18

    const/4 v13, 0x1

    move v11, v6

    move-object/from16 v18, v10

    const/4 v10, 0x0

    .line 1143
    :goto_f
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    if-ge v10, v15, :cond_36

    add-int/lit8 v15, v10, 0x1

    .line 1145
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Number;

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v3

    add-int/lit8 v10, v10, 0x2

    .line 1146
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Number;

    move-object/from16 v24, v14

    invoke-virtual {v15}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    cmpl-double v27, v3, v14

    if-nez v27, :cond_1a

    move-object/from16 v33, v2

    move/from16 v28, v5

    move-object/from16 v32, v9

    move/from16 v30, v10

    move/from16 v27, v11

    move/from16 v29, v13

    goto/16 :goto_1b

    .line 1153
    :cond_1a
    sget-object v27, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIdentity:Landroid/graphics/Matrix;

    .line 1156
    invoke-static/range {v20 .. v20}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->reversedList(Ljava/util/List;)Ljava/lang/Iterable;

    move-result-object v28

    invoke-interface/range {v28 .. v28}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v28

    :goto_10
    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->hasNext()Z

    move-result v29

    move/from16 v30, v10

    if-eqz v29, :cond_22

    invoke-interface/range {v28 .. v28}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v29

    move-object/from16 v10, v29

    check-cast v10, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move/from16 v29, v13

    .line 1157
    iget-object v13, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    if-nez v10, :cond_1b

    const/4 v10, 0x3

    const/4 v13, 0x0

    .line 1159
    invoke-static {v10, v13}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto/16 :goto_13

    .line 1164
    :cond_1b
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeEndIndex()D

    move-result-wide v32

    cmpl-double v13, v3, v32

    if-gtz v13, :cond_21

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->strokeStartIndex()D

    move-result-wide v32

    cmpg-double v13, v14, v32

    if-gez v13, :cond_1c

    goto/16 :goto_13

    .line 1169
    :cond_1c
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v13

    if-nez v13, :cond_1f

    .line 1173
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->penStyleModel()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    if-eqz v13, :cond_1e

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->penStyleModel()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v13

    if-eqz v13, :cond_1e

    .line 1175
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->penStyleModel()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-nez v13, :cond_1d

    .line 1179
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->penStyleModel()Lcom/metamoji/df/model/IModel;

    move-result-object v13

    invoke-static {v13}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v13

    check-cast v13, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v13, :cond_1d

    move-object/from16 v32, v9

    const/4 v9, 0x0

    .line 1181
    invoke-virtual {v13, v9}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_11

    :cond_1d
    move-object/from16 v32, v9

    const/4 v9, 0x0

    .line 1186
    :goto_11
    invoke-virtual {v10, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    if-nez v13, :cond_20

    const/4 v13, 0x4

    .line 1190
    invoke-static {v13, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1191
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v13

    goto :goto_12

    :cond_1e
    move-object/from16 v32, v9

    const/4 v9, 0x0

    const/4 v13, 0x5

    .line 1195
    invoke-static {v13, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1196
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v9

    move-object v13, v9

    goto :goto_12

    :cond_1f
    move-object/from16 v32, v9

    .line 1201
    :cond_20
    :goto_12
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->transform()Landroid/graphics/Matrix;

    move-result-object v27

    .line 1202
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->angleInDegrees()F

    move-result v9

    .line 1203
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->contentScale()F

    move-result v10

    move-object/from16 v36, v27

    move-object/from16 v27, v13

    move-object/from16 v13, v36

    goto :goto_14

    :cond_21
    :goto_13
    move/from16 v13, v29

    move/from16 v10, v30

    goto/16 :goto_10

    :cond_22
    move-object/from16 v32, v9

    move/from16 v29, v13

    const/4 v9, 0x0

    move-object/from16 v13, v27

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v27, 0x0

    :goto_14
    if-nez v27, :cond_23

    move/from16 v28, v5

    const/4 v5, 0x6

    move-object/from16 v33, v2

    const/4 v2, 0x0

    .line 1208
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 1209
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v2

    goto :goto_15

    :cond_23
    move-object/from16 v33, v2

    move/from16 v28, v5

    move-object/from16 v2, v27

    .line 1214
    :goto_15
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v5

    move/from16 v27, v11

    const/4 v11, 0x5

    invoke-static {v13, v5, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(Landroid/graphics/Matrix;Landroid/graphics/Matrix;I)Z

    move-result v5

    if-nez v5, :cond_24

    :goto_16
    const/4 v5, 0x1

    goto :goto_17

    .line 1217
    :cond_24
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v5

    invoke-static {v9, v5, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v5

    if-nez v5, :cond_25

    goto :goto_16

    .line 1220
    :cond_25
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result v5

    invoke-static {v10, v5, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v5

    if-nez v5, :cond_26

    goto :goto_16

    :cond_26
    const/4 v5, 0x0

    :goto_17
    if-eqz v5, :cond_27

    .line 1228
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v11

    move/from16 v31, v5

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-virtual {v2, v5, v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithScale(FLcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v2

    goto :goto_18

    :cond_27
    move/from16 v31, v5

    :goto_18
    if-nez v31, :cond_29

    .line 1232
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v5

    if-eq v2, v5, :cond_28

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v5

    if-nez v5, :cond_28

    goto :goto_19

    :cond_28
    const/4 v5, 0x0

    goto :goto_1a

    :cond_29
    :goto_19
    const/4 v5, 0x1

    :goto_1a
    if-nez v21, :cond_2e

    .line 1235
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v34

    cmpl-double v11, v3, v34

    if-nez v11, :cond_2e

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v34

    cmpl-double v11, v14, v34

    if-nez v11, :cond_2e

    if-nez v5, :cond_2a

    if-nez v31, :cond_2a

    move-object/from16 v9, v25

    move-object/from16 v5, v26

    move-object/from16 v10, v33

    const/4 v2, 0x0

    const/4 v3, 0x0

    goto/16 :goto_20

    :cond_2a
    if-eqz v31, :cond_2b

    .line 1255
    invoke-direct {v0, v8, v13, v9, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->updateVariationOfElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Landroid/graphics/Matrix;FF)V

    :cond_2b
    if-eqz v5, :cond_2d

    .line 1260
    invoke-static {v8, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->changePenStyleOfStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    move-result-object v2

    if-eq v2, v8, :cond_2d

    .line 1265
    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1266
    invoke-virtual {v1, v2, v6}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    if-eqz v12, :cond_2c

    .line 1270
    invoke-virtual {v12, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1271
    invoke-virtual {v12, v2, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    .line 1275
    :cond_2c
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    move-object v8, v2

    :cond_2d
    const/4 v2, 0x1

    .line 1283
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 1284
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    move-object/from16 v9, v25

    move-object/from16 v5, v26

    move-object/from16 v10, v33

    const/4 v2, 0x0

    goto/16 :goto_1f

    .line 1290
    :cond_2e
    invoke-virtual {v8, v3, v4, v14, v15}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->createSubStrokeWithIndices(DD)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    move-result-object v3

    if-nez v3, :cond_2f

    .line 1292
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x7

    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_1b
    move-object/from16 v14, v24

    move-object/from16 v3, v25

    move-object/from16 v4, v26

    move/from16 v11, v27

    move/from16 v5, v28

    move/from16 v13, v29

    move/from16 v10, v30

    move-object/from16 v9, v32

    move-object/from16 v2, v33

    goto/16 :goto_f

    :cond_2f
    if-eqz v31, :cond_30

    .line 1298
    invoke-direct {v0, v3, v13, v9, v10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->updateVariationOfElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Landroid/graphics/Matrix;FF)V

    :cond_30
    if-eqz v5, :cond_31

    .line 1303
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->changePenStyleOfStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    move-result-object v3

    :cond_31
    move/from16 v2, v27

    .line 1307
    invoke-virtual {v1, v3, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    if-eqz v25, :cond_32

    .line 1311
    invoke-virtual/range {v25 .. v25}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_32

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 1312
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    move-object/from16 v10, v33

    invoke-virtual {v10, v9, v5}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->addMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_1c

    :cond_32
    move-object/from16 v10, v33

    .line 1317
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_divisionIdsMap:Ljava/util/HashMap;

    if-eqz v4, :cond_33

    .line 1318
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    move-object/from16 v5, v26

    invoke-virtual {v5, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    :cond_33
    move-object/from16 v5, v26

    :goto_1d
    if-eqz v21, :cond_34

    .line 1324
    new-instance v4, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    invoke-direct {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;-><init>()V

    .line 1325
    sget-object v9, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-virtual {v4, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setExecutionType(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;)V

    .line 1326
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1327
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v9

    invoke-virtual {v4, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementModel(Lcom/metamoji/df/model/IModel;)V

    .line 1328
    invoke-virtual {v4, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementOrder(I)V

    move-object/from16 v9, v25

    .line 1329
    invoke-virtual {v4, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setGroups(Ljava/util/ArrayList;)V

    .line 1330
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeStartIndex(D)V

    .line 1331
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v13

    invoke-virtual {v4, v13, v14}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeEndIndex(D)V

    .line 1332
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1333
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v13

    invoke-virtual {v11, v13, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1336
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v13, 0x0

    goto :goto_1e

    :cond_34
    move-object/from16 v9, v25

    move/from16 v13, v29

    :goto_1e
    if-eqz v12, :cond_35

    .line 1344
    invoke-virtual {v12, v3, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    add-int/lit8 v7, v7, 0x1

    :cond_35
    add-int/lit8 v11, v2, 0x1

    add-int/lit8 v19, v19, 0x1

    const/4 v2, 0x1

    .line 1357
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 1358
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    move-object v4, v5

    move-object v3, v9

    move-object v2, v10

    move-object/from16 v14, v24

    move/from16 v5, v28

    move/from16 v10, v30

    move-object/from16 v9, v32

    goto/16 :goto_f

    :cond_36
    move-object v10, v2

    move/from16 v28, v5

    move-object/from16 v32, v9

    move/from16 v29, v13

    move-object v9, v3

    move-object v5, v4

    const/4 v2, 0x1

    :goto_1f
    const/4 v3, 0x1

    :goto_20
    if-eqz v21, :cond_37

    .line 1364
    new-instance v4, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    invoke-direct {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;-><init>()V

    .line 1365
    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setExecutionType(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;)V

    .line 1366
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1367
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementModel(Lcom/metamoji/df/model/IModel;)V

    move/from16 v6, v28

    .line 1368
    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementOrder(I)V

    .line 1369
    invoke-virtual {v4, v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setGroups(Ljava/util/ArrayList;)V

    .line 1370
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeStartIndex(D)V

    .line 1371
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeEndIndex(D)V

    .line 1372
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    move/from16 v13, v29

    .line 1373
    invoke-virtual {v4, v13}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setEraseWhole(Z)V

    .line 1374
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v6, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1377
    iget-object v6, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_37
    move/from16 v13, v29

    :goto_21
    if-eqz v2, :cond_3c

    .line 1383
    invoke-virtual {v1, v8}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    add-int/lit8 v19, v19, -0x1

    if-eqz v9, :cond_38

    .line 1390
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/library/group/DrGrGroupManager;->removeMember(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_38
    if-eqz v12, :cond_39

    .line 1395
    invoke-virtual {v12, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 1399
    :cond_39
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_divisionIdsMap:Ljava/util/HashMap;

    if-eqz v2, :cond_3a

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v2

    if-lez v2, :cond_3a

    .line 1400
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_divisionIdsMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3a
    if-eqz v13, :cond_3b

    .line 1405
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removedElementIds:Ljava/util/HashSet;

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1409
    :cond_3b
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->destroy()V

    const/4 v2, 0x1

    .line 1412
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedModel(Z)V

    .line 1413
    invoke-virtual {v0, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->setModifiedCanvas(Z)V

    goto :goto_22

    :cond_3c
    const/4 v2, 0x1

    :goto_22
    move/from16 v4, v19

    if-eqz v3, :cond_3d

    if-eqz v12, :cond_3d

    .line 1418
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v3, v5, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    move v12, v2

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v10, v18

    goto :goto_25

    :cond_3e
    :goto_23
    move-object/from16 v17, v3

    move/from16 v19, v4

    move-object/from16 v22, v7

    move-object/from16 v32, v9

    move-object/from16 v18, v10

    move/from16 v21, v13

    move-object/from16 v23, v15

    move-object v10, v2

    move v2, v12

    const/4 v3, 0x2

    const/4 v7, 0x0

    .line 1100
    invoke-static {v3, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_24
    move v12, v2

    move-object v2, v10

    move-object/from16 v3, v17

    move-object/from16 v10, v18

    move/from16 v4, v19

    :goto_25
    move/from16 v13, v21

    move-object/from16 v7, v22

    move-object/from16 v15, v23

    move-object/from16 v9, v32

    goto/16 :goto_b

    :cond_3f
    :goto_26
    return-void
.end method

.method private updateVariationOfElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Landroid/graphics/Matrix;FF)V
    .locals 1

    .line 2071
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->inversion()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p2

    .line 2072
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v0

    sub-float/2addr p3, v0

    invoke-static {p3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p3

    .line 2073
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result v0

    div-float/2addr p4, v0

    .line 2076
    invoke-virtual {p1, p2, p3, p4}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->applyVariationWithTransform(Landroid/graphics/Matrix;FF)V

    return-void
.end method


# virtual methods
.method public addedElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addedElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 840
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 843
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 846
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 848
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_a

    .line 851
    invoke-static {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getBaseStrokeIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-nez v4, :cond_0

    .line 853
    invoke-static {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    :cond_0
    if-eqz v4, :cond_1

    .line 856
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 858
    :cond_1
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 862
    :goto_1
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    .line 865
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->destroy(Lcom/metamoji/df/model/IModel;)V

    .line 868
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    goto :goto_0

    .line 873
    :cond_2
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eq v1, v5, :cond_3

    if-eq v1, v4, :cond_3

    const/4 v6, 0x3

    if-eq v1, v6, :cond_3

    const/4 v6, 0x4

    if-eq v1, v6, :cond_4

    const/4 v6, 0x5

    if-eq v1, v6, :cond_4

    .line 883
    invoke-static {v5, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_3
    move v2, v5

    .line 888
    :cond_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_a

    .line 891
    invoke-static {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getBaseStrokeIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    if-nez v6, :cond_5

    .line 893
    invoke-static {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v6

    :cond_5
    if-eqz v6, :cond_6

    .line 896
    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 898
    :cond_6
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_3
    if-nez v2, :cond_9

    .line 903
    invoke-static {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getExecutionTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ordinal()I

    move-result v6

    const-string/jumbo v7, "t"

    if-eq v6, v5, :cond_8

    if-eq v6, v4, :cond_7

    goto :goto_4

    .line 910
    :cond_7
    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-static {v7, v6, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_4

    .line 906
    :cond_8
    sget-object v6, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-static {v7, v6, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 918
    :cond_9
    :goto_4
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    goto :goto_2

    .line 923
    :cond_a
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    .line 925
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_exclusionModels:Ljava/util/ArrayList;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_b

    .line 926
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_exclusionModels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 927
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    goto :goto_5

    .line 932
    :cond_b
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 933
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_6

    .line 937
    :cond_c
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 938
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_exclusionModels:Ljava/util/ArrayList;

    if-eqz p1, :cond_d

    .line 939
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 944
    :cond_d
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    .line 945
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v1

    .line 946
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 947
    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v1, v2, v3, p1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_7

    :cond_e
    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 746
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 749
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 750
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    .line 754
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_exclusionModels:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_exclusionModels:Ljava/util/ArrayList;

    .line 759
    :cond_1
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 761
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_a

    .line 763
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getExecutionTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ordinal()I

    move-result v0

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 767
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 772
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 777
    :cond_3
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    if-eq v0, v1, :cond_5

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    const/4 v4, 0x5

    if-eq v0, v4, :cond_4

    .line 787
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    move v0, v2

    .line 792
    :goto_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_a

    .line 794
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getExecutionTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ordinal()I

    move-result v4

    const-string/jumbo v5, "t"

    if-eq v4, v2, :cond_8

    if-eq v4, v1, :cond_6

    .line 816
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    .line 809
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 812
    :cond_7
    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ADD:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-static {v5, v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    goto :goto_4

    :cond_8
    if-nez v0, :cond_9

    .line 798
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getEraseWholeFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 802
    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-static {v5, v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 819
    :cond_9
    :goto_4
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_3

    .line 824
    :cond_a
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_d

    .line 825
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/df/model/IModel;

    .line 827
    iget-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    if-nez v1, :cond_c

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->getEraseWholeFromModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v1

    if-nez v1, :cond_b

    goto :goto_6

    .line 831
    :cond_b
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_exclusionModels:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 828
    :cond_c
    :goto_6
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    goto :goto_5

    :cond_d
    return-void
.end method

.method protected canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected destroy_()V
    .locals 2

    .line 706
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 707
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 708
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    .line 710
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    .line 711
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 712
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    if-eqz v0, :cond_2

    .line 715
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 716
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    .line 718
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_3

    .line 719
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 720
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    if-eqz v0, :cond_4

    .line 723
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 724
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    .line 726
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    if-eqz v0, :cond_5

    .line 727
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 728
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    .line 730
    :cond_5
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    if-eqz v0, :cond_6

    .line 731
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 732
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_internalModels:Ljava/util/ArrayList;

    .line 734
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_executeFlagMap:Ljava/util/HashMap;

    if-eqz v0, :cond_7

    .line 735
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 736
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_executeFlagMap:Ljava/util/HashMap;

    .line 738
    :cond_7
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_divisionIdsMap:Ljava/util/HashMap;

    .line 739
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addedElementIds:Ljava/util/HashSet;

    .line 740
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public divisionIdsMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_divisionIdsMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public eraseElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 453
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 454
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 458
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 461
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 462
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 465
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isErasable()Z

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x3

    .line 466
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_3
    if-eqz p2, :cond_5

    .line 469
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    .line 475
    :cond_4
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;-><init>()V

    .line 476
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setExecutionType(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;)V

    .line 477
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 478
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeStartIndex(D)V

    .line 479
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeEndIndex(D)V

    .line 480
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 481
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 482
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result p1

    invoke-virtual {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setVariationWithTransform(Landroid/graphics/Matrix;FF)V

    .line 483
    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setEraseIntervals(Ljava/util/List;)V

    .line 486
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_5
    :goto_0
    const/4 p1, 0x4

    .line 470
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public eraseElementWithId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Landroid/graphics/Matrix;FFLjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "DD",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;",
            "Landroid/graphics/Matrix;",
            "FF",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .line 498
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 499
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 503
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v0, p2, v2

    if-gez v0, :cond_2

    const/4 p1, 0x2

    .line 507
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    cmpg-double v0, p4, v2

    if-gez v0, :cond_3

    const/4 p1, 0x3

    .line 511
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_3
    if-nez p7, :cond_4

    const/4 p1, 0x4

    .line 515
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_4
    if-eqz p11, :cond_6

    .line 518
    invoke-interface {p11}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 524
    :cond_5
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;-><init>()V

    .line 525
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setExecutionType(Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;)V

    .line 526
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 527
    invoke-virtual {v0, p2, p3}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeStartIndex(D)V

    .line 528
    invoke-virtual {v0, p4, p5}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setStrokeEndIndex(D)V

    .line 529
    invoke-virtual {v0, p6}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 530
    invoke-virtual {v0, p7}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 531
    invoke-virtual {v0, p8, p9, p10}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setVariationWithTransform(Landroid/graphics/Matrix;FF)V

    .line 532
    invoke-virtual {v0, p11}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->setEraseIntervals(Ljava/util/List;)V

    .line 535
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-virtual {p1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_6
    :goto_0
    const/4 p1, 0x5

    .line 519
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method protected executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 5

    .line 589
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 590
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_2

    :cond_0
    return-object v1

    .line 593
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->erase()V

    goto :goto_0

    .line 595
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_4

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    return-object v1

    .line 598
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->addRemove()V

    .line 602
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_7

    .line 603
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    .line 604
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 605
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v4

    if-nez v4, :cond_5

    .line 606
    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_1

    .line 609
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 613
    :cond_7
    iget-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->isCollaborating()Z

    move-result v0

    if-nez v0, :cond_8

    .line 614
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_8
    if-eqz p1, :cond_9

    :goto_2
    return-object p0

    :cond_9
    return-object v1
.end method

.method protected hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init_()Z
    .locals 2

    const/4 v0, 0x1

    .line 561
    iput-boolean v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    .line 562
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    .line 563
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    .line 564
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    .line 565
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    .line 566
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    .line 567
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_selectionMap:Ljava/util/HashMap;

    return v0
.end method

.method public removedElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 553
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removedElementIds:Ljava/util/HashSet;

    return-object v0
.end method

.method protected restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 6

    .line 622
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 625
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_4

    .line 627
    new-instance v4, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    invoke-direct {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;-><init>()V

    .line 628
    invoke-virtual {v4, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    .line 629
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    if-nez v5, :cond_0

    .line 630
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 631
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 634
    :cond_0
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->executionType()Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrExecutionType;->ordinal()I

    move-result v1

    if-eqz v1, :cond_3

    if-eq v1, v3, :cond_2

    if-eq v1, v0, :cond_1

    .line 647
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 639
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 640
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 636
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 650
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 654
    :cond_4
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 655
    iput-boolean v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    .line 658
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr p1, v1

    if-lez p1, :cond_6

    .line 659
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 662
    :cond_5
    iput-boolean v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_doErase:Z

    :cond_6
    :goto_2
    return v3
.end method

.method protected saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 5

    .line 671
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addElementIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "i"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 672
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addInternalMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    .line 674
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 677
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 678
    invoke-virtual {v3, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 679
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 683
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeElementIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 684
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removeInternalMap:Ljava/util/HashMap;

    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    if-nez v4, :cond_2

    .line 686
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_1

    .line 689
    :cond_2
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 690
    invoke-virtual {v4, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 691
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 695
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_eraseInternalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;

    .line 696
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    .line 697
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection$DrEraseInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 698
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    :cond_4
    return v3
.end method

.method public setAddedElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 552
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_addedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public setDivisionIdsMap(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;>;)V"
        }
    .end annotation

    .line 544
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_divisionIdsMap:Ljava/util/HashMap;

    return-void
.end method

.method public setRemovedElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 554
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEraseDirection;->m_removedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 573
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method
