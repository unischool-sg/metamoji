.class public Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrRotateDirection.java"


# static fields
.field private static final MODEL_PROPERTY_ANGLE:Ljava/lang/String; = "a"

.field private static final MODEL_PROPERTY_ELEMENT_IDS:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_FIXED_POINT_X:Ljava/lang/String; = "fx"

.field private static final MODEL_PROPERTY_FIXED_POINT_Y:Ljava/lang/String; = "fy"


# instance fields
.field private m_angleInDegrees:F

.field private m_elementIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            ">;"
        }
    .end annotation
.end field

.field private final m_fixedPoint:Landroid/graphics/PointF;

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

    .line 28
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    .line 42
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public angleInDegrees()F
    .locals 1

    .line 54
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    return v0
.end method

.method canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method destroy_()V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 243
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    .line 245
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 8

    .line 130
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v0

    sget-object v2, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->UNDO:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v0

    sget-object v2, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REVERSE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 136
    :cond_1
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    neg-float v0, v0

    .line 139
    :goto_1
    new-instance v2, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v2}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 140
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setRotateContextWithAngleInDegrees(FLandroid/graphics/PointF;)V

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    .line 147
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 148
    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    if-eqz v6, :cond_3

    .line 149
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->isRotatable()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 150
    invoke-virtual {v6, v2}, Lcom/metamoji/un/draw2/module/element/DrElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 151
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v6

    if-eqz v6, :cond_4

    .line 153
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v0, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_4
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v6, :cond_3

    .line 158
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 164
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_8

    .line 165
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v2

    .line 166
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 167
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v5

    if-nez v5, :cond_6

    .line 168
    invoke-virtual {v2, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_3

    .line 171
    :cond_7
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    :cond_8
    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    return-object v1

    :cond_a
    :goto_4
    if-eqz p1, :cond_b

    :goto_5
    return-object p0

    :cond_b
    return-object v1
.end method

.method public fixedPoint()Landroid/graphics/PointF;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init_()Z
    .locals 1

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 109
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    const/4 v0, 0x1

    return v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 182
    const-string v0, "a"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    .line 187
    const-string v0, "fx"

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 188
    const-string v2, "fy"

    invoke-static {v2, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 189
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 192
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 194
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 195
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 197
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 199
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_2
    return v1
.end method

.method public rotateElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 77
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 81
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 84
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 85
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 88
    :cond_2
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->noRotating()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x3

    .line 89
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 212
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 213
    const-string v2, "a"

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const-string v2, "fx"

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 220
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 221
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const-string v1, "fy"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 225
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 226
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 227
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 231
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 234
    :cond_4
    const-string v1, "i"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setAngleInDegrees(F)V
    .locals 2

    .line 57
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->adjustDegree(F)F

    move-result p1

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 58
    invoke-static {p1, v1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iput v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    return-void

    .line 61
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_angleInDegrees:F

    return-void
.end method

.method public setFixedPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

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

    .line 101
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 115
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ROTATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

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

    .line 100
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrRotateDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
