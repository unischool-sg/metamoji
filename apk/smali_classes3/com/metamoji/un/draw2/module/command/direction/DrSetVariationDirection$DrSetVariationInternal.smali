.class Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;
.super Ljava/lang/Object;
.source "DrSetVariationDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrSetVariationInternal"
.end annotation


# instance fields
.field private m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

.field private m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_nextLineWidth:F

.field private m_nextVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

.field private m_prevLineWidth:F

.field private m_prevVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

.field private m_strokeEndIndex:D

.field private m_strokeStartIndex:D


# direct methods
.method static bridge synthetic -$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mbaseType(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/module/element/DrElementBaseType;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/df/model/IModel;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->nextLineWidth()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mnextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->nextVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)F
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->prevLineWidth()F

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->prevVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBaseType(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setBaseType(Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNextLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setNextLineWidth(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNextVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setNextVariation(Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrevLineWidth(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setPrevLineWidth(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrevVariation(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setPrevVariation(Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setStrokeEndIndex(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->setStrokeStartIndex(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)D
    .locals 2

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->strokeEndIndex()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;)D
    .locals 2

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->strokeStartIndex()D

    move-result-wide v0

    return-wide v0
.end method

.method constructor <init>()V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 67
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeStartIndex:D

    .line 68
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeEndIndex:D

    const/high16 v0, -0x40800000    # -1.0f

    .line 69
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextLineWidth:F

    .line 70
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevLineWidth:F

    return-void
.end method

.method private baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method private baseType()Lcom/metamoji/un/draw2/module/element/DrElementBaseType;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-object v0
.end method

.method private elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method static getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 243
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method private model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method private nextLineWidth()F
    .locals 1

    .line 112
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextLineWidth:F

    return v0
.end method

.method private nextVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    return-object v0
.end method

.method private prevLineWidth()F
    .locals 1

    .line 116
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevLineWidth:F

    return v0
.end method

.method private prevVariation()Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    return-object v0
.end method

.method private setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 109
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private setBaseType(Lcom/metamoji/un/draw2/module/element/DrElementBaseType;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    return-void
.end method

.method private setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private setNextLineWidth(F)V
    .locals 0

    .line 113
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextLineWidth:F

    return-void
.end method

.method private setNextVariation(Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    return-void
.end method

.method private setPrevLineWidth(F)V
    .locals 0

    .line 117
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevLineWidth:F

    return-void
.end method

.method private setPrevVariation(Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    return-void
.end method

.method private setStrokeEndIndex(D)V
    .locals 0

    .line 105
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeEndIndex:D

    return-void
.end method

.method private setStrokeStartIndex(D)V
    .locals 0

    .line 101
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeStartIndex:D

    return-void
.end method

.method private strokeEndIndex()D
    .locals 2

    .line 104
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeEndIndex:D

    return-wide v0
.end method

.method private strokeStartIndex()D
    .locals 2

    .line 100
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeStartIndex:D

    return-wide v0
.end method


# virtual methods
.method restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 120
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_model:Lcom/metamoji/df/model/IModel;

    .line 123
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 126
    const-string/jumbo v0, "t"

    sget-object v1, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;->POINTS:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    .line 129
    const-string v0, "n"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 131
    new-instance v1, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    .line 132
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setArray(Ljava/util/List;)V

    .line 136
    :cond_0
    const-string v0, "p"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->numberArrayPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 138
    new-instance v1, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    invoke-direct {v1}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;-><init>()V

    iput-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    .line 139
    invoke-virtual {v1, v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->setArray(Ljava/util/List;)V

    .line 143
    :cond_1
    const-string/jumbo v0, "s"

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeStartIndex:D

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeStartIndex:D

    .line 148
    const-string v0, "e"

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeEndIndex:D

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeEndIndex:D

    .line 153
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 156
    const-string v0, "l"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextLineWidth:F

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextLineWidth:F

    .line 159
    const-string/jumbo v0, "w"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevLineWidth:F

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->floatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)F

    move-result p1

    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevLineWidth:F

    return-void
.end method

.method saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "b"

    if-eqz v0, :cond_0

    .line 220
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 222
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveBaseTypeToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 183
    const-string/jumbo v0, "t"

    iget-object v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_baseType:Lcom/metamoji/un/draw2/module/element/DrElementBaseType;

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;Ljava/lang/Enum;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 175
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 176
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 178
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public saveNextLineWidthToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 227
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextLineWidth:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string v2, "l"

    if-ltz v1, :cond_0

    .line 228
    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 230
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveNextVariationToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 187
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_nextVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    const-string v1, "n"

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->array()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 190
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method public savePrevLineWidthToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 235
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevLineWidth:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const-string/jumbo v2, "w"

    if-ltz v1, :cond_0

    .line 236
    invoke-static {v2, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setFloatPropertyForName(Ljava/lang/String;FLcom/metamoji/df/model/IModel;)V

    return-void

    .line 238
    :cond_0
    invoke-static {v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method savePrevVariationToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_prevVariation:Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;

    const-string v1, "p"

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Lcom/metamoji/un/draw2/library/utility/variation/DrUtVariation;->array()Ljava/util/List;

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setArrayPropertyForName(Ljava/lang/String;Ljava/util/List;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 198
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 211
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeEndIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string v3, "e"

    if-ltz v2, :cond_0

    .line 212
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 214
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 203
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->m_strokeStartIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string/jumbo v3, "s"

    if-ltz v2, :cond_0

    .line 204
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 206
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 163
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveBaseTypeToModel(Lcom/metamoji/df/model/IModel;)V

    .line 165
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveNextVariationToModel(Lcom/metamoji/df/model/IModel;)V

    .line 166
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->savePrevVariationToModel(Lcom/metamoji/df/model/IModel;)V

    .line 167
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 168
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 169
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 170
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->saveNextLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    .line 171
    invoke-virtual {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrSetVariationDirection$DrSetVariationInternal;->savePrevLineWidthToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method
