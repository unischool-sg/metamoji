.class public Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "UnSoundUnitTicketDirectionData.java"


# static fields
.field private static final MMJUN_MODELPROPVALUE_SOUND_UNIT_TICKET_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJUN_MODELPROP_SOUND_UNIT_DIRECTION_AUTHORINFO:Ljava/lang/String; = "a"

.field private static final MMJUN_MODELPROP_SOUND_UNIT_DIRECTION_TICKET:Ljava/lang/String; = "t"

.field private static final MMJUN_MODELTYPE_SOUND_UNIT_TICKET_DIRECTION:Ljava/lang/String; = "soundUnitTicketDirection"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 57
    const-string/jumbo v0, "soundUnitTicketDirection"

    invoke-static {p0, v0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;
    .locals 2

    .line 46
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 48
    const-string v0, "!type"

    const-string/jumbo v1, "soundUnitTicketDirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 49
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getAuthorInfo()Ljava/lang/String;
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 79
    const-string v1, "a"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

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

    .line 36
    iget-object v0, p0, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 37
    iget-object v0, p0, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "t"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public setAuthorInfo(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 86
    const-string v1, "a"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/metamoji/un/sound/direction/UnSoundUnitTicketDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 73
    const-string/jumbo v1, "t"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
