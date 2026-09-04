.class public Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "UnFlipUnitFlipStateDirectionData.java"


# static fields
.field private static final MMJUN_MODELPROPVALUE_FLIP_UNIT_FLIP_STATE_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJUN_MODELPROP_FLIP_UNIT_DIRECTION_FLIP_STATE:Ljava/lang/String; = "s"

.field private static final MMJUN_MODELTYPE_FLIP_UNIT_FLIP_STATE_DIRECTION:Ljava/lang/String; = "flipUnitFlipStateDirection"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 52
    const-string v0, "flipUnitFlipStateDirection"

    invoke-static {p0, v0}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;
    .locals 2

    .line 41
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string v0, "!type"

    const-string v1, "flipUnitFlipStateDirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;-><init>(Ljava/lang/Object;)V

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

    .line 30
    iget-object v0, p0, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFlipState()I
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 61
    const-string/jumbo v1, "s"

    invoke-static {v0, v1}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public setFlipState(I)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/un/flip/direction/UnFlipUnitFlipStateDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 66
    const-string/jumbo v1, "s"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
