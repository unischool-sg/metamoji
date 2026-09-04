.class Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;
.super Ljava/lang/Object;
.source "DrChangeOrderDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrChangeOrderInternal"
.end annotation


# instance fields
.field private m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field private m_nextOrder:I

.field private m_prevOrder:I

.field private m_strokeEndIndex:D

.field private m_strokeStartIndex:D


# direct methods
.method static bridge synthetic -$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)Lcom/metamoji/df/model/IModel;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->nextOrder()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mprevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)I
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->prevOrder()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mrestoreFromModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveNextOrderToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->saveNextOrderToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msavePrevOrderToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->savePrevOrderToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->setModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNextOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->setNextOrder(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrevOrder(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->setPrevOrder(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->setStrokeEndIndex(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->setStrokeStartIndex(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D
    .locals 2

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->strokeEndIndex()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;)D
    .locals 2

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->strokeStartIndex()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smgetElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 76
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_nextOrder:I

    .line 77
    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_prevOrder:I

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 78
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeStartIndex:D

    .line 79
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeEndIndex:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;-><init>()V

    return-void
.end method

.method private baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method private elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method private static getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 190
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method private model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method private nextOrder()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_nextOrder:I

    return v0
.end method

.method private prevOrder()I
    .locals 1

    .line 95
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_prevOrder:I

    return v0
.end method

.method private restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 111
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_model:Lcom/metamoji/df/model/IModel;

    .line 114
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 117
    const-string v0, "n"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_nextOrder:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_nextOrder:I

    .line 120
    const-string v0, "p"

    iget v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_prevOrder:I

    invoke-static {v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->intPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)I

    move-result v0

    iput v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_prevOrder:I

    .line 123
    const-string/jumbo v0, "s"

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeStartIndex:D

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeStartIndex:D

    .line 126
    const-string v0, "e"

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeEndIndex:D

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeEndIndex:D

    .line 129
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 182
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "b"

    if-eqz v0, :cond_0

    .line 183
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 185
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 143
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 145
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveNextOrderToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 150
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_nextOrder:I

    const-string v1, "n"

    if-ltz v0, :cond_0

    .line 151
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 153
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private savePrevOrderToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 158
    iget v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_prevOrder:I

    const-string v1, "p"

    if-ltz v0, :cond_0

    .line 159
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIntPropertyForName(Ljava/lang/String;ILcom/metamoji/df/model/IModel;)V

    return-void

    .line 161
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 174
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeEndIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string v3, "e"

    if-ltz v2, :cond_0

    .line 175
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 177
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 166
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeStartIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string/jumbo v3, "s"

    if-ltz v2, :cond_0

    .line 167
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 169
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 133
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->saveNextOrderToModel(Lcom/metamoji/df/model/IModel;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->savePrevOrderToModel(Lcom/metamoji/df/model/IModel;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 138
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private setNextOrder(I)V
    .locals 0

    .line 92
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_nextOrder:I

    return-void
.end method

.method private setPrevOrder(I)V
    .locals 0

    .line 96
    iput p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_prevOrder:I

    return-void
.end method

.method private setStrokeEndIndex(D)V
    .locals 0

    .line 104
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeEndIndex:D

    return-void
.end method

.method private setStrokeStartIndex(D)V
    .locals 0

    .line 100
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeStartIndex:D

    return-void
.end method

.method private strokeEndIndex()D
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeEndIndex:D

    return-wide v0
.end method

.method private strokeStartIndex()D
    .locals 2

    .line 99
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeOrderDirection$DrChangeOrderInternal;->m_strokeStartIndex:D

    return-wide v0
.end method
