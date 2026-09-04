.class public Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrResizeDirection.java"


# static fields
.field private static final MODEL_PROPERTY_ELEMENT_IDS:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_FIXED_POINT_X:Ljava/lang/String; = "fx"

.field private static final MODEL_PROPERTY_FIXED_POINT_Y:Ljava/lang/String; = "fy"

.field private static final MODEL_PROPERTY_INDIVIDUAL_ELEMENT_IDS:Ljava/lang/String; = "e"

.field private static final MODEL_PROPERTY_INDIVIDUAL_VARIATIONS:Ljava/lang/String; = "v"

.field private static final MODEL_PROPERTY_RESIZE_X:Ljava/lang/String; = "x"

.field private static final MODEL_PROPERTY_RESIZE_Y:Ljava/lang/String; = "y"


# instance fields
.field private m_elementIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private final m_fixedPoint:Landroid/graphics/PointF;

.field private m_individualElementIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private m_individualVariations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;",
            ">;"
        }
    .end annotation
.end field

.field private m_resizeX:F

.field private m_resizeY:F

.field private m_updatedElementIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    .line 47
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method destroy_()V
    .locals 1

    const/4 v0, 0x0

    .line 423
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_elementIds:Ljava/util/List;

    .line 424
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    .line 425
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    .line 426
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 20

    move-object/from16 v0, p0

    .line 213
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_elementIds:Ljava/util/List;

    .line 217
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    const/4 v3, 0x0

    if-nez v1, :cond_1

    if-nez v2, :cond_3

    if-eqz p1, :cond_0

    goto/16 :goto_6

    :cond_0
    return-object v3

    :cond_1
    if-nez v2, :cond_3

    .line 218
    iget v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    float-to-double v1, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v1, v1, v4

    if-nez v1, :cond_3

    iget v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    float-to-double v1, v1

    cmpl-double v1, v1, v4

    if-nez v1, :cond_3

    if-eqz p1, :cond_2

    goto/16 :goto_6

    :cond_2
    return-object v3

    .line 225
    :cond_3
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eq v1, v5, :cond_4

    if-eq v1, v2, :cond_4

    move v1, v4

    goto :goto_0

    :cond_4
    move v1, v5

    .line 235
    :goto_0
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 238
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_elementIds:Ljava/util/List;

    if-eqz v7, :cond_a

    .line 240
    iget v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    const/high16 v8, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    div-float v7, v8, v7

    .line 241
    :cond_5
    iget v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    if-eqz v1, :cond_6

    div-float v9, v8, v9

    .line 244
    :cond_6
    new-instance v8, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v8}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 245
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v8, v7, v9, v10}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setResizeContext(FFLandroid/graphics/PointF;)V

    .line 248
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_elementIds:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_7
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 249
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v10

    if-nez v10, :cond_8

    goto :goto_1

    .line 253
    :cond_8
    invoke-virtual {v10, v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 256
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v11

    invoke-virtual {v11, v10}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 257
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v11

    if-nez v11, :cond_9

    .line 258
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v6, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    :cond_9
    iget-object v10, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v10, :cond_7

    .line 263
    invoke-virtual {v10, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 269
    :cond_a
    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    if-eqz v7, :cond_11

    move v7, v4

    .line 270
    :goto_2
    iget-object v8, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_11

    .line 271
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v8

    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {v8, v9}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v8

    if-nez v8, :cond_b

    goto/16 :goto_4

    .line 277
    :cond_b
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    if-eqz v1, :cond_c

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->getInverse()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object v9

    .line 280
    :cond_c
    sget-object v10, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementBaseType:[I

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object v11

    invoke-virtual {v11}, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->ordinal()I

    move-result v11

    aget v10, v10, v11

    if-eq v10, v5, :cond_e

    if-eq v10, v2, :cond_d

    .line 297
    invoke-static {v4, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 287
    :cond_d
    move-object v11, v8

    check-cast v11, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateX()F

    move-result v12

    .line 288
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->translateY()F

    move-result v13

    .line 289
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleWidth()F

    move-result v14

    .line 290
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->scaleHeight()F

    move-result v15

    .line 291
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingX()Z

    move-result v16

    .line 292
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isReversingY()Z

    move-result v17

    .line 293
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v18

    .line 294
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v19

    .line 287
    invoke-virtual/range {v11 .. v19}, Lcom/metamoji/un/draw2/module/element/DrRectBaseElement;->applyVariationWithTranslate(FFFFZZFF)V

    goto :goto_3

    .line 282
    :cond_e
    move-object v10, v8

    check-cast v10, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->transform()Landroid/graphics/Matrix;

    move-result-object v11

    .line 283
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->angleInDegrees()F

    move-result v12

    .line 284
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->contentScale()F

    move-result v9

    .line 282
    invoke-virtual {v10, v11, v12, v9}, Lcom/metamoji/un/draw2/module/element/DrPointsBaseElement;->applyVariationWithTransform(Landroid/graphics/Matrix;FF)V

    .line 302
    :goto_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v9

    if-eqz v9, :cond_f

    .line 303
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v10

    if-nez v10, :cond_f

    .line 304
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v6, v10, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    :cond_f
    iget-object v9, v0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v9, :cond_10

    .line 309
    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_10
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    .line 320
    :cond_11
    invoke-virtual {v6}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 321
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v1

    .line 322
    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 323
    invoke-virtual {v1, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_5

    :cond_12
    if-eqz p1, :cond_13

    :goto_6
    return-object v0

    :cond_13
    return-object v3
.end method

.method public fixedPoint()Landroid/graphics/PointF;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public individualResizeElement(Lcom/metamoji/un/draw2/module/element/DrElement;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V
    .locals 4

    .line 137
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 138
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 142
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 145
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p1, 0x2

    .line 146
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 153
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizing()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingX()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingY()Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    if-eqz p2, :cond_6

    .line 161
    invoke-virtual {p2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->isIdentity()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_0

    .line 164
    :cond_4
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    if-nez v2, :cond_5

    .line 165
    new-array v2, v0, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    .line 166
    new-array p1, v0, [Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    aput-object p2, p1, v1

    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    return-void

    .line 168
    :cond_5
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_0
    return-void

    :cond_7
    :goto_1
    const/4 p1, 0x4

    .line 154
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void
.end method

.method init_()Z
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    .line 191
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    .line 192
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    const/4 v0, 0x1

    return v0
.end method

.method public resizeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 5

    .line 103
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 104
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_1

    .line 108
    invoke-static {v0, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 111
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 p1, 0x2

    .line 112
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 115
    :cond_2
    iget v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    iget v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    cmpl-float v4, v3, v4

    if-nez v4, :cond_3

    .line 116
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizing()Z

    move-result v3

    if-eqz v3, :cond_6

    const/4 p1, 0x3

    .line 117
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_3
    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_4

    .line 121
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingY()Z

    move-result v3

    if-nez v3, :cond_5

    :cond_4
    iget v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noResizingX()Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    const/4 p1, 0x4

    .line 122
    invoke-static {p1, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 126
    :cond_6
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_elementIds:Ljava/util/List;

    if-nez v2, :cond_7

    .line 127
    new-array v0, v0, [Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/metamoji/un/draw2/library/utility/IOSUtil;->listWithObjects([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_elementIds:Ljava/util/List;

    return-void

    .line 129
    :cond_7
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public resizeX()F
    .locals 1

    .line 60
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    return v0
.end method

.method public resizeY()F
    .locals 1

    .line 76
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    return v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 5

    .line 336
    const-string/jumbo v0, "x"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 337
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    .line 341
    const-string/jumbo v0, "y"

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 342
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    .line 347
    const-string v0, "fx"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 348
    const-string v2, "fy"

    invoke-static {v2, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 349
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 352
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idArrayForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_elementIds:Ljava/util/List;

    .line 355
    const-string/jumbo v0, "v"

    const-class v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->arrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 356
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 357
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    .line 358
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :catch_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 359
    new-instance v2, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    .line 361
    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 362
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 363
    check-cast v4, Ljava/lang/Number;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 365
    :cond_0
    invoke-virtual {v2, v3}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setArray(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 369
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    :cond_1
    const-string v0, "e"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idArrayForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    const/4 p1, 0x1

    return p1
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 382
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 383
    const-string/jumbo v2, "x"

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 387
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 388
    const-string/jumbo v1, "y"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 392
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 393
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const-string v2, "fx"

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 395
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_3

    .line 396
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const-string v1, "fy"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 400
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_elementIds:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 401
    const-string v1, "i"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdArrayForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 405
    :cond_4
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 406
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualVariations:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    .line 408
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->array()Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 410
    :cond_5
    const-string/jumbo v1, "v"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    .line 414
    :cond_6
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_individualElementIds:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 415
    const-string v1, "e"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdArrayForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    :cond_7
    const/4 p1, 0x1

    return p1
.end method

.method public setFixedPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setResizeX(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 65
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 68
    invoke-static {p1, v1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 69
    iput v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    return-void

    .line 71
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeX:F

    return-void
.end method

.method public setResizeY(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 81
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    invoke-static {p1, v1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iput v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    return-void

    .line 87
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_resizeY:F

    return-void
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

    .line 183
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 198
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->RESIZE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

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

    .line 179
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrResizeDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
