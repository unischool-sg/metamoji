.class public Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "UnFlipUnitBackgroundColorDirectionData.java"


# static fields
.field private static final MMJUN_MODELPROPVALUE_FLIP_UNIT_BACKGROUND_COLOR_DIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJUN_MODELPROP_FLIP_UNIT_DIRECTION_BACKGROUND_COLOR:Ljava/lang/String; = "b"

.field private static final MMJUN_MODELTYPE_FLIP_UNIT_BACKGROUND_COLOR_DIRECTION:Ljava/lang/String; = "flipUnitBackgroundColorDirection"


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
    const-string v0, "flipUnitBackgroundColorDirection"

    invoke-static {p0, v0}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;
    .locals 2

    .line 41
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 43
    const-string v0, "!type"

    const-string v1, "flipUnitBackgroundColorDirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public getBackgroundColor()Ljava/lang/String;
    .locals 2

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 61
    const-string v1, "b"

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

    .line 30
    iget-object v0, p0, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public setBackgroundColor(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/un/flip/direction/UnFlipUnitBackgroundColorDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    .line 67
    const-string v1, "b"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method
