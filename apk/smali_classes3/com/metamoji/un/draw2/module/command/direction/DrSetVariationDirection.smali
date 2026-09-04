.class public Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrSetVariationDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_BASE_STROKE_ID:Ljava/lang/String; = "b"

.field private static final MODEL_PROPERTY_BASE_TYPE:Ljava/lang/String; = "t"

.field private static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_NEXT_LINE_WIDTH:Ljava/lang/String; = "l"

.field private static final MODEL_PROPERTY_NEXT_VARIATION:Ljava/lang/String; = "n"

.field private static final MODEL_PROPERTY_PREV_LINE_WIDTH:Ljava/lang/String; = "w"

.field private static final MODEL_PROPERTY_PREV_VARIATION:Ljava/lang/String; = "p"

.field private static final MODEL_PROPERTY_STROKE_END_INDEX:Ljava/lang/String; = "e"

.field private static final MODEL_PROPERTY_STROKE_START_INDEX:Ljava/lang/String; = "s"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_internalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_lineWidthMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/lang/Number;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

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

.field private m_updatedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_variationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Ljava/util/List<",
            "Ljava/lang/Number;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    .line 261
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    return-void
.end method

.method private applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;ZZZ)V
    .locals 12

    if-eqz p3, :cond_0

    .line 1043
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    :goto_0
    if-eqz p3, :cond_1

    .line 1044
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v1

    goto :goto_1

    :cond_1
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v1

    :goto_1
    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez p4, :cond_2

    if-eqz p5, :cond_e

    :cond_2
    if-eqz v1, :cond_5

    .line 1051
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformEqualToTransform(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1052
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    move v6, v5

    goto :goto_2

    :cond_3
    move v6, v4

    .line 1055
    :goto_2
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v7

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_4

    .line 1056
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    move v6, v5

    .line 1059
    :cond_4
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v7

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v8

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_6

    .line 1060
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v6

    invoke-virtual {v1, v6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    move v6, v5

    goto :goto_3

    :cond_5
    move v6, v4

    .line 1067
    :cond_6
    :goto_3
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v5, :cond_8

    if-eq v1, v3, :cond_7

    move-object v1, v2

    goto :goto_4

    .line 1072
    :cond_7
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v1

    goto :goto_4

    .line 1069
    :cond_8
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v1

    :goto_4
    if-eqz v1, :cond_a

    .line 1079
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v1

    if-eqz p3, :cond_9

    .line 1081
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v7

    cmpl-float v7, v7, v1

    if-eqz v7, :cond_a

    .line 1082
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetPrevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    goto :goto_5

    .line 1086
    :cond_9
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v7

    cmpl-float v7, v7, v1

    if-eqz v7, :cond_a

    .line 1087
    invoke-static {p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetNextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    :goto_5
    move v1, v5

    goto :goto_6

    :cond_a
    move v1, v4

    :goto_6
    if-eqz p5, :cond_e

    .line 1094
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    if-eqz v7, :cond_e

    if-eqz p3, :cond_c

    if-eqz v6, :cond_b

    .line 1097
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->savePrevVariationToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_b
    if-eqz v1, :cond_e

    .line 1100
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->savePrevLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_7

    :cond_c
    if-eqz v6, :cond_d

    .line 1104
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    invoke-virtual {p2, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveNextVariationToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_d
    if-eqz v1, :cond_e

    .line 1107
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveNextLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_e
    :goto_7
    const/4 v1, 0x0

    if-eqz v0, :cond_18

    .line 1117
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->inversion()Landroid/graphics/Matrix;

    move-result-object v6

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v6

    .line 1118
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v7

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v8

    sub-float/2addr v7, v8

    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v7

    .line 1119
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v8

    div-float/2addr v0, v8

    .line 1122
    new-instance v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;

    invoke-direct {v8, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;-><init>(Landroid/graphics/Matrix;)V

    .line 1123
    iget v9, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    const/high16 v10, 0x3f800000    # 1.0f

    const/4 v11, 0x5

    invoke-static {v9, v10, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 1124
    iput v10, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->a:F

    .line 1126
    :cond_f
    iget v9, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    invoke-static {v9, v1, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1127
    iput v1, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->b:F

    .line 1129
    :cond_10
    iget v9, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    invoke-static {v9, v1, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 1130
    iput v1, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->c:F

    .line 1132
    :cond_11
    iget v9, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    invoke-static {v9, v10, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 1133
    iput v10, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->d:F

    .line 1135
    :cond_12
    iget v9, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    invoke-static {v9, v1, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-eqz v9, :cond_13

    .line 1136
    iput v1, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->tx:F

    .line 1138
    :cond_13
    iget v9, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    invoke-static {v9, v1, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-eqz v9, :cond_14

    .line 1139
    iput v1, v8, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->ty:F

    .line 1141
    :cond_14
    invoke-virtual {v8, v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil$CGAffineTransform;->setTo(Landroid/graphics/Matrix;)V

    .line 1142
    invoke-static {v7, v1, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v8

    if-eqz v8, :cond_15

    move v7, v1

    .line 1145
    :cond_15
    invoke-static {v0, v10, v11}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v8

    if-eqz v8, :cond_16

    move v0, v10

    .line 1150
    :cond_16
    invoke-static {v6}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformIsIdentity(Landroid/graphics/Matrix;)Z

    move-result v8

    if-eqz v8, :cond_17

    cmpl-float v8, v7, v1

    if-nez v8, :cond_17

    cmpl-float v8, v0, v10

    if-nez v8, :cond_17

    .line 1151
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkExtraDataPropertiesForReverse(Z)Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1153
    :cond_17
    invoke-virtual {p1, v6, v7, v0}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->applyVariationWithTransform(Landroid/graphics/Matrix;FF)V

    move v0, v5

    goto :goto_8

    .line 1159
    :cond_18
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_19
    move v0, v4

    :goto_8
    if-eqz p3, :cond_1a

    .line 1163
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v6

    goto :goto_9

    :cond_1a
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v6

    .line 1167
    :goto_9
    sget-object v7, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v5, :cond_1c

    if-eq v7, v3, :cond_1b

    goto :goto_a

    .line 1172
    :cond_1b
    move-object v2, p1

    check-cast v2, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v2

    goto :goto_a

    .line 1169
    :cond_1c
    move-object v2, p1

    check-cast v2, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v2

    :goto_a
    if-eqz v2, :cond_20

    .line 1180
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v7

    cmpg-float v1, v6, v1

    if-gez v1, :cond_1d

    move v4, v5

    move v6, v7

    :cond_1d
    cmpl-float v1, v6, v7

    if-eqz v1, :cond_20

    .line 1191
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 1193
    invoke-virtual {v0, v6}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineWidth(F)V

    .line 1194
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    if-eq v1, v5, :cond_1f

    if-eq v1, v3, :cond_1e

    goto :goto_b

    .line 1199
    :cond_1e
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    check-cast v0, Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;)V

    goto :goto_b

    .line 1196
    :cond_1f
    move-object v1, p1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    :goto_b
    move v0, v5

    :cond_20
    if-eqz v0, :cond_23

    .line 1213
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v0

    if-eqz v0, :cond_21

    .line 1215
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    :cond_21
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v0, :cond_22

    .line 1220
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1224
    :cond_22
    invoke-virtual {p0, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setModifiedModel(Z)V

    .line 1225
    invoke-virtual {p0, v5}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setModifiedCanvas(Z)V

    :cond_23
    if-eqz v4, :cond_27

    if-nez p4, :cond_24

    if-nez p5, :cond_24

    goto :goto_d

    :cond_24
    if-eqz p3, :cond_25

    .line 1235
    invoke-static {p2, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetNextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    goto :goto_c

    .line 1237
    :cond_25
    invoke-static {p2, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetPrevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    :goto_c
    if-eqz p5, :cond_27

    .line 1241
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    if-eqz p1, :cond_27

    if-eqz p3, :cond_26

    .line 1243
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveNextLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1245
    :cond_26
    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->savePrevLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_27
    :goto_d
    return-void
.end method

.method private applyVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;ZZZ)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v10, p2

    if-eqz p3, :cond_0

    .line 1256
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v1

    :goto_0
    if-eqz p3, :cond_1

    .line 1257
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v2

    goto :goto_1

    :cond_1
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v2

    :goto_1
    const/4 v12, 0x3

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-nez p4, :cond_2

    if-eqz p5, :cond_12

    :cond_2
    if-eqz v2, :cond_a

    .line 1264
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v4

    cmpl-float v3, v3, v4

    if-eqz v3, :cond_3

    .line 1265
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    move v3, v14

    goto :goto_2

    :cond_3
    move v3, v13

    .line 1268
    :goto_2
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_4

    .line 1269
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    move v3, v14

    .line 1272
    :cond_4
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_5

    .line 1273
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    move v3, v14

    .line 1276
    :cond_5
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_6

    .line 1277
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    move v3, v14

    .line 1280
    :cond_6
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v5

    if-eq v4, v5, :cond_7

    .line 1281
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingX(Z)V

    move v3, v14

    .line 1284
    :cond_7
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v5

    if-eq v4, v5, :cond_8

    .line 1285
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingY(Z)V

    move v3, v14

    .line 1288
    :cond_8
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_9

    .line 1289
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    move v3, v14

    .line 1292
    :cond_9
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v5

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_b

    .line 1293
    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    move v3, v14

    goto :goto_3

    :cond_a
    move v3, v13

    .line 1300
    :cond_b
    :goto_3
    sget-object v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v4

    aget v2, v2, v4

    if-eq v2, v12, :cond_c

    const/4 v2, 0x0

    goto :goto_4

    .line 1302
    :cond_c
    move-object/from16 v2, p1

    check-cast v2, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v2

    :goto_4
    if-eqz v2, :cond_e

    .line 1309
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v2

    if-eqz p3, :cond_d

    .line 1311
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_e

    .line 1312
    invoke-static {v10, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetPrevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    goto :goto_5

    .line 1316
    :cond_d
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v4

    cmpl-float v4, v4, v2

    if-eqz v4, :cond_e

    .line 1317
    invoke-static {v10, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetNextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    :goto_5
    move v2, v14

    goto :goto_6

    :cond_e
    move v2, v13

    :goto_6
    if-eqz p5, :cond_12

    .line 1324
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_12

    if-eqz p3, :cond_10

    if-eqz v3, :cond_f

    .line 1327
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->savePrevVariationToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_f
    if-eqz v2, :cond_12

    .line 1330
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->savePrevLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    goto :goto_7

    :cond_10
    if-eqz v3, :cond_11

    .line 1334
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-virtual {v10, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveNextVariationToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_11
    if-eqz v2, :cond_12

    .line 1337
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveNextLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_12
    :goto_7
    const/4 v15, 0x0

    if-eqz v1, :cond_1b

    .line 1347
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v3

    sub-float/2addr v2, v3

    .line 1348
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v4

    sub-float/2addr v3, v4

    .line 1349
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v5

    div-float/2addr v4, v5

    .line 1350
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v6

    div-float/2addr v5, v6

    .line 1351
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v7

    xor-int/2addr v6, v7

    .line 1352
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v8

    xor-int/2addr v7, v8

    .line 1353
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v8

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v9

    sub-float/2addr v8, v9

    invoke-static {v8}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v8

    .line 1354
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v9

    div-float/2addr v1, v9

    const/4 v9, 0x5

    .line 1357
    invoke-static {v2, v15, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v16

    if-eqz v16, :cond_13

    move v2, v15

    .line 1360
    :cond_13
    invoke-static {v3, v15, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v16

    if-eqz v16, :cond_14

    move v3, v15

    :cond_14
    const/high16 v11, 0x3f800000    # 1.0f

    .line 1363
    invoke-static {v4, v11, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v17

    if-eqz v17, :cond_15

    move v4, v11

    .line 1366
    :cond_15
    invoke-static {v5, v11, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v17

    if-eqz v17, :cond_16

    move v5, v11

    .line 1369
    :cond_16
    invoke-static {v8, v15, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v17

    if-eqz v17, :cond_17

    move v8, v15

    .line 1372
    :cond_17
    invoke-static {v1, v11, v9}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v9

    if-eqz v9, :cond_18

    move v9, v11

    goto :goto_8

    :cond_18
    move v9, v1

    :goto_8
    cmpl-float v1, v2, v15

    if-nez v1, :cond_1a

    cmpl-float v1, v3, v15

    if-nez v1, :cond_1a

    cmpl-float v1, v4, v11

    if-nez v1, :cond_1a

    cmpl-float v1, v5, v11

    if-nez v1, :cond_1a

    if-nez v6, :cond_1a

    if-nez v7, :cond_1a

    cmpl-float v1, v8, v15

    if-nez v1, :cond_1a

    cmpl-float v1, v9, v11

    if-nez v1, :cond_1a

    .line 1378
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v1

    invoke-virtual {v1, v13}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkExtraDataPropertiesForReverse(Z)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_9

    :cond_19
    move-object/from16 v1, p1

    goto :goto_a

    :cond_1a
    :goto_9
    move-object/from16 v1, p1

    .line 1380
    invoke-virtual/range {v1 .. v9}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyVariationWithTranslate(FFFFZZFF)V

    move v2, v14

    goto :goto_b

    :cond_1b
    move-object/from16 v1, p1

    .line 1393
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_a
    move v2, v13

    :goto_b
    if-eqz p3, :cond_1c

    .line 1397
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v3

    goto :goto_c

    :cond_1c
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v3

    .line 1401
    :goto_c
    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v12, :cond_1d

    const/4 v11, 0x0

    goto :goto_d

    .line 1403
    :cond_1d
    move-object v4, v1

    check-cast v4, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v11

    :goto_d
    if-eqz v11, :cond_20

    .line 1411
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->lineWidth()F

    move-result v4

    cmpg-float v5, v3, v15

    if-gez v5, :cond_1e

    move v3, v4

    move v13, v14

    :cond_1e
    cmpl-float v4, v3, v4

    if-eqz v4, :cond_20

    .line 1422
    invoke-virtual {v11}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->cloneWithFamily(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    .line 1424
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setLineWidth(F)V

    .line 1425
    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    if-eq v4, v12, :cond_1f

    goto :goto_e

    .line 1427
    :cond_1f
    move-object v4, v1

    check-cast v4, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;

    invoke-virtual {v4, v2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->setPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    :goto_e
    move v2, v14

    :cond_20
    if-eqz v2, :cond_23

    .line 1441
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1443
    iget-object v4, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1447
    :cond_21
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v2, :cond_22

    .line 1448
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1452
    :cond_22
    invoke-virtual {v0, v14}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setModifiedModel(Z)V

    .line 1453
    invoke-virtual {v0, v14}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setModifiedCanvas(Z)V

    :cond_23
    if-eqz v13, :cond_27

    if-nez p4, :cond_24

    if-nez p5, :cond_24

    goto :goto_10

    :cond_24
    if-eqz p3, :cond_25

    .line 1463
    invoke-static {v10, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetNextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    goto :goto_f

    .line 1465
    :cond_25
    invoke-static {v10, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetPrevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    :goto_f
    if-eqz p5, :cond_27

    .line 1469
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    if-eqz v1, :cond_27

    if-eqz p3, :cond_26

    .line 1471
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveNextLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 1473
    :cond_26
    invoke-static {v10}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-virtual {v10, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->savePrevLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    :cond_27
    :goto_10
    return-void
.end method

.method public static setResizeVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 916
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 920
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 924
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 927
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 937
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 939
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    add-float/2addr v2, v0

    .line 940
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    add-float/2addr v3, v0

    .line 941
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    mul-float/2addr v4, v0

    .line 942
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v5

    mul-float/2addr v5, v0

    .line 943
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v6

    xor-int/2addr v6, v0

    .line 944
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v7

    xor-int/2addr v7, v0

    .line 945
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v8

    .line 946
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v9

    move-object v0, p2

    .line 938
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 929
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 931
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 932
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v3

    .line 933
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v4

    .line 930
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public static setRotateVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 996
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 1000
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 1004
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 1007
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 1017
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 1019
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    add-float/2addr v2, v0

    .line 1020
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    add-float/2addr v3, v0

    .line 1021
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v4

    .line 1022
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v5

    .line 1023
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v6

    .line 1024
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v7

    .line 1025
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v8

    add-float/2addr v0, v8

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v8

    .line 1026
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v9

    move-object v0, p2

    .line 1018
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 1009
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 1011
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 1012
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v3

    .line 1013
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v4

    .line 1010
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public static setScaleVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 956
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 960
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 964
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 967
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 977
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 979
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    add-float/2addr v2, v0

    .line 980
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    add-float/2addr v3, v0

    .line 981
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    mul-float/2addr v4, v0

    .line 982
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v5

    mul-float/2addr v5, v0

    .line 983
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v6

    xor-int/2addr v6, v0

    .line 984
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v7

    xor-int/2addr v7, v0

    .line 985
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v8

    .line 986
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v9

    mul-float/2addr v9, v0

    move-object v0, p2

    .line 978
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 969
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 971
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 972
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v3

    .line 973
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v4

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v5

    mul-float/2addr v4, v5

    .line 970
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public static setTranslateVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 876
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 880
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 884
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 887
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 897
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 899
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    add-float/2addr v2, v0

    .line 900
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    add-float/2addr v3, v0

    .line 901
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v4

    .line 902
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v5

    .line 903
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v6

    .line 904
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v7

    .line 905
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v8

    .line 906
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v9

    move-object v0, p2

    .line 898
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 889
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 891
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 892
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v3

    .line 893
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v4

    .line 890
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method

.method public static setVariationToElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-nez p0, :cond_0

    .line 836
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_0
    const/4 v10, 0x1

    if-nez p1, :cond_1

    .line 840
    invoke-static {v10, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-nez p2, :cond_2

    .line 844
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return v1

    .line 847
    :cond_2
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v3

    aget v0, v0, v3

    if-eq v0, v10, :cond_4

    if-eq v0, v2, :cond_3

    return v1

    .line 857
    :cond_3
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    .line 859
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateX()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v2

    add-float/2addr v2, v0

    .line 860
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->translateY()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v3

    add-float/2addr v3, v0

    .line 861
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleWidth()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v4

    mul-float/2addr v4, v0

    .line 862
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->scaleHeight()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v5

    mul-float/2addr v5, v0

    .line 863
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingX()Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v6

    xor-int/2addr v6, v0

    .line 864
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isReversingY()Z

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v7

    xor-int/2addr v7, v0

    .line 865
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->angleInDegrees()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v8

    add-float/2addr v0, v8

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v8

    .line 866
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->contentScale()F

    move-result v0

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v9

    mul-float/2addr v9, v0

    move-object v0, p2

    .line 858
    invoke-virtual/range {v0 .. v9}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V

    return v10

    .line 849
    :cond_4
    move-object v1, p0

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    .line 851
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->transform()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->CGAffineTransformConcat(Landroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v2

    .line 852
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->angleInDegrees()F

    move-result v3

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v4

    add-float/2addr v3, v4

    invoke-static {v3}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result v3

    .line 853
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->contentScale()F

    move-result v4

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v5

    mul-float/2addr v4, v5

    .line 850
    invoke-virtual {p2, v1, v2, v3, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->setVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V

    return v10
.end method


# virtual methods
.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 749
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 752
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 p1, 0x0

    .line 768
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    move v1, v2

    .line 773
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_a

    .line 776
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 779
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 780
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_lineWidthMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    .line 781
    const-string/jumbo v4, "w"

    const-string v5, "p"

    if-eqz v1, :cond_4

    if-eqz v2, :cond_3

    .line 784
    invoke-static {v5, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    :cond_3
    if-eqz v3, :cond_9

    .line 787
    invoke-static {v4, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 791
    :cond_4
    const-string v6, "n"

    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 793
    invoke-static {v5, v7, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 795
    :cond_5
    const-string v5, "l"

    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 797
    invoke-static {v4, v7, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    :cond_6
    if-eqz v2, :cond_7

    .line 802
    invoke-static {v6, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 804
    :cond_7
    invoke-static {v6, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    :goto_1
    if-eqz v3, :cond_8

    .line 807
    invoke-static {v5, v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 809
    :cond_8
    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 814
    :cond_9
    :goto_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 816
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    .line 814
    invoke-virtual {v2, v0, v3, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 819
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 823
    :cond_a
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    .line 824
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_lineWidthMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 8

    .line 666
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 670
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 p1, 0x0

    .line 680
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v1, v2

    .line 685
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    if-nez v0, :cond_2

    .line 686
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    .line 688
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_lineWidthMap:Ljava/util/HashMap;

    if-nez v0, :cond_3

    .line 689
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_lineWidthMap:Ljava/util/HashMap;

    .line 693
    :cond_3
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_b

    .line 696
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 699
    const-string/jumbo v2, "w"

    const-string v3, "p"

    if-eqz v1, :cond_5

    .line 701
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 703
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 704
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 706
    :cond_4
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 708
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 709
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_lineWidthMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 713
    :cond_5
    const-string v4, "n"

    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 715
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    :cond_6
    const-string v5, "l"

    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v6

    if-eqz v6, :cond_7

    .line 719
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_lineWidthMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 723
    :cond_7
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 725
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 726
    invoke-static {v4, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 729
    :cond_8
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 731
    :goto_1
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/lang/Number;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 733
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 734
    invoke-static {v5, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setNumberPropertyForName(Ljava/lang/String;Ljava/lang/Number;Lcom/metamoji/df/model/IModel;)V

    goto :goto_2

    .line 737
    :cond_9
    invoke-static {v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 742
    :cond_a
    :goto_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_b
    return-void
.end method

.method canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method destroy_()V
    .locals 2

    const/4 v0, 0x0

    .line 643
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 644
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 645
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 646
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1

    .line 649
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 650
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_variationMap:Ljava/util/HashMap;

    .line 652
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_lineWidthMap:Ljava/util/HashMap;

    if-eqz v1, :cond_2

    .line 653
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 654
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_lineWidthMap:Ljava/util/HashMap;

    .line 656
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 657
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 658
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    .line 660
    :cond_3
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 24

    move-object/from16 v0, p0

    .line 392
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v6, 0x0

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_18

    :cond_0
    return-object v6

    .line 400
    :cond_1
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v7, 0x4

    const/4 v8, 0x3

    const/4 v9, 0x2

    const/4 v2, 0x0

    const/4 v10, 0x1

    if-eq v1, v10, :cond_7

    if-eq v1, v9, :cond_6

    if-eq v1, v8, :cond_5

    if-eq v1, v7, :cond_4

    const/4 v3, 0x5

    if-eq v1, v3, :cond_3

    .line 416
    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    goto/16 :goto_18

    :cond_2
    return-object v6

    :cond_3
    move v1, v2

    goto :goto_0

    .line 410
    :cond_4
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_3

    move v1, v10

    :goto_0
    move v5, v1

    move v3, v2

    move v4, v3

    goto :goto_4

    :cond_5
    move v1, v2

    goto :goto_1

    :cond_6
    move v1, v10

    :goto_1
    move v4, v1

    move v5, v2

    :goto_2
    move v3, v10

    goto :goto_4

    .line 402
    :cond_7
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_8

    move v1, v10

    goto :goto_3

    :cond_8
    move v1, v2

    :goto_3
    move v5, v1

    move v4, v2

    goto :goto_2

    :goto_4
    if-eqz v5, :cond_9

    .line 423
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v1

    goto :goto_5

    :cond_9
    move-object v11, v6

    :goto_5
    if-nez v4, :cond_b

    if-eqz v5, :cond_a

    goto :goto_6

    :cond_a
    move-object v12, v6

    goto :goto_7

    .line 429
    :cond_b
    :goto_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v12, v1

    .line 433
    :goto_7
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v13

    .line 434
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v14

    .line 435
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v15

    .line 436
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    .line 437
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_8
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;

    if-eqz v1, :cond_10

    .line 442
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->bySelf()Z

    move-result v16

    if-eqz v16, :cond_f

    invoke-virtual {v13, v1}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v16

    if-eqz v16, :cond_f

    .line 444
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    sget-object v8, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13, v7, v8}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 448
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v16

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v18

    cmp-long v8, v16, v18

    if-nez v8, :cond_c

    .line 450
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    sget-object v8, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13, v7, v8, v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_9

    .line 455
    :cond_c
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v16

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v7

    cmp-long v7, v16, v7

    if-gez v7, :cond_d

    const/4 v7, 0x4

    const/4 v8, 0x3

    goto :goto_8

    .line 459
    :cond_d
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v10, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_9

    .line 464
    :cond_e
    invoke-static {v1}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_9

    .line 468
    :cond_f
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    sget-object v8, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13, v7, v8, v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 471
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    sget-object v8, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v13, v7, v8, v6}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 478
    :cond_10
    :goto_9
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v14, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 482
    sget-object v8, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mbaseType(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v16

    aget v8, v8, v16

    if-eq v8, v10, :cond_12

    if-eq v8, v9, :cond_11

    const/4 v8, 0x3

    .line 490
    invoke-static {v8, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v7, 0x4

    goto/16 :goto_8

    :cond_11
    const/4 v8, 0x3

    .line 487
    check-cast v7, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    move-object/from16 v23, v1

    move-object v1, v7

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->applyVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;ZZZ)V

    :goto_a
    const/4 v7, 0x4

    move-object/from16 v0, p0

    goto/16 :goto_14

    :cond_12
    move-object/from16 v23, v1

    const/4 v8, 0x3

    .line 484
    move-object v1, v7

    check-cast v1, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    move-object/from16 v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;ZZZ)V

    const/4 v7, 0x4

    goto/16 :goto_14

    :cond_13
    move-object/from16 v23, v1

    move-object v7, v2

    const/4 v8, 0x3

    if-eqz v12, :cond_14

    .line 498
    invoke-interface {v12, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_14
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)D

    move-result-wide v0

    const-wide/16 v16, 0x0

    cmpg-double v0, v0, v16

    if-ltz v0, :cond_22

    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)D

    move-result-wide v0

    cmpg-double v0, v0, v16

    if-gez v0, :cond_15

    :goto_b
    goto :goto_a

    .line 508
    :cond_15
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_18

    .line 510
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v0

    if-eqz v0, :cond_16

    goto :goto_b

    .line 515
    :cond_16
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)D

    move-result-wide v16

    .line 516
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)D

    move-result-wide v18

    .line 517
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v20

    .line 515
    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    if-eqz v0, :cond_17

    goto :goto_b

    .line 522
    :cond_17
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)D

    move-result-wide v16

    .line 523
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)D

    move-result-wide v18

    .line 524
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v20

    .line 522
    invoke-virtual/range {v15 .. v20}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v0

    goto :goto_c

    .line 527
    :cond_18
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v0

    :goto_c
    if-eqz v0, :cond_22

    .line 531
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_19

    goto :goto_b

    .line 536
    :cond_19
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_d
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 538
    invoke-virtual {v14, v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v1, :cond_1a

    const/4 v2, 0x4

    .line 540
    invoke-static {v2, v6}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_d

    :cond_1a
    const/4 v2, 0x4

    if-nez v4, :cond_1c

    if-eqz v5, :cond_1b

    goto :goto_f

    :cond_1b
    move/from16 v22, v2

    move-object/from16 v17, v6

    move-object v2, v7

    move-object/from16 v18, v2

    :goto_e
    move-object/from16 v0, p0

    goto :goto_13

    .line 548
    :cond_1c
    :goto_f
    new-instance v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;-><init>()V

    .line 549
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 550
    sget-object v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetBaseType(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V

    if-eqz v3, :cond_1d

    .line 551
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->clone()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    goto :goto_10

    :cond_1d
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    :goto_10
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetNextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    if-eqz v3, :cond_1e

    .line 552
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    goto :goto_11

    :cond_1e
    invoke-static {v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->clone()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    :goto_11
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetPrevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    move-object/from16 v17, v6

    move-object/from16 v18, v7

    .line 553
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;D)V

    .line 554
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v6

    invoke-static {v2, v6, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;D)V

    .line 555
    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-eqz v3, :cond_1f

    .line 557
    invoke-static/range {v18 .. v18}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mnextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetNextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    goto :goto_12

    .line 559
    :cond_1f
    invoke-static/range {v18 .. v18}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mprevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F

    move-result v0

    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetPrevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V

    :goto_12
    if-eqz v5, :cond_20

    .line 564
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    const/16 v22, 0x4

    goto :goto_e

    .line 572
    :goto_13
    invoke-direct/range {v0 .. v5}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->applyVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;ZZZ)V

    if-eqz v5, :cond_21

    .line 576
    const-string v1, "i"

    iget-object v6, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    .line 577
    invoke-virtual {v2, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 578
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_21
    move-object/from16 v6, v17

    move-object/from16 v7, v18

    goto/16 :goto_d

    :cond_22
    const/16 v22, 0x4

    move-object/from16 v0, p0

    move/from16 v7, v22

    :goto_14
    move-object/from16 v1, v23

    goto/16 :goto_8

    :cond_23
    move-object/from16 v17, v6

    if-eqz v11, :cond_24

    .line 584
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 585
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;

    .line 586
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_15

    :cond_24
    if-eqz v12, :cond_26

    .line 591
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_26

    .line 592
    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_25
    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;

    .line 593
    iget-object v3, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v5, :cond_25

    .line 594
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_25

    .line 595
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    goto :goto_16

    .line 601
    :cond_26
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_29

    .line 602
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v1

    .line 603
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_27
    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 604
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v4

    if-nez v4, :cond_27

    .line 605
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_17

    .line 608
    :cond_28
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_29
    if-eqz p1, :cond_2a

    :goto_18
    return-object v0

    :cond_2a
    return-object v17
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init_()Z
    .locals 1

    .line 370
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    .line 371
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_selectionMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 616
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 617
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 619
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;-><init>()V

    .line 620
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    .line 621
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 622
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 624
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 626
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 633
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;

    .line 634
    const-string v2, "i"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 635
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 636
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setUpdatedElementIds(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;)V"
        }
    .end annotation

    .line 363
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public setVariationToPointsBaseElement(Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;Landroid/graphics/Matrix;FF)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 275
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 279
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 282
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 283
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 288
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 289
    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTransform(Landroid/graphics/Matrix;)V

    .line 290
    invoke-virtual {v0, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    .line 291
    invoke-virtual {v0, p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    .line 294
    new-instance p2, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;

    invoke-direct {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;-><init>()V

    .line 295
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 296
    sget-object p3, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetBaseType(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V

    .line 297
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetNextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    .line 298
    new-instance p3, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initAffineTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetPrevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    .line 299
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object p3

    sget-object p4, Lcom/metamoji/un/draw2/module/element/DrElementType;->STROKE:Lcom/metamoji/un/draw2/module/element/DrElementType;

    if-ne p3, p4, :cond_3

    .line 300
    check-cast p1, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 301
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;D)V

    .line 302
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide p3

    invoke-static {p2, p3, p4}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;D)V

    .line 303
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 307
    :cond_3
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setVariationToRectBaseElement(Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;FFFFZZFF)V
    .locals 2

    .line 322
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 323
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 327
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 330
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 331
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 336
    :cond_2
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v0

    .line 337
    invoke-virtual {v0, p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateX(F)V

    .line 338
    invoke-virtual {v0, p3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setTranslateY(F)V

    .line 339
    invoke-virtual {v0, p4}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleWidth(F)V

    .line 340
    invoke-virtual {v0, p5}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setScaleHeight(F)V

    .line 341
    invoke-virtual {v0, p6}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingX(Z)V

    .line 342
    invoke-virtual {v0, p7}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setIsReversingY(Z)V

    .line 343
    invoke-virtual {v0, p8}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setAngleInDegrees(F)V

    .line 344
    invoke-virtual {v0, p9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setContentScale(F)V

    .line 347
    new-instance p2, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;

    invoke-direct {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;-><init>()V

    .line 348
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 349
    sget-object p1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->RECT:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetBaseType(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V

    .line 350
    invoke-static {p2, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetNextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    .line 351
    new-instance p1, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->initRectTransformVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$msetPrevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    .line 354
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p3

    invoke-virtual {p1, p3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 377
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SET_VARIATION:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    return-object v0
.end method

.method public updatedElementIds()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation

    .line 362
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
