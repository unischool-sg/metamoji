.class public Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrTranslateDirection.java"


# static fields
.field private static final MODEL_PROPERTY_ELEMENT_IDS:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_TRANSLATE_X:Ljava/lang/String; = "x"

.field private static final MODEL_PROPERTY_TRANSLATE_Y:Ljava/lang/String; = "y"


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

.field private m_translateX:F

.field private m_translateY:F

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
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

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

    .line 233
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 235
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    .line 237
    :cond_0
    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 8

    .line 127
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateX:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateY:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_1
    if-eqz p1, :cond_2

    goto/16 :goto_4

    :cond_2
    return-object v2

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->UNDO:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-eq v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v0

    sget-object v1, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->REVERSE:Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    if-ne v0, v1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    :goto_0
    const/4 v0, 0x1

    .line 133
    :goto_1
    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateX:F

    if-eqz v0, :cond_6

    neg-float v1, v1

    .line 134
    :cond_6
    iget v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateY:F

    if-eqz v0, :cond_7

    neg-float v3, v3

    .line 137
    :cond_7
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 138
    invoke-virtual {v0, v1, v3}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setTranslateContext(FF)V

    .line 141
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v3

    .line 145
    iget-object v4, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 146
    invoke-virtual {v3, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 147
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/element/DrElement;->isMovable()Z

    move-result v7

    if-eqz v7, :cond_8

    .line 148
    invoke-virtual {v6, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 149
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 151
    invoke-virtual {v6}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    :cond_9
    iget-object v6, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v6, :cond_8

    .line 156
    invoke-virtual {v6, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 162
    :cond_a
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_d

    .line 163
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    .line 164
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 165
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v5

    if-nez v5, :cond_b

    .line 166
    invoke-virtual {v0, v4}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_3

    .line 169
    :cond_c
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    :cond_d
    if-eqz p1, :cond_e

    :goto_4
    return-object p0

    :cond_e
    return-object v2
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init_()Z
    .locals 1

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 105
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateX:F

    .line 106
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateY:F

    const/4 v0, 0x1

    return v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 180
    const-string/jumbo v0, "x"

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateX:F

    .line 184
    const-string/jumbo v0, "y"

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateY:F

    .line 187
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->stringArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 190
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->idFromString(Ljava/lang/String;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 192
    iget-object v3, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 194
    invoke-static {v2, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 198
    :cond_1
    invoke-static {v1, v0}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :cond_2
    return v1
.end method

.method saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 4

    .line 207
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateX:F

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    .line 208
    const-string/jumbo v2, "x"

    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 212
    :cond_0
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateY:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_1

    .line 213
    const-string/jumbo v1, "y"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    .line 217
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 218
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 219
    invoke-static {v2}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 221
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 223
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 226
    :cond_3
    const-string v1, "i"

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    const/4 p1, 0x1

    return p1
.end method

.method public setTranslateX(F)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 54
    invoke-static {p1, v1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    iput v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateX:F

    return-void

    .line 57
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateX:F

    return-void
.end method

.method public setTranslateY(F)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 65
    invoke-static {p1, v1, v0}, Lcom/metamoji/un/draw2/library/utility/math/DrUtMathUtility;->checkEquality(FFI)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iput v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateY:F

    return-void

    .line 68
    :cond_0
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateY:F

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

    .line 97
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method public translateElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V
    .locals 2

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->wasExecuted()Z

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
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_elementIds:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public translateX()F
    .locals 1

    .line 51
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateX:F

    return v0
.end method

.method public translateY()F
    .locals 1

    .line 62
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_translateY:F

    return v0
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 112
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->TRANSLATE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

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

    .line 96
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrTranslateDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
