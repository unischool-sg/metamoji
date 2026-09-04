.class public Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "VcAddRecordingsDirectionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData$IForEachBlock;
    }
.end annotation


# static fields
.field private static final MODELPROPVALUE_ADD_RECORDINGS_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MODELPROP_ADD_RECORDINGS_DIRECTION_TABLE:Ljava/lang/String; = "t"

.field private static final MODELTYPE_ADD_RECORDINGS_DIRECTION:Ljava/lang/String; = "addRecordingsDirection"


# instance fields
.field private _direction:Lcom/metamoji/df/model/IModel;

.field private _ticketModelMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/metamoji/df/model/IModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 32
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 33
    iput-object p1, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    .line 36
    const-string/jumbo v0, "t"

    invoke-interface {p1, v0}, Lcom/metamoji/df/model/IModel;->getPropertyAsDictionary(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-nez p1, :cond_0

    .line 38
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->_ticketModelMap:Ljava/util/Map;

    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->_ticketModelMap:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 67
    const-string v0, "addRecordingsDirection"

    invoke-static {p0, v0}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;
    .locals 1

    .line 50
    const-string v0, "addRecordingsDirection"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x1

    .line 51
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 52
    new-instance v0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;-><init>(Lcom/metamoji/df/model/IModel;)V

    return-object v0
.end method


# virtual methods
.method public addModel(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->_ticketModelMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    iget-object p1, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->_direction:Lcom/metamoji/df/model/IModel;

    const-string/jumbo p2, "t"

    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->_ticketModelMap:Ljava/util/Map;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public forEachModel(Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData$IForEachBlock;)Z
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->_ticketModelMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 81
    iget-object v3, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->_ticketModelMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/df/model/IModel;

    .line 82
    invoke-interface {p1, v2, v3}, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData$IForEachBlock;->block(Ljava/lang/String;Lcom/metamoji/df/model/IModel;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/voice/direction/VcAddRecordingsDirectionData;->m_direction:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
