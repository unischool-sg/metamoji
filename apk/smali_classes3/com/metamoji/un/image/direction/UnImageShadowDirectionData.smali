.class public Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;
.super Lcom/metamoji/ns/direction/NsDirectionData;
.source "UnImageShadowDirectionData.java"


# static fields
.field private static final MMJUN_MODELPROPVALUE_IMAGESHADOWDIRECTION_VERSION_LATEST:I = 0x1

.field private static final MMJUN_MODELPROP_IMAGESHADOWDIRECTION_HAS_SHADOW:Ljava/lang/String; = "s"

.field private static final MMJUN_MODELTYPE_IMAGESHADOWDIRECTION:Ljava/lang/String; = "imageshadowdirection"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/metamoji/ns/direction/NsDirectionData;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private getDirectionAsMap()Ljava/util/Map;
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

    .line 43
    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;->m_direction:Ljava/lang/Object;

    instance-of v0, v0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 44
    iget-object v0, p0, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;->m_direction:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 1

    .line 62
    const-string v0, "imageshadowdirection"

    invoke-static {p0, v0}, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;
    .locals 2

    .line 34
    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 36
    const-string v0, "!type"

    const-string v1, "imageshadowdirection"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "!version"

    invoke-virtual {p0, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v0, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public hasShadow()Z
    .locals 2

    .line 69
    invoke-direct {p0}, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 70
    instance-of v1, v0, Ljava/lang/Boolean;

    if-nez v1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 71
    :cond_1
    :goto_0
    const-string v0, "has-shadow value not found in image-shadow-direction."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public setHasShadow(Z)V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/metamoji/un/image/direction/UnImageShadowDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    const-string/jumbo v1, "s"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
