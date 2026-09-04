.class Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;
.super Ljava/lang/Object;
.source "DrChangeStyleDirection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DrChangeStyleInternal"
.end annotation


# instance fields
.field private m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

.field private m_model:Lcom/metamoji/df/model/IModel;

.field m_nextStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

.field private m_nextStyleModel:Lcom/metamoji/df/model/IModel;

.field m_prevStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

.field private m_prevStyleModel:Lcom/metamoji/df/model/IModel;

.field private m_strokeEndIndex:D

.field private m_strokeStartIndex:D


# direct methods
.method static bridge synthetic -$$Nest$mbaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$melementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmodel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->nextStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mnextStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->nextStyleModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->prevStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprevStyleModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)Lcom/metamoji/df/model/IModel;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->prevStyleModel()Lcom/metamoji/df/model/IModel;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mrestoreFromModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->restoreFromModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveNextStyleModelToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->saveNextStyleModelToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msavePrevStyleModelToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->savePrevStyleModelToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msaveToModel(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/df/model/IModel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->saveToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetBaseStrokeId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetElementId(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetNextStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->setNextStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPrevStyle(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->setPrevStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->setStrokeEndIndex(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetStrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;D)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->setStrokeStartIndex(D)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstrokeEndIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)D
    .locals 2

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->strokeEndIndex()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$mstrokeStartIndex(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;)D
    .locals 2

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->strokeStartIndex()D

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$smgetElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 0

    invoke-static {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 57
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeStartIndex:D

    .line 58
    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeEndIndex:D

    return-void
.end method

.method synthetic constructor <init>(Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection-IA;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;-><init>()V

    return-void
.end method

.method private baseStrokeId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method private elementId()Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-object v0
.end method

.method private static getElementIdFromModel(Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;
    .locals 1

    .line 189
    const-string v0, "i"

    invoke-static {v0, p0}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p0

    return-object p0
.end method

.method private model()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method private nextStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_nextStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    return-object v0
.end method

.method private nextStyleModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_nextStyleModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method private prevStyle()Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_prevStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    return-object v0
.end method

.method private prevStyleModel()Lcom/metamoji/df/model/IModel;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_prevStyleModel:Lcom/metamoji/df/model/IModel;

    return-object v0
.end method

.method private restoreFromModel(Lcom/metamoji/df/model/IModel;)V
    .locals 3

    .line 110
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_model:Lcom/metamoji/df/model/IModel;

    .line 113
    const-string v0, "i"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    .line 116
    const-string v0, "n"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_nextStyleModel:Lcom/metamoji/df/model/IModel;

    .line 119
    const-string v0, "p"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->modelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/df/model/IModel;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_prevStyleModel:Lcom/metamoji/df/model/IModel;

    .line 122
    const-string/jumbo v0, "s"

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeStartIndex:D

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeStartIndex:D

    .line 125
    const-string v0, "e"

    iget-wide v1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeEndIndex:D

    invoke-static {v0, v1, v2, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->doublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeEndIndex:D

    .line 128
    const-string v0, "b"

    invoke-static {v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->idForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "b"

    if-eqz v0, :cond_0

    .line 182
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 184
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    const-string v1, "i"

    if-eqz v0, :cond_0

    .line 142
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setIdForName(Ljava/lang/String;Lcom/metamoji/un/draw2/library/utility/id/DrUtId;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 144
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveNextStyleModelToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_nextStyleModel:Lcom/metamoji/df/model/IModel;

    const-string v1, "n"

    if-eqz v0, :cond_0

    .line 150
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 152
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private savePrevStyleModelToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_prevStyleModel:Lcom/metamoji/df/model/IModel;

    const-string v1, "p"

    if-eqz v0, :cond_0

    .line 158
    invoke-static {v1, v0, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setModelPropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;Lcom/metamoji/df/model/IModel;)V

    return-void

    .line 160
    :cond_0
    invoke-static {v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 173
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeEndIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string v3, "e"

    if-ltz v2, :cond_0

    .line 174
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 176
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 4

    .line 165
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeStartIndex:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    const-string/jumbo v3, "s"

    if-ltz v2, :cond_0

    .line 166
    invoke-static {v3, v0, v1, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->setDoublePropertyForName(Ljava/lang/String;DLcom/metamoji/df/model/IModel;)V

    return-void

    .line 168
    :cond_0
    invoke-static {v3, p1}, Lcom/metamoji/un/draw2/library/accessor/DrAcModel;->removePropertyForName(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private saveToModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->saveElementIdToModel(Lcom/metamoji/df/model/IModel;)V

    .line 133
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->saveNextStyleModelToModel(Lcom/metamoji/df/model/IModel;)V

    .line 134
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->savePrevStyleModelToModel(Lcom/metamoji/df/model/IModel;)V

    .line 135
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->saveStrokeStartIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 136
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->saveStrokeEndIndexToModel(Lcom/metamoji/df/model/IModel;)V

    .line 137
    invoke-direct {p0, p1}, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->saveBaseStrokeIdToModel(Lcom/metamoji/df/model/IModel;)V

    return-void
.end method

.method private setBaseStrokeId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_baseStrokeId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private setElementId(Lcom/metamoji/un/draw2/library/utility/id/DrUtId;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_elementId:Lcom/metamoji/un/draw2/library/utility/id/DrUtId;

    return-void
.end method

.method private setModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_model:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private setNextStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_nextStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_nextStyleModel:Lcom/metamoji/df/model/IModel;

    :cond_0
    return-void
.end method

.method private setNextStyleModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 81
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_nextStyleModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private setPrevStyle(Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;)V
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_prevStyle:Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;

    if-eqz p1, :cond_0

    .line 89
    invoke-virtual {p1}, Lcom/metamoji/un/draw2/library/style/pen/DrStPenStyle;->model()Lcom/metamoji/df/model/IModel;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_prevStyleModel:Lcom/metamoji/df/model/IModel;

    :cond_0
    return-void
.end method

.method private setPrevStyleModel(Lcom/metamoji/df/model/IModel;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_prevStyleModel:Lcom/metamoji/df/model/IModel;

    return-void
.end method

.method private setStrokeEndIndex(D)V
    .locals 0

    .line 103
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeEndIndex:D

    return-void
.end method

.method private setStrokeStartIndex(D)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeStartIndex:D

    return-void
.end method

.method private strokeEndIndex()D
    .locals 2

    .line 102
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeEndIndex:D

    return-wide v0
.end method

.method private strokeStartIndex()D
    .locals 2

    .line 98
    iget-wide v0, p0, Lcom/metamoji/un/draw2/module/command/direction/DrChangeStyleDirection$DrChangeStyleInternal;->m_strokeStartIndex:D

    return-wide v0
.end method
