.class public Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "VcUploadedRecordingDirectionData.java"


# static fields
.field private static final MODELPROPVALUE_UPLOADED_RECORDING_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MODELPROP_UPLOADED_RECORDING_TICKET:Ljava/lang/String; = "t"

.field private static final MODELTYPE_UPLOAD_RECORDING_DIRECTION:Ljava/lang/String; = "uploadedRecordingDirection"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 53
    const-string/jumbo v0, "uploadedRecordingDirection"

    invoke-static {p0, v0}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionData(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;
    .locals 2

    .line 46
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 47
    const-string v0, "!type"

    const-string/jumbo v1, "uploadedRecordingDirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 48
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v0, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getDirectionAsMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 71
    const-string/jumbo v1, "t"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 62
    const-string/jumbo v1, "t"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/metamoji/media/voice/direction/VcUploadedRecordingDirectionData;->m_direction:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
