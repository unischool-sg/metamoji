.class Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;
.super Ljava/lang/Object;
.source "DrApplyVariationDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrApplyVariationInternal"
.end annotation


# instance fields
.field private m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

.field private m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_variation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;-><init>()V

    return-void
.end method


# virtual methods
.method baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-object v0
.end method

.method elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 64
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_model:Lcom/metamoji/df/model/IModel;

    .line 67
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 70
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    .line 73
    const-string/jumbo v0, "v"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 75
    new-instance v0, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_variation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    .line 76
    invoke-virtual {v0, p1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setArray(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 83
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    goto :goto_0

    .line 85
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    .line 89
    :goto_0
    const-string/jumbo v0, "t"

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    .line 92
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_variation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    const-string/jumbo v1, "v"

    if-eqz v0, :cond_1

    .line 93
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->array()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 95
    :cond_1
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method setBaseType(Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-void
.end method

.method setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method setVariation(Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_variation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    return-void
.end method

.method variation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrApplyVariationDirection$DrApplyVariationInternal;->m_variation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    return-object v0
.end method
