.class public Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrEditExtraHandleDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_HANDLE_INDEX:Ljava/lang/String; = "h"

.field private static final MODEL_PROPERTY_NEXT_CENTER_POINT_X:Ljava/lang/String; = "nx"

.field private static final MODEL_PROPERTY_NEXT_CENTER_POINT_Y:Ljava/lang/String; = "ny"

.field private static final MODEL_PROPERTY_PREV_CENTER_POINT_X:Ljava/lang/String; = "px"

.field private static final MODEL_PROPERTY_PREV_CENTER_POINT_Y:Ljava/lang/String; = "py"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_internalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

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

    const/4 v0, 0x0

    .line 339
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 340
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_internalMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 341
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 342
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_internalMap:Ljava/util/HashMap;

    .line 344
    :cond_0
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 13

    .line 229
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_3

    :cond_0
    return-object v1

    .line 235
    :cond_1
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    const/4 v5, 0x4

    const/4 v6, 0x0

    if-eq v0, v5, :cond_4

    const/4 v5, 0x5

    if-eq v0, v5, :cond_4

    .line 245
    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    goto/16 :goto_3

    :cond_2
    return-object v1

    :cond_3
    move v6, v4

    .line 250
    :cond_4
    new-instance v0, Lcom/metamoji/un/draw2/module/element/DrEditContext;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/module/element/DrEditContext;-><init>()V

    .line 253
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v7

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v7

    .line 257
    iget-object v8, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_5
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;

    .line 259
    invoke-static {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v10

    if-nez v10, :cond_6

    .line 261
    invoke-static {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 266
    :cond_6
    instance-of v11, v10, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    if-nez v11, :cond_7

    .line 267
    invoke-static {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_7
    move-object v11, v10

    check-cast v11, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;

    .line 273
    invoke-static {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$mhandleIndex(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)I

    move-result v12

    invoke-interface {v11, v12}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v11

    if-nez v11, :cond_8

    .line 275
    invoke-static {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v9

    invoke-static {v9}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_0

    :cond_8
    if-eqz v6, :cond_9

    .line 280
    invoke-static {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$mnextCenterPoint(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Landroid/graphics/PointF;

    move-result-object v9

    goto :goto_1

    :cond_9
    invoke-static {v9}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$mprevCenterPoint(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Landroid/graphics/PointF;

    move-result-object v9

    .line 281
    :goto_1
    invoke-virtual {v0, v9, v11}, Lcom/metamoji/un/draw2/module/element/DrEditContext;->setEditExtraHandleContext(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)V

    .line 282
    invoke-virtual {v10, v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->editWithContext(Lcom/metamoji/un/draw2/module/element/DrEditContext;)V

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v9

    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v9

    invoke-virtual {v9, v10}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 287
    invoke-virtual {v9}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v11

    invoke-virtual {v5, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    :cond_a
    iget-object v9, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz v9, :cond_5

    .line 292
    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 297
    :cond_b
    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 298
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    .line 299
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_c
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 300
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v4

    if-nez v4, :cond_c

    .line 301
    invoke-virtual {v0, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_2

    .line 304
    :cond_d
    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    :cond_e
    if-eqz p1, :cond_f

    :goto_3
    return-object p0

    :cond_f
    return-object v1
.end method

.method hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method init_()Z
    .locals 1

    .line 208
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_internalMap:Ljava/util/HashMap;

    const/4 v0, 0x1

    return v0
.end method

.method restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 312
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 313
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 315
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection-IA;)V

    .line 316
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    .line 317
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 318
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 320
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 322
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

    .line 329
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_internalMap:Ljava/util/HashMap;

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

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;

    .line 330
    const-string v2, "i"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 331
    invoke-virtual {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    .line 332
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public setExtraHandleCenterPoint(Landroid/graphics/PointF;Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;I)V
    .locals 4

    .line 159
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 160
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const/4 p1, 0x1

    .line 164
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 167
    :cond_1
    instance-of v0, p2, Lcom/metamoji/un/draw2/module/element/DrElement;

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 168
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 171
    :cond_2
    invoke-interface {p2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleCount()I

    move-result v0

    if-lt p3, v0, :cond_3

    const/4 p1, 0x3

    .line 172
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 175
    :cond_3
    move-object v0, p2

    check-cast v0, Lcom/metamoji/un/draw2/module/element/DrElement;

    .line 176
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->isActive()Z

    move-result v2

    if-nez v2, :cond_4

    const/4 p1, 0x4

    .line 177
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 182
    :cond_4
    invoke-interface {p2, p3}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getHandleAtIndex(I)Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;

    move-result-object v2

    .line 185
    new-instance v3, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;

    invoke-direct {v3, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection-IA;)V

    .line 186
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 187
    invoke-static {v3, p3}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$msetHandleIndex(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;I)V

    .line 188
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$msetNextCenterPoint(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;Landroid/graphics/PointF;)V

    .line 189
    invoke-interface {p2, v2}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getVariationOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p2, v2, p1}, Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandleOwner;->getCenterPointOfHandle(Lcom/metamoji/un/draw2/library/overlay/rubberband/DrOvRubberBandHandle;Ljava/util/Map;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$msetPrevCenterPoint(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;Landroid/graphics/PointF;)V

    .line 192
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v3}, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection$DrEditExtraHandleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-virtual {p1, p2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 201
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 214
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->EDIT_EXTRA_HANDLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

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

    .line 200
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrEditExtraHandleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
