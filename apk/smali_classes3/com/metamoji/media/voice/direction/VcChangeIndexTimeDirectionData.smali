.class public Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "VcChangeIndexTimeDirectionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData$IForEachBlock;
    }
.end annotation


# static fields
.field private static final MODELPROPVALUE_CHANGE_INDEX_TIME_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MODELPROP_CHANGE_INDEX_TIME_END_TIME_DIRECTION_TABLE:Ljava/lang/String; = "e"

.field private static final MODELPROP_CHANGE_INDEX_TIME_START_TIME_DIRECTION_TABLE:Ljava/lang/String; = "s"

.field private static final MODELPROP_CHANGE_INDEX_TIME_TICKET_DIRECTION_TABLE:Ljava/lang/String; = "i"

.field private static final MODELTYPE_CHANGE_INDEX_TIME_DIRECTION:Ljava/lang/String; = "changeIndexTimeDirection"


# instance fields
.field private _direction:Lcom/metamoji/df/model/IModel;

.field private _endTimeTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _startTimeTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private _ticketTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 2

    .line 38
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 39
    iput-object p1, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    .line 42
    const-string/jumbo v0, "s"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_0

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_startTimeTable:Ljava/util/Map;

    goto :goto_0

    .line 46
    :cond_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_startTimeTable:Ljava/util/Map;

    .line 50
    :goto_0
    const-string v0, "e"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_endTimeTable:Ljava/util/Map;

    goto :goto_1

    .line 54
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v1, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_endTimeTable:Ljava/util/Map;

    .line 58
    :goto_1
    const-string v0, "i"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_2

    .line 60
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_ticketTable:Ljava/util/Map;

    return-void

    .line 62
    :cond_2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_ticketTable:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 91
    const-string v0, "changeIndexTimeDirection"

    invoke-static {p0, v0}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;
    .locals 1

    .line 70
    const-string v0, "changeIndexTimeDirection"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 71
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 72
    new-instance v0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method


# virtual methods
.method public forEachIndex(Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData$IForEachBlock;)Z
    .locals 10

    .line 104
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_startTimeTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 105
    iget-object v2, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_startTimeTable:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    .line 106
    iget-object v2, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_endTimeTable:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    .line 107
    iget-object v2, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_ticketTable:Ljava/util/Map;

    invoke-interface {v2, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object v3, p1

    .line 108
    invoke-interface/range {v3 .. v9}, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData$IForEachBlock;->block(Ljava/lang/String;Ljava/lang/String;DD)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    move v1, p1

    :cond_0
    move-object p1, v3

    goto :goto_0

    :cond_1
    return v1
.end method

.method public setStartTime(Ljava/lang/String;Ljava/lang/String;DD)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_startTimeTable:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    iget-object p3, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    const-string/jumbo p4, "s"

    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_startTimeTable:Ljava/util/Map;

    invoke-interface {p3, p4, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 83
    iget-object p3, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_endTimeTable:Ljava/util/Map;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-interface {p3, p2, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object p3, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    const-string p4, "e"

    iget-object p5, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_endTimeTable:Ljava/util/Map;

    invoke-interface {p3, p4, p5}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    .line 86
    iget-object p3, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_ticketTable:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    const-string p2, "i"

    iget-object p3, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->_ticketTable:Ljava/util/Map;

    invoke-interface {p1, p2, p3}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/voice/direction/VcChangeIndexTimeDirectionData;->m_direction:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
