.class public Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;
.super Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
.source "DrChangeStyleDirection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;
    }
.end annotation


# static fields
.field private static final MODEL_PROPERTY_BASE_STROKE_ID:Ljava/lang/String; = "b"

.field private static final MODEL_PROPERTY_ELEMENT_ID:Ljava/lang/String; = "i"

.field private static final MODEL_PROPERTY_NEXT_STYLE_MODEL:Ljava/lang/String; = "n"

.field private static final MODEL_PROPERTY_PREV_STYLE_MODEL:Ljava/lang/String; = "p"

.field private static final MODEL_PROPERTY_STROKE_END_INDEX:Ljava/lang/String; = "e"

.field private static final MODEL_PROPERTY_STROKE_START_INDEX:Ljava/lang/String; = "s"

.field private static final MODEL_TYPE_INTERNAL:Ljava/lang/String; = "i"


# instance fields
.field private m_internalMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;",
            ">;"
        }
    .end annotation
.end field

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_selectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/un/draw2/module/selection/DrSelection;",
            ">;"
        }
    .end annotation
.end field

.field private m_styleModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field

.field private m_targetIdSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/metamoji/un/draw2/library/utility/id/DrUtId;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;-><init>()V

    return-void
.end method

.method private applyStyleToArrowElement(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 3

    .line 924
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 929
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    .line 930
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 932
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    :cond_1
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->changePenStyleOfArrowElement(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    .line 939
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz p2, :cond_2

    .line 940
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    .line 944
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->setModifiedModel(Z)V

    .line 945
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->setModifiedCanvas(Z)V

    return-void
.end method

.method private applyStyleToShapeElement(Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 3

    .line 895
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 900
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v0

    .line 901
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 903
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    :cond_1
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->changePenStyleOfShapeElement(Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;

    .line 910
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz p2, :cond_2

    .line 911
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 p1, 0x1

    .line 915
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->setModifiedModel(Z)V

    .line 916
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->setModifiedCanvas(Z)V

    return-void
.end method

.method private applyStyleToStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;I)V
    .locals 4

    .line 842
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->isEqualToPenStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 847
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v0

    if-ltz p3, :cond_1

    .line 848
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->elementCount()I

    move-result v1

    if-ge p3, v1, :cond_1

    invoke-virtual {v0, p3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementByOrder(I)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v1

    if-eq v1, p1, :cond_2

    .line 849
    :cond_1
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result p3

    .line 853
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v1

    .line 854
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->getSelectionContainsElement(Lcom/metamoji/un/draw2/module/element/DrElement;)Lcom/metamoji/un/draw2/module/selection/DrSelection;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 856
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 860
    :cond_3
    invoke-static {p1, p2}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->changePenStyleOfStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    move-result-object p2

    if-eq p1, p2, :cond_5

    .line 865
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 866
    invoke-virtual {v0, p2, p3}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)V

    if-eqz v1, :cond_5

    .line 870
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->getOrderOfElement(Lcom/metamoji/un/draw2/module/element/DrElement;)I

    move-result p3

    if-ltz p3, :cond_4

    .line 872
    invoke-virtual {v1, p1}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->removeElement(Lcom/metamoji/un/draw2/module/element/DrElement;)V

    .line 873
    invoke-virtual {v1, p2, p3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->addElement(Lcom/metamoji/un/draw2/module/element/DrElement;I)Z

    goto :goto_0

    :cond_4
    const/4 p2, 0x0

    const/4 p3, 0x0

    .line 875
    invoke-static {p2, p3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 881
    :cond_5
    :goto_0
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    if-eqz p2, :cond_6

    .line 882
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_6
    const/4 p1, 0x1

    .line 886
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->setModifiedModel(Z)V

    .line 887
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->setModifiedCanvas(Z)V

    return-void
.end method

.method private restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 3

    .line 811
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->checkPenStyleModel(Lcom/metamoji/df/model/IModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 816
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/DrModuleContext;->styleManager()Lcom/metamoji/un/draw2/library/style/DrStStyleManager;

    move-result-object v0

    .line 817
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleByModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v2

    check-cast v2, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v2, :cond_1

    return-object v2

    .line 823
    :cond_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/style/DrStStyle;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-nez p1, :cond_2

    return-object v1

    .line 829
    :cond_2
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->getStyleEqualsToStyle(Lcom/metamoji/un/draw2/library/style/DrStStyle;)Lcom/metamoji/un/draw2/library/style/DrStStyle;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz v1, :cond_3

    return-object v1

    .line 835
    :cond_3
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/style/DrStStyleManager;->generateStyleId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->setUid(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-object p1
.end method


# virtual methods
.method public afterSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 740
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->afterSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 743
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 749
    :cond_0
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

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

    .line 759
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_1
    move v1, v2

    .line 764
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 767
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$smgetElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 770
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/df/model/IModel;

    .line 771
    const-string v3, "p"

    if-eqz v1, :cond_3

    if-eqz v2, :cond_6

    .line 774
    invoke-static {v3, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 778
    :cond_3
    const-string v4, "n"

    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 780
    invoke-static {v3, v5, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    :cond_4
    if-eqz v2, :cond_5

    .line 785
    invoke-static {v4, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 787
    :cond_5
    invoke-static {v4, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 792
    :cond_6
    :goto_1
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_STYLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    .line 794
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    .line 792
    invoke-virtual {v2, v0, v3, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 797
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    .line 801
    :cond_7
    iget-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public beforeSendModel(Lcom/metamoji/df/model/IModel;)V
    .locals 6

    .line 673
    invoke-super {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrDirection;->beforeSendModel(Lcom/metamoji/df/model/IModel;)V

    .line 677
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

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

    .line 687
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    move v1, v2

    .line 692
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    if-nez v0, :cond_2

    .line 693
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    .line 697
    :cond_2
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_7

    .line 700
    invoke-static {p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$smgetElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    .line 703
    const-string v2, "p"

    if-eqz v1, :cond_3

    .line 705
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 709
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 710
    iget-object v2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 714
    :cond_3
    const-string v3, "n"

    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 718
    iget-object v5, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    :cond_4
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 724
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 725
    invoke-static {v3, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_1

    .line 728
    :cond_5
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 733
    :cond_6
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_7
    return-void
.end method

.method protected canSave_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public changeStyleOfArrowElement(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 2

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 286
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 290
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 293
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 294
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x3

    .line 298
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 303
    :cond_3
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection-IA;)V

    .line 304
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 305
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetNextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 306
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetPrevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 309
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_targetIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeStyleOfShapeElement(Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 2

    .line 251
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 252
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 256
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 259
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 260
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x3

    .line 264
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 269
    :cond_3
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection-IA;)V

    .line 270
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 271
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetNextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 272
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetPrevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 275
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_targetIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public changeStyleOfStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 3

    .line 217
    invoke-virtual {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->wasExecuted()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    .line 218
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 222
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 225
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 p1, 0x2

    .line 226
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    :cond_2
    if-nez p2, :cond_3

    const/4 p1, 0x3

    .line 230
    invoke-static {p1, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    return-void

    .line 235
    :cond_3
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection-IA;)V

    .line 236
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 237
    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetNextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 238
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetPrevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 239
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;D)V

    .line 240
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;D)V

    .line 241
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 244
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v1

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    iget-object p2, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_targetIdSet:Ljava/util/HashSet;

    invoke-virtual {p1}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method protected destroy_()V
    .locals 2

    const/4 v0, 0x0

    .line 650
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 651
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    if-eqz v1, :cond_0

    .line 652
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 653
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    .line 655
    :cond_0
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 656
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 657
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_styleModelMap:Ljava/util/Map;

    .line 659
    :cond_1
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 660
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 661
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    .line 663
    :cond_2
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_targetIdSet:Ljava/util/HashSet;

    if-eqz v1, :cond_3

    .line 664
    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    .line 665
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_targetIdSet:Ljava/util/HashSet;

    .line 667
    :cond_3
    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method protected executeAndCreateReverseDirection_(Z)Lcom/metamoji/un/draw2/module/command/direction/DrDirection;
    .locals 23

    move-object/from16 v0, p0

    .line 351
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    goto/16 :goto_16

    :cond_0
    return-object v2

    .line 358
    :cond_1
    sget-object v1, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$command$DrCommandExecutionType:[I

    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->executionType()Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/command/DrCommandExecutionType;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eq v1, v8, :cond_6

    if-eq v1, v6, :cond_5

    if-eq v1, v5, :cond_5

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_3

    .line 372
    invoke-static {v7, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    if-eqz p1, :cond_2

    goto/16 :goto_16

    :cond_2
    return-object v2

    :cond_3
    move v1, v7

    goto :goto_0

    .line 366
    :cond_4
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_3

    move v1, v8

    :goto_0
    move v9, v7

    goto :goto_2

    :cond_5
    move v1, v7

    goto :goto_1

    .line 360
    :cond_6
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_model:Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_5

    move v1, v8

    :goto_1
    move v9, v8

    .line 377
    :goto_2
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v10

    invoke-virtual {v10}, Lcom/metamoji/un/draw2/module/DrModuleContext;->elementManager()Lcom/metamoji/un/draw2/module/element/DrElementManager;

    move-result-object v10

    .line 378
    iget-object v11, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_targetIdSet:Ljava/util/HashSet;

    invoke-virtual {v10, v11}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getOrderMapOfElementIdSet(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v11

    .line 381
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v12

    invoke-virtual {v12}, Lcom/metamoji/un/draw2/module/DrModuleContext;->commandManager()Lcom/metamoji/un/draw2/module/command/DrCommandManager;

    move-result-object v12

    .line 382
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v13

    invoke-virtual {v13}, Lcom/metamoji/un/draw2/module/DrModuleContext;->intervalManager()Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;

    move-result-object v14

    .line 383
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->collaborationId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v13

    .line 384
    iget-object v15, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-virtual {v15}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v20

    :goto_3
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_29

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;

    if-eqz v13, :cond_b

    .line 389
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->bySelf()Z

    move-result v16

    if-eqz v16, :cond_a

    invoke-virtual {v12, v13}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->checkCurrentCollaborationId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 391
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    sget-object v4, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_STYLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v12, v7, v4}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->getLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 395
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v16

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v18

    cmp-long v7, v16, v18

    if-nez v7, :cond_7

    .line 397
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    sget-object v7, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_STYLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v12, v4, v7, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    goto :goto_4

    .line 402
    :cond_7
    invoke-virtual {v13}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v16

    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;->count()J

    move-result-wide v18

    cmp-long v4, v16, v18

    if-gez v4, :cond_8

    goto :goto_5

    .line 406
    :cond_8
    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 411
    :cond_9
    invoke-static {v13}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_4

    .line 415
    :cond_a
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    sget-object v7, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ADD_REMOVE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v12, v4, v7, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 418
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v4

    sget-object v7, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->ERASE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

    invoke-virtual {v12, v4, v7, v2}, Lcom/metamoji/un/draw2/module/command/DrCommandManager;->setLatestCollaborationIdOfTarget(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    :cond_b
    :goto_4
    if-eqz v9, :cond_e

    .line 427
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mnextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v4

    if-eqz v4, :cond_c

    .line 428
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mnextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v4

    goto :goto_7

    .line 430
    :cond_c
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mnextStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_d

    .line 431
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mnextStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v4

    goto :goto_7

    .line 433
    :cond_d
    invoke-static {v5, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_5
    const/4 v4, 0x4

    :goto_6
    const/4 v7, 0x0

    goto/16 :goto_3

    .line 438
    :cond_e
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mprevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 439
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mprevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v4

    goto :goto_7

    .line 441
    :cond_f
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mprevStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 442
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mprevStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->restoreStyleFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v4

    :goto_7
    if-nez v4, :cond_10

    .line 450
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_5

    .line 455
    :cond_10
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-virtual {v10, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v7

    const/16 v21, -0x1

    if-eqz v7, :cond_1a

    .line 461
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->uid()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-interface {v11, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Number;

    if-eqz v3, :cond_11

    .line 463
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v21

    goto :goto_8

    :cond_11
    const/4 v3, 0x6

    .line 465
    invoke-static {v3, v2}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    :goto_8
    move/from16 v3, v21

    .line 470
    sget-object v16, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$1;->$SwitchMap$com$metamoji$un$draw2$module$element$DrElementType:[I

    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/DrElement;->type()Lcom/metamoji/un/draw2/module/element/DrElementType;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/metamoji/un/draw2/module/element/DrElementType;->ordinal()I

    move-result v17

    aget v2, v16, v17

    if-eq v2, v8, :cond_14

    if-eq v2, v6, :cond_13

    if-eq v2, v5, :cond_12

    const/4 v2, 0x7

    const/4 v3, 0x0

    .line 493
    invoke-static {v2, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_9

    .line 486
    :cond_12
    check-cast v7, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;

    .line 487
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStArrowPenStyle;

    move-result-object v2

    .line 488
    invoke-direct {v0, v7, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->applyStyleToArrowElement(Lcom/metamoji/un/draw2/module/element/arrow/DrArrowElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    goto :goto_9

    .line 479
    :cond_13
    check-cast v7, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;

    .line 480
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v2

    .line 481
    invoke-direct {v0, v7, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->applyStyleToShapeElement(Lcom/metamoji/un/draw2/module/element/shape/DrShapeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    goto :goto_9

    .line 472
    :cond_14
    check-cast v7, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    .line 473
    invoke-virtual {v7}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v2

    .line 474
    invoke-direct {v0, v7, v4, v3}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->applyStyleToStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;I)V

    :goto_9
    if-eqz v1, :cond_16

    if-eqz v9, :cond_15

    .line 502
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mnextStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    xor-int/2addr v3, v8

    .line 503
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v7

    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mprevStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v7, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result v5

    goto :goto_a

    .line 505
    :cond_15
    invoke-virtual {v2}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v3

    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mnextStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result v3

    xor-int/2addr v3, v8

    .line 506
    invoke-virtual {v4}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object v5

    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mprevStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->equals(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)Z

    move-result v5

    :goto_a
    xor-int/2addr v5, v8

    goto :goto_b

    :cond_16
    const/4 v3, 0x0

    const/4 v5, 0x0

    :goto_b
    if-eqz v9, :cond_17

    move-object v7, v4

    goto :goto_c

    :cond_17
    move-object v7, v2

    .line 511
    :goto_c
    invoke-static {v15, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetNextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    if-eqz v9, :cond_18

    move-object v4, v2

    .line 512
    :cond_18
    invoke-static {v15, v4}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetPrevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    if-eqz v3, :cond_19

    .line 516
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msaveNextStyleModelToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V

    :cond_19
    if-eqz v5, :cond_27

    .line 519
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    invoke-static {v15, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msavePrevStyleModelToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V

    goto/16 :goto_13

    .line 526
    :cond_1a
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)D

    move-result-wide v2

    const-wide/16 v16, 0x0

    cmpg-double v2, v2, v16

    if-ltz v2, :cond_27

    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)D

    move-result-wide v2

    cmpg-double v2, v2, v16

    if-gez v2, :cond_1b

    goto/16 :goto_13

    .line 533
    :cond_1b
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_1e

    .line 535
    invoke-static {v15}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v10, v2}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v2

    if-eqz v2, :cond_1c

    goto/16 :goto_13

    :cond_1c
    move-object v2, v15

    .line 540
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)D

    move-result-wide v15

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)D

    move-result-wide v17

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v19

    invoke-virtual/range {v14 .. v19}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalContainingInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    if-eqz v3, :cond_1d

    goto/16 :goto_13

    .line 545
    :cond_1d
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)D

    move-result-wide v15

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)D

    move-result-wide v17

    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v19

    invoke-virtual/range {v14 .. v19}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getSubIntervalsOfInterval(DDLcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v3

    goto :goto_d

    :cond_1e
    move-object v2, v15

    .line 548
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v3

    invoke-virtual {v14, v3}, Lcom/metamoji/un/draw2/library/interval/DrInIntervalManager;->getIntervalsInGroup(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/util/List;

    move-result-object v3

    :goto_d
    if-eqz v3, :cond_27

    .line 552
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_1f

    goto/16 :goto_13

    .line 557
    :cond_1f
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v10, v5}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getOrderMapOfElementIdSet(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v5

    .line 560
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 561
    invoke-virtual {v10, v7}, Lcom/metamoji/un/draw2/module/element/DrElementManager;->getElementById(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Lcom/metamoji/un/draw2/module/element/DrElement;

    move-result-object v15

    check-cast v15, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;

    if-nez v15, :cond_20

    const/16 v15, 0x8

    .line 563
    invoke-static {v7}, Lcom/metamoji/un/draw2/library/utility/id/DrUtIdGenerator;->stringFromId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v15, v7}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    goto :goto_e

    .line 569
    :cond_20
    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Number;

    if-eqz v16, :cond_21

    .line 571
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Number;->intValue()I

    move-result v16

    move/from16 v6, v16

    const/4 v8, 0x0

    goto :goto_f

    :cond_21
    const/16 v6, 0x9

    const/4 v8, 0x0

    .line 573
    invoke-static {v6, v8}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move/from16 v6, v21

    :goto_f
    if-eqz v1, :cond_24

    move/from16 v18, v1

    .line 579
    new-instance v1, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;

    invoke-direct {v1, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection-IA;)V

    .line 580
    invoke-static {v1, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    if-eqz v9, :cond_22

    move-object v7, v4

    goto :goto_10

    .line 581
    :cond_22
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v7

    :goto_10
    invoke-static {v1, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetNextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    if-eqz v9, :cond_23

    .line 582
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->penStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object v7

    goto :goto_11

    :cond_23
    move-object v7, v4

    :goto_11
    invoke-static {v1, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetPrevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    .line 583
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->startIndex()D

    move-result-wide v7

    invoke-static {v1, v7, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;D)V

    .line 584
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->endIndex()D

    move-result-wide v7

    invoke-static {v1, v7, v8}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;D)V

    .line 585
    invoke-virtual {v15}, Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v7

    invoke-static {v1, v7}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    .line 588
    invoke-direct {v0, v15, v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->applyStyleToStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;I)V

    .line 591
    const-string v6, "i"

    iget-object v7, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v6, v7}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v6

    .line 592
    invoke-static {v1, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msaveToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V

    .line 593
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_model:Lcom/metamoji/df/model/IModel;

    invoke-static {v6, v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->addChild(Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    goto :goto_12

    :cond_24
    move/from16 v18, v1

    .line 596
    invoke-direct {v0, v15, v4, v6}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->applyStyleToStrokeElement(Lcom/metamoji/un/draw2/module/element/stroke/DrStrokeElement;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;I)V

    :goto_12
    move/from16 v1, v18

    const/4 v6, 0x2

    const/4 v8, 0x1

    goto/16 :goto_e

    :cond_25
    move/from16 v18, v1

    if-eqz v18, :cond_26

    .line 602
    invoke-static {v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removeChild(Lcom/metamoji/df/model/IModel;)V

    :cond_26
    move/from16 v1, v18

    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    goto :goto_14

    :cond_27
    :goto_13
    const/4 v2, 0x0

    const/4 v3, 0x5

    const/4 v4, 0x4

    const/4 v5, 0x3

    goto/16 :goto_6

    :cond_28
    move/from16 v18, v1

    move-object v3, v2

    const/4 v1, 0x4

    .line 444
    invoke-static {v1, v3}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    move v4, v1

    move/from16 v1, v18

    const/4 v3, 0x5

    :goto_14
    const/4 v5, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x1

    goto/16 :goto_3

    .line 607
    :cond_29
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-lez v1, :cond_2c

    .line 608
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->context()Lcom/metamoji/un/draw2/module/DrModuleContext;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/un/draw2/module/DrModuleContext;->selectionManager()Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;

    move-result-object v1

    .line 609
    iget-object v2, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2a
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/un/draw2/module/selection/DrSelection;

    .line 610
    invoke-virtual {v3}, Lcom/metamoji/un/draw2/module/selection/DrSelection;->isEditing()Z

    move-result v4

    if-nez v4, :cond_2a

    .line 611
    invoke-virtual {v1, v3}, Lcom/metamoji/un/draw2/module/selection/DrSelectionManager;->updateSelection(Lcom/metamoji/un/draw2/module/selection/DrSelection;)V

    goto :goto_15

    .line 614
    :cond_2b
    iget-object v1, v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    :cond_2c
    if-eqz p1, :cond_2d

    :goto_16
    return-object v0

    :cond_2d
    const/16 v22, 0x0

    return-object v22
.end method

.method protected hasReverse_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected init_()Z
    .locals 1

    .line 328
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_selectionMap:Ljava/util/Map;

    .line 330
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_targetIdSet:Ljava/util/HashSet;

    const/4 v0, 0x1

    return v0
.end method

.method protected restoreFromModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 622
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_model:Lcom/metamoji/df/model/IModel;

    .line 623
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->firstChild(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 625
    new-instance v0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;-><init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection-IA;)V

    .line 626
    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$mrestoreFromModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V

    .line 627
    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 628
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_targetIdSet:Ljava/util/HashSet;

    invoke-static {v0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 631
    invoke-static {v0, v1}, Lcom/metamoji/un/draw2/library/utility/application/DrUtLogger;->error(ILjava/lang/String;)V

    .line 633
    :goto_1
    invoke-static {p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->nextSibling(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected saveToModel_(Lcom/metamoji/df/model/IModel;)Z
    .locals 3

    .line 640
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_internalMap:Ljava/util/HashMap;

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

    check-cast v1, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;

    .line 641
    const-string v2, "i"

    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->newModelWithType(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v2

    .line 642
    invoke-static {v1, v2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->-$$Nest$msaveToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V

    .line 643
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

    .line 321
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-void
.end method

.method protected type_()Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;
    .locals 1

    .line 336
    sget-object v0, Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;->CHANGE_STYLE:Lcom/metamoji/un/draw2/module/command/direction/DrDirectionType;

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

    .line 320
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;->m_updatedElementIds:Ljava/util/HashSet;

    return-object v0
.end method
