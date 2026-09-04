.class public Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "VcRemoveRecordingsDirectionData.java"


# static fields
.field private static final MODELPROPVALUE_REMOVERECORDINGSDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MODELPROP_REMOVERECORDINGSDIRECTION_TABLE:Ljava/lang/String; = "t"

.field private static final MODELTYPE_REMOVERECORDINGSDIRECTION:Ljava/lang/String; = "removerecordingsdirection"


# instance fields
.field private _direction:Ljava/util/Map;
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
.method public constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 30
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    .line 31
    iput-object p1, p0, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->_direction:Ljava/util/Map;

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 59
    const-string v0, "removerecordingsdirection"

    invoke-static {p0, v0}, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;
    .locals 2

    .line 40
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 41
    const-string v0, "!type"

    const-string v1, "removerecordingsdirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 42
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v0, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;-><init>(Ljava/util/Map;)V

    return-object v0
.end method


# virtual methods
.method public getRemoveTickets()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 67
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->_direction:Ljava/util/Map;

    const-string/jumbo v1, "t"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public setRemoveTickets(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->_direction:Ljava/util/Map;

    const-string/jumbo v1, "t"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/voice/direction/VcRemoveRecordingsDirectionData;->m_direction:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
