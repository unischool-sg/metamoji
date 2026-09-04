.class public Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrScaleDirection.java"


# static fields
.field private static final MODEL_PROPERTY_ELEMENT_IDS:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_FIXED_POINT_X:Ljava/lang/String; = "fx"

.field private static final MODEL_PROPERTY_FIXED_POINT_Y:Ljava/lang/String; = "fy"

.field private static final MODEL_PROPERTY_SCALE:Ljava/lang/String; = "s"


# instance fields
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

.field private m_scale:F

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

    .line 41
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method destroy_()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 239
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 240
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    .line 242
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 9

    .line 127
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 132
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v0

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->UNDO:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v0

    sget-object v3, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REVERSE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-ne v0, v3, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

    goto :goto_1

    :cond_2
    :goto_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

    div-float v0, v1, v0

    .line 136
    :goto_1
    new-instance v1, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 137
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v1, v0, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setScaleContext(FLandroid/graphics/PointF;)V

    .line 140
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 143
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v4

    .line 144
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 145
    invoke-virtual {v4, v6}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 146
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->isResizable()Z

    move-result v8

    if-eqz v8, :cond_3

    const/4 v8, 0x0

    cmpl-float v8, v0, v8

    if-gtz v8, :cond_4

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->isReversible()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 147
    :cond_4
    invoke-virtual {v7, v1}, Lcom/metamoji/un/draw2/module/element/DrElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 148
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v8

    invoke-virtual {v8}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 150
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v8

    invoke-virtual {v3, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    :cond_5
    iget-object v7, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v7, :cond_3

    .line 155
    invoke-virtual {v7, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 161
    :cond_6
    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    .line 163
    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_7
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 164
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v5

    if-nez v5, :cond_7

    .line 165
    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_3

    .line 168
    :cond_8
    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    :cond_9
    if-eqz p1, :cond_a

    goto :goto_5

    :cond_a
    return-object v2

    :cond_b
    :goto_4
    if-eqz p1, :cond_c

    :goto_5
    return-object p0

    :cond_c
    return-object v2
.end method

.method public fixedPoint()Landroid/graphics/PointF;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    return-object v0
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init_()Z
    .locals 1

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 106
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

    const/4 v0, 0x1

    return v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    .line 179
    const-string/jumbo v1, "s"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

    .line 184
    const-string v0, "fx"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    .line 185
    const-string v2, "fy"

    invoke-static {v2, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v1

    .line 186
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    .line 189
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 191
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 194
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 196
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 200
    :cond_1
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_2
    return v1
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 209
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 210
    const-string/jumbo v1, "s"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    const-string v2, "fx"

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 217
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_2

    .line 218
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    const-string v1, "fy"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 222
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 223
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 224
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 226
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 228
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 231
    :cond_4
    const-string v1, "i"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    const/4 p1, 0x1

    return p1
.end method

.method public scale()F
    .locals 1

    .line 52
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

    return v0
.end method

.method public scaleElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 2

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 78
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 82
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 85
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 86
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 89
    :cond_2
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setFixedPoint(Landroid/graphics/PointF;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_fixedPoint:Landroid/graphics/PointF;

    invoke-virtual {v0, p1}, Landroid/graphics/PointF;->set(Landroid/graphics/PointF;)V

    return-void
.end method

.method public setScale(F)V
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 56
    invoke-static {p1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x5

    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    invoke-static {p1, v1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 60
    iput v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

    return-void

    .line 62
    :cond_1
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_scale:F

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

    .line 98
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 112
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->SCALE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

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

    .line 97
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrScaleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
