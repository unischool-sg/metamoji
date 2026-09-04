.class public Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
.super Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;
.source "DrStrokeElement.java"


# static fields
.field protected static final MODEL_PROPERTY_BASE_STROKE_ID:Ljava/lang/String; = "b"

.field protected static final MODEL_PROPERTY_END_INDEX:Ljava/lang/String; = "e"

.field protected static final MODEL_PROPERTY_PEN_STYLE:Ljava/lang/String; = "p"

.field protected static final MODEL_PROPERTY_START_INDEX:Ljava/lang/String; = "s"

.field protected static final MODEL_PROPERTY_STROKE_TYPE:Ljava/lang/String; = "t"


# instance fields
.field private m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_endIndex:D

.field private m_pathLengths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private m_pathTotalLengths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

.field private m_startIndex:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;-><init>()V

    return-void
.end method

.method public static changePenStyleOfStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 923
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v3

    :cond_0
    const/4 v4, 0x1

    if-nez v1, :cond_1

    .line 927
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v0

    .line 932
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ARROW:Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    if-ne v5, v6, :cond_2

    .line 933
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->newSimplePenStyleWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v5

    .line 934
    invoke-virtual {v1, v5}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->copyToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    .line 935
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->inkId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->setInkId(Ljava/lang/String;)V

    move-object v1, v5

    .line 942
    :cond_2
    sget-object v5, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->strokeType()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    if-eq v5, v8, :cond_5

    if-eq v5, v7, :cond_4

    if-eq v5, v6, :cond_3

    .line 956
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/DrModuleContext;->settings()Lcom/metamoji/un/draw2/module/DrModuleSettings;

    move-result-object v5

    iget v5, v5, Lcom/metamoji/un/draw2/module/DrModuleSettings;->reducerDelta:F

    .line 957
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->displayZoom()F

    move-result v9

    goto :goto_1

    .line 952
    :cond_3
    move-object v5, v0

    check-cast v5, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->reducerDelta()F

    move-result v9

    .line 953
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->reducerZoom()F

    move-result v5

    goto :goto_0

    .line 948
    :cond_4
    move-object v5, v0

    check-cast v5, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->reducerDelta()F

    move-result v9

    .line 949
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->reducerZoom()F

    move-result v5

    goto :goto_0

    .line 944
    :cond_5
    move-object v5, v0

    check-cast v5, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->reducerDelta()F

    move-result v9

    .line 945
    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->reducerZoom()F

    move-result v5

    :goto_0
    move/from16 v16, v9

    move v9, v5

    move/from16 v5, v16

    .line 962
    :goto_1
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v10

    .line 966
    sget-object v11, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v10

    aget v10, v11, v10

    if-eq v10, v4, :cond_9

    if-eq v10, v8, :cond_7

    if-eq v10, v7, :cond_6

    const/4 v2, 0x5

    .line 1016
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 1000
    :cond_6
    sget-object v10, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v4, :cond_8

    if-eq v10, v8, :cond_b

    if-eq v10, v7, :cond_c

    .line 1011
    invoke-static {v6, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    .line 984
    :cond_7
    sget-object v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v10

    aget v6, v6, v10

    if-eq v6, v4, :cond_8

    if-eq v6, v8, :cond_c

    if-eq v6, v7, :cond_a

    .line 995
    invoke-static {v7, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_2

    :cond_8
    move v2, v4

    goto :goto_3

    .line 968
    :cond_9
    sget-object v6, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$library$style$pen$DrStPenType:[I

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->penType()Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenType;->ordinal()I

    move-result v10

    aget v6, v6, v10

    if-eq v6, v4, :cond_c

    if-eq v6, v8, :cond_b

    if-eq v6, v7, :cond_a

    .line 979
    invoke-static {v8, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_2
    const/4 v2, -0x1

    goto :goto_3

    :cond_a
    move v2, v7

    goto :goto_3

    :cond_b
    move v2, v8

    :cond_c
    :goto_3
    if-eqz v2, :cond_10

    if-eq v2, v4, :cond_f

    if-eq v2, v8, :cond_e

    if-eq v2, v7, :cond_d

    const/4 v2, 0x6

    .line 1053
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_5

    .line 1046
    :cond_d
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->newFountainStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;

    move-result-object v2

    .line 1047
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setReducerDelta(F)V

    .line 1048
    invoke-virtual {v2, v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrFountainStrokeElement;->setReducerZoom(F)V

    goto :goto_4

    .line 1038
    :cond_e
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->newCalligraphicStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;

    move-result-object v2

    .line 1039
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setReducerDelta(F)V

    .line 1040
    invoke-virtual {v2, v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrCalligraphicStrokeElement;->setReducerZoom(F)V

    goto :goto_4

    .line 1030
    :cond_f
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-static {v2, v4, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->newReducedStrokeElementWithFamily(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/module/DrModuleContext;Lcom/metamoji/un/draw2/module/element/DrEditContext;)Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;

    move-result-object v2

    .line 1031
    invoke-virtual {v2, v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setReducerDelta(F)V

    .line 1032
    invoke-virtual {v2, v9}, Lcom/metamoji/un/draw2/module/element/stroke/DrReducedStrokeElement;->setReducerZoom(F)V

    :goto_4
    move-object v10, v2

    goto :goto_6

    .line 1025
    :cond_10
    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    :goto_5
    move-object v10, v3

    :goto_6
    if-eqz v10, :cond_12

    .line 1059
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 1060
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->information()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v2

    if-eqz v2, :cond_11

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->information()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->clone()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v3

    :cond_11
    invoke-virtual {v10, v3}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)V

    .line 1061
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateAngleInDegrees(F)V

    .line 1062
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateContentScale(F)V

    .line 1063
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isSelectable()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsSelectable(Z)V

    .line 1064
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isMovable()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsMovable(Z)V

    .line 1065
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isResizable()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsResizable(Z)V

    .line 1066
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isReversible()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsReversible(Z)V

    .line 1067
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isRotatable()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsRotatable(Z)V

    .line 1068
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isErasable()Z

    move-result v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsErasable(Z)V

    .line 1069
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateTransform(Landroid/graphics/Matrix;)V

    .line 1070
    invoke-virtual {v10, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 1071
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->points()Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->newPointArrayWithArray(Lcom/metamoji/cm/PointArray;)Lcom/metamoji/cm/PointArray;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setPoints(Lcom/metamoji/cm/PointArray;)V

    .line 1072
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v12

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v14

    invoke-virtual/range {v10 .. v15}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-object v10

    :cond_12
    return-object v0
.end method

.method public static checkStrokeElementModel(Lcom/metamoji/df/model/IModel;)Z
    .locals 1

    .line 850
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->checkPointsBaseElementModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->getTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object p0

    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static getBaseStrokeIdAndCheckIndexesFromModel(Lcom/metamoji/df/model/IModel;[D)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 5

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    .line 876
    aput-wide v1, p1, v0

    const/4 v3, 0x1

    .line 877
    aput-wide v1, p1, v3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 881
    :cond_0
    const-string/jumbo v4, "s"

    invoke-static {v4, v1, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v1

    aput-wide v1, p1, v0

    .line 882
    const-string v0, "e"

    aget-wide v1, p1, v3

    invoke-static {v0, v1, v2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    aput-wide v0, p1, v3

    .line 883
    const-string p1, "b"

    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method public static getPenStyleModelFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 1

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 870
    :cond_0
    const-string v0, "p"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method public static getStrokeTypeFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;
    .locals 2

    if-nez p0, :cond_0

    .line 861
    sget-object p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->NONE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    return-object p0

    .line 863
    :cond_0
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->NONE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    return-object p0
.end method

.method public static newEmptyStrokeElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;
    .locals 2

    .line 905
    invoke-static {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->newEmptyPointsBaseElementModelWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 907
    const-string v0, "T"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    invoke-static {v0, v1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-object p0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 909
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object p0
.end method

.method public static removeBaseStrokeIdAndIndexesFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    .line 894
    :cond_0
    const-string/jumbo v0, "s"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 895
    const-string v0, "e"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 896
    const-string v0, "b"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static saveIndexesToModel(Lcom/metamoji/df/model/IModel;DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 4

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    .line 1097
    const-string/jumbo v3, "s"

    if-eqz v2, :cond_1

    .line 1098
    invoke-static {v3, p1, p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 1100
    :cond_1
    invoke-static {v3, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :goto_0
    cmpl-double p1, p3, v0

    .line 1102
    const-string p2, "e"

    if-eqz p1, :cond_2

    .line 1103
    invoke-static {p2, p3, p4, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 1105
    :cond_2
    invoke-static {p2, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 1107
    :goto_1
    const-string p1, "b"

    if-eqz p5, :cond_3

    .line 1108
    invoke-static {p1, p5, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1110
    :cond_3
    invoke-static {p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private static savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1086
    :cond_0
    const-string v0, "p"

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1087
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {v0, p1, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1089
    :cond_1
    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method


# virtual methods
.method protected activate_()V
    .locals 8

    .line 760
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->activate_()V

    .line 763
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v0, :cond_2

    .line 765
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->checkStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 766
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleEqualsToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 767
    instance-of v1, v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 769
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 772
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 775
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-object v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 780
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    .line 785
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->useStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 788
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 790
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement$1;->$SwitchMap$com$metamoji$un$draw2$module$element$stroke$DrStrokeType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->strokeType_()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_5

    const/4 v3, 0x2

    if-eq v0, v3, :cond_5

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    const/4 v3, 0x4

    if-eq v0, v3, :cond_3

    .line 802
    invoke-static {v2, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 799
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultFountainPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStFountainPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    goto :goto_0

    .line 796
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultCalligraphicPenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStCalligraphicPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    goto :goto_0

    .line 793
    :cond_5
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->defaultSimplePenStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStSimplePenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 808
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 809
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    iget-wide v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    iget-wide v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    iget-object v7, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual/range {v1 .. v7}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->addInterval(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_6
    return-void
.end method

.method protected applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected applyPoints_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 0

    .line 840
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->applyVariationWithTransform_(Landroid/graphics/Matrix;FF)Z

    move-result p1

    return p1
.end method

.method public baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 2

    .line 100
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 101
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method protected bounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    .line 582
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->bounds_()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    return-object v0
.end method

.method checkEraseIntervalsBySegment(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;)V
    .locals 9

    .line 189
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 193
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isErasable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 194
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 p1, 0x2

    .line 198
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    move v8, v1

    .line 201
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->coverCount()I

    move-result v0

    if-ge v8, v0, :cond_3

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move v6, p3

    move-object v7, p4

    .line 202
    invoke-virtual/range {v3 .. v8}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkEraseIntervalsBySegmentWithPoints_(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public checkEraseIntervalsBySegmentWithPoints(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V
    .locals 8

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 215
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isErasable()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 219
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    if-nez p4, :cond_2

    const/4 p1, 0x2

    .line 223
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 226
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->coverCount()I

    move-result v0

    if-lt p5, v0, :cond_3

    const/4 p1, 0x3

    .line 227
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_3
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    .line 230
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkEraseIntervalsBySegmentWithPoints_(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V

    return-void
.end method

.method protected checkEraseIntervalsBySegmentWithPoints_(Landroid/graphics/PointF;Landroid/graphics/PointF;FLcom/metamoji/un/draw2/module/element/DrEraseContext;I)V
    .locals 0

    return-void
.end method

.method protected checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected coverAtIndex_(I)Lcom/metamoji/cm/RectEx;
    .locals 0

    .line 607
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->coverAtIndex_(I)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    return-object p1
.end method

.method protected coverCount_()I
    .locals 1

    .line 602
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->coverCount_()I

    move-result v0

    return v0
.end method

.method public createSubStrokeWithIndices(DD)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
    .locals 8

    .line 241
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 242
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 245
    :cond_0
    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    cmpg-double v0, p1, v2

    if-ltz v0, :cond_5

    iget-wide v2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    cmpl-double v0, p3, v2

    if-gtz v0, :cond_5

    cmpg-double v0, p3, p1

    if-gtz v0, :cond_1

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->createSubStrokeWithIndices_(DD)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 p1, 0x2

    .line 253
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 258
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->angleInDegrees()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateAngleInDegrees(F)V

    .line 259
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->contentScale()F

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateContentScale(F)V

    .line 260
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isSelectable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsSelectable(Z)V

    .line 261
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isMovable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsMovable(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isResizable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsResizable(Z)V

    .line 263
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isReversible()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsReversible(Z)V

    .line 264
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isRotatable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsRotatable(Z)V

    .line 265
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isErasable()Z

    move-result v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateIsErasable(Z)V

    .line 266
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->information()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->information()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;->clone()Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;

    move-result-object v1

    :cond_3
    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setInformation(Lcom/metamoji/un/draw2/library/utility/information/DrUtInformation;)V

    .line 269
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateTransform(Landroid/graphics/Matrix;)V

    .line 272
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v3, :cond_4

    move-wide v4, p1

    move-wide v6, p3

    .line 273
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-object v2

    :cond_4
    move-wide v4, p1

    move-wide v6, p3

    .line 275
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V

    return-object v2

    :cond_5
    :goto_0
    const/4 p1, 0x1

    .line 246
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1
.end method

.method protected createSubStrokeWithIndices_(DD)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method protected deactivate_()V
    .locals 2

    .line 816
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->disuseStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    .line 821
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 822
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->removeInterval(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 826
    :cond_1
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->deactivate_()V

    return-void
.end method

.method protected destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 751
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 752
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 753
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    .line 754
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    .line 755
    invoke-super {p0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->destroy_()V

    return-void
.end method

.method protected distanceToPoint_(Landroid/graphics/PointF;I)F
    .locals 0

    .line 741
    invoke-super {p0, p1, p2}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->distanceToPoint_(Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F
    .locals 0

    .line 746
    invoke-super {p0, p1, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->distanceToSegment_(Landroid/graphics/PointF;Landroid/graphics/PointF;I)F

    move-result p1

    return p1
.end method

.method protected editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z
    .locals 0

    .line 647
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->editWithContext_(Lcom/metamoji/un/draw2/module/element/DrEditContext;)Z

    move-result p1

    return p1
.end method

.method public endIndex()D
    .locals 2

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 92
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 95
    :cond_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    return-wide v0
.end method

.method protected frameBounds_()Lcom/metamoji/cm/RectEx;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getBoundsResizeVariationWithResizeX_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 8

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 657
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 660
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 661
    invoke-static {v0, p1, v2, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 662
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->frameBounds_()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 663
    iget v2, v0, Lcom/metamoji/cm/RectEx;->width:F

    iget v3, p2, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v2

    .line 666
    iget v6, p1, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v6, v6

    sub-double/2addr v6, v2

    cmpl-double v2, v6, v4

    if-ltz v2, :cond_1

    .line 668
    iget p1, p1, Lcom/metamoji/cm/RectEx;->x:F

    iget v2, p2, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr p1, v2

    iget v0, v0, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr p1, v0

    float-to-double v2, p1

    move-wide v4, v6

    goto :goto_0

    .line 671
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    .line 673
    :goto_0
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p1

    double-to-float v0, v2

    .line 674
    iget v2, p2, Lcom/metamoji/cm/RectEx;->y:F

    double-to-float v3, v4

    iget v4, p2, Lcom/metamoji/cm/RectEx;->height:F

    .line 675
    invoke-static {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 674
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 676
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method protected getBoundsResizeVariationWithResizeY_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 8

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    const/4 p1, 0x0

    .line 682
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 685
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 686
    invoke-static {v0, v2, p1, p2}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object p1

    .line 687
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->frameBounds_()Lcom/metamoji/cm/RectEx;

    move-result-object p2

    .line 688
    iget v2, v0, Lcom/metamoji/cm/RectEx;->height:F

    iget v3, p2, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr v2, v3

    float-to-double v2, v2

    const-wide v4, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v4, v2

    .line 691
    iget v6, p1, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v6, v6

    sub-double/2addr v6, v2

    cmpl-double v2, v6, v4

    if-ltz v2, :cond_1

    .line 693
    iget p1, p1, Lcom/metamoji/cm/RectEx;->y:F

    iget v2, p2, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr p1, v2

    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr p1, v0

    float-to-double v2, p1

    move-wide v4, v6

    goto :goto_0

    .line 696
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result p1

    float-to-double v2, p1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v4

    sub-double/2addr v2, v6

    .line 698
    :goto_0
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p1

    .line 699
    iget v0, p2, Lcom/metamoji/cm/RectEx;->x:F

    double-to-float v2, v2

    iget v3, p2, Lcom/metamoji/cm/RectEx;->width:F

    double-to-float v4, v4

    .line 700
    invoke-static {v0, v2, v3, v4}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 699
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 701
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object p2

    invoke-static {p2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object v1

    :cond_2
    return-object p1
.end method

.method protected getBoundsResizeVariationWithResize_(FLandroid/graphics/PointF;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 16

    move/from16 v0, p1

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    const/4 v2, 0x0

    if-gez v1, :cond_0

    const/4 v0, 0x0

    .line 707
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v2

    .line 710
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->bounds()Lcom/metamoji/cm/RectEx;

    move-result-object v1

    move-object/from16 v3, p2

    .line 711
    invoke-static {v1, v0, v0, v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->applyScaleWithoutReversingToRect(Lcom/metamoji/cm/RectEx;FFLandroid/graphics/PointF;)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->frameBounds_()Lcom/metamoji/cm/RectEx;

    move-result-object v3

    .line 713
    iget v4, v1, Lcom/metamoji/cm/RectEx;->width:F

    iget v5, v3, Lcom/metamoji/cm/RectEx;->width:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    .line 714
    iget v6, v1, Lcom/metamoji/cm/RectEx;->height:F

    iget v7, v3, Lcom/metamoji/cm/RectEx;->height:F

    sub-float/2addr v6, v7

    float-to-double v6, v6

    const-wide v8, 0x3f847ae147ae147bL    # 0.01

    mul-double v10, v4, v8

    mul-double/2addr v8, v6

    .line 718
    iget v12, v0, Lcom/metamoji/cm/RectEx;->width:F

    float-to-double v12, v12

    sub-double/2addr v12, v4

    cmpl-double v4, v12, v10

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    if-ltz v4, :cond_1

    .line 720
    iget v4, v0, Lcom/metamoji/cm/RectEx;->x:F

    iget v5, v3, Lcom/metamoji/cm/RectEx;->x:F

    add-float/2addr v4, v5

    iget v5, v1, Lcom/metamoji/cm/RectEx;->x:F

    sub-float/2addr v4, v5

    float-to-double v4, v4

    move-wide v10, v12

    goto :goto_0

    .line 723
    :cond_1
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidX(Lcom/metamoji/cm/RectEx;)F

    move-result v4

    float-to-double v4, v4

    mul-double v12, v10, v14

    sub-double/2addr v4, v12

    .line 726
    :goto_0
    iget v12, v0, Lcom/metamoji/cm/RectEx;->height:F

    float-to-double v12, v12

    sub-double/2addr v12, v6

    cmpl-double v6, v12, v8

    if-ltz v6, :cond_2

    .line 728
    iget v0, v0, Lcom/metamoji/cm/RectEx;->y:F

    iget v6, v3, Lcom/metamoji/cm/RectEx;->y:F

    add-float/2addr v0, v6

    iget v1, v1, Lcom/metamoji/cm/RectEx;->y:F

    sub-float/2addr v0, v1

    float-to-double v0, v0

    move-wide v8, v12

    goto :goto_1

    .line 731
    :cond_2
    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectGetMidY(Lcom/metamoji/cm/RectEx;)F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v14, v8

    sub-double/2addr v0, v14

    .line 733
    :goto_1
    new-instance v6, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v6

    double-to-float v4, v4

    double-to-float v0, v0

    double-to-float v1, v10

    double-to-float v5, v8

    .line 735
    invoke-static {v4, v0, v1, v5}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGRectMake(FFFF)Lcom/metamoji/cm/RectEx;

    move-result-object v0

    .line 734
    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->transformFromRect(Lcom/metamoji/cm/RectEx;Lcom/metamoji/cm/RectEx;)Landroid/graphics/Matrix;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 736
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-object v2

    :cond_3
    return-object v6
.end method

.method protected highlightWithContext_(Lcom/metamoji/un/draw2/module/element/DrHighlightContext;)V
    .locals 0

    return-void
.end method

.method protected indexFromParameter(FLcom/metamoji/cm/PointArray;)D
    .locals 7

    .line 423
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-float v0, v0

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    const/4 v3, 0x0

    if-ltz v2, :cond_8

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    cmpl-float v2, p1, v1

    if-nez v2, :cond_1

    .line 429
    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    return-wide p1

    :cond_1
    if-nez v0, :cond_2

    .line 432
    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    return-wide p1

    :cond_2
    float-to-double v4, p1

    .line 436
    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    int-to-float v2, v0

    sub-float/2addr p1, v2

    mul-int/lit8 v2, v0, 0x2

    add-int/lit8 v4, v2, 0x2

    .line 438
    invoke-static {p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v5

    const/4 v6, 0x1

    if-lt v4, v5, :cond_3

    .line 439
    invoke-static {v6, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 440
    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    return-wide p1

    :cond_3
    cmpl-float v1, p1, v1

    if-nez v1, :cond_4

    .line 446
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    sub-int/2addr v0, v6

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    goto :goto_0

    .line 449
    :cond_4
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    add-int/2addr v2, v6

    .line 450
    invoke-static {v2, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v2

    .line 451
    invoke-static {v4, p2}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p2

    .line 449
    invoke-static {v1, v2, p2, p1}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveLengthRatio(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)D

    move-result-wide p1

    .line 453
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    mul-double/2addr p1, v1

    if-lez v0, :cond_5

    .line 455
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    sub-int/2addr v0, v6

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    add-double/2addr p1, v0

    .line 460
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    div-double/2addr p1, v0

    .line 463
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    iget-wide v4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    sub-double/2addr v0, v4

    mul-double/2addr p1, v0

    add-double/2addr p1, v4

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_7

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_6

    goto :goto_1

    :cond_6
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    const-wide/high16 v2, 0x402c000000000000L    # 14.0

    .line 470
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    mul-double/2addr p1, v0

    .line 471
    invoke-static {p1, p2}, Ljava/lang/Math;->round(D)J

    move-result-wide p1

    long-to-double p1, p1

    div-double/2addr p1, v0

    return-wide p1

    :cond_7
    :goto_1
    const/4 p1, 0x2

    .line 465
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 466
    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    return-wide p1

    :cond_8
    :goto_2
    const/4 p1, 0x0

    .line 425
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 426
    iget-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    return-wide p1
.end method

.method protected initWithTransform_(Landroid/graphics/Matrix;FF)Z
    .locals 2

    const-wide/16 p1, 0x0

    .line 522
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    .line 523
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    .line 524
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    .line 525
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    .line 528
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_4

    .line 530
    const-string p1, "p"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 533
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p3

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    .line 536
    instance-of p1, p3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p1, :cond_0

    .line 537
    check-cast p3, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    iput-object p3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 540
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    goto :goto_0

    .line 545
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 546
    instance-of p3, p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p3, :cond_2

    .line 547
    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 550
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_0

    .line 553
    :cond_2
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 559
    :goto_0
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p1, :cond_3

    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x2

    .line 560
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 561
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 562
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 567
    :cond_3
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string/jumbo p3, "s"

    invoke-static {p3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    .line 568
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    const-string p3, "e"

    invoke-static {p3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    .line 569
    const-string p1, "b"

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    :cond_4
    return p2
.end method

.method protected isErasable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isMovable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isResizable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isReversible_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isRotatable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected isSelectable_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected minScaleX_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected minScaleY_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected minScale_()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected parameterFromIndex(DLcom/metamoji/cm/PointArray;)F
    .locals 8

    .line 475
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    cmpg-double v2, p1, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ltz v2, :cond_7

    iget-wide v6, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    cmpl-double v2, p1, v6

    if-lez v2, :cond_0

    goto :goto_1

    :cond_0
    cmpl-double v2, v0, v6

    if-nez v2, :cond_1

    return v5

    :cond_1
    cmpl-double v0, p1, v0

    if-nez v0, :cond_2

    return v5

    .line 485
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    const/4 p1, 0x1

    .line 487
    invoke-static {p1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v5

    .line 490
    :cond_3
    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    cmpl-double v3, p1, v1

    if-nez v3, :cond_4

    int-to-float p1, v0

    return p1

    .line 495
    :cond_4
    iget-wide v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    sub-double/2addr p1, v5

    sub-double/2addr v1, v5

    div-double/2addr p1, v1

    .line 498
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    mul-double/2addr v1, p1

    const-wide/16 p1, 0x0

    :goto_0
    if-ge v4, v0, :cond_6

    .line 504
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    add-double/2addr v5, p1

    cmpl-double v3, v5, v1

    if-ltz v3, :cond_5

    mul-int/lit8 v0, v4, 0x2

    int-to-float v3, v4

    .line 507
    invoke-static {v0, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v4

    add-int/lit8 v7, v0, 0x1

    .line 508
    invoke-static {v7, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    add-int/lit8 v0, v0, 0x2

    .line 509
    invoke-static {v0, p3}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object p3

    sub-double/2addr v1, p1

    sub-double/2addr v5, p1

    div-double/2addr v1, v5

    .line 507
    invoke-static {v4, v7, p3, v1, v2}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveParameter(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;D)F

    move-result p1

    add-float/2addr v3, p1

    return v3

    :cond_5
    add-int/lit8 v4, v4, 0x1

    move-wide p1, v5

    goto :goto_0

    :cond_6
    int-to-float p1, v0

    return p1

    .line 476
    :cond_7
    :goto_1
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v5
.end method

.method public penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 2

    .line 111
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 112
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-object v1

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    return-object v0
.end method

.method protected repaintHighlightAlways_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected repaint_()V
    .locals 0

    return-void
.end method

.method setIndexesWithBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;DD)V
    .locals 6

    .line 150
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 151
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 154
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    .line 155
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    const-wide/16 v2, 0x0

    cmpg-double v0, p2, v2

    if-ltz v0, :cond_6

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v4

    if-gtz v0, :cond_6

    cmpg-double v0, p4, v2

    if-ltz v0, :cond_6

    cmpl-double v0, p4, v4

    if-gtz v0, :cond_6

    cmpg-double v0, p4, p2

    if-gez v0, :cond_2

    goto :goto_1

    .line 162
    :cond_2
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    cmpl-double v0, p2, v0

    if-nez v0, :cond_4

    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    cmpl-double v0, p4, v0

    if-nez v0, :cond_4

    .line 168
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    if-nez p1, :cond_3

    if-nez v0, :cond_4

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->isEqualToId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    .line 173
    :cond_4
    iput-wide p2, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    .line 174
    iput-wide p4, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    .line 175
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 177
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    iget-wide v3, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_endIndex:D

    iget-object v5, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-static/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->saveIndexesToModel(Lcom/metamoji/df/model/IModel;DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_5
    :goto_0
    return-void

    :cond_6
    :goto_1
    const/4 p1, 0x2

    .line 159
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method public setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 2

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 119
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-eqz p1, :cond_1

    .line 124
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->checkPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p1, 0x1

    .line 125
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 130
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 133
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 138
    :cond_2
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->applyPenStyle_(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isActive()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 139
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->updateCovers()V

    .line 140
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->repaint_()V

    :cond_3
    :goto_0
    return-void
.end method

.method public startIndex()D
    .locals 2

    .line 82
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 83
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const-wide/16 v0, 0x0

    return-wide v0

    .line 86
    :cond_0
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_startIndex:D

    return-wide v0
.end method

.method public strokeLength()D
    .locals 2

    .line 409
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public strokeType()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;
    .locals 2

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 74
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 75
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->NONE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    return-object v0

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->strokeType_()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    move-result-object v0

    return-object v0
.end method

.method protected strokeType_()Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;
    .locals 1

    .line 301
    sget-object v0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;->NONE:Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeType;

    return-object v0
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/element/DrElementType;
    .locals 1

    .line 577
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    return-object v0
.end method

.method public updatePathLengthsWithBezierPoints(Lcom/metamoji/cm/PointArray;)V
    .locals 12

    .line 379
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 380
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 383
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->count(Lcom/metamoji/cm/PointArray;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 390
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v1

    const/4 v2, 0x1

    const-wide/16 v3, 0x0

    move-object v5, v1

    :goto_0
    if-ge v2, v0, :cond_1

    add-int/lit8 v1, v2, 0x1

    .line 393
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v6

    add-int/lit8 v2, v2, 0x2

    .line 394
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcPointArray;->pointAtIndex(ILcom/metamoji/cm/PointArray;)Landroid/graphics/PointF;

    move-result-object v7

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 395
    invoke-static/range {v5 .. v11}, Lcom/metamoji/un/draw2/library/utility/path/DrUtPathUtility;->getQuadCurveLength(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    .line 397
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathLengths:Ljava/util/ArrayList;

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_pathTotalLengths:Ljava/util/ArrayList;

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v5, v7

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method protected updatePenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 341
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 343
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleEqualsToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 344
    instance-of v2, v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v2, :cond_1

    .line 345
    move-object p1, v0

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-ne p1, v0, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-virtual {v0, v1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->disuseStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    :cond_3
    if-eqz p1, :cond_4

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->useStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)V

    .line 363
    :cond_4
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 366
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 367
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->m_penStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->savePenStyleToModel(Lcom/metamoji/df/model/IModel;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    :cond_5
    const/4 p1, 0x1

    return p1
.end method
