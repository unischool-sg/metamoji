.class public Lcom/metamoji/un/web/direction/UnWebURLDirectionData;
.super Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;
.source "UnWebURLDirectionData.java"


# static fields
.field private static final MMJUN_MODELPROPVALUE_WEBURLDIRECTION_VERSION_LATEST:I = 0x2

.field private static final MMJUN_MODELPROP_WEBURLDIRECTION_REQUEST_URL:Ljava/lang/String; = "reu"

.field private static final MMJUN_MODELPROP_WEBURLDIRECTION_TICKET:Ljava/lang/String; = "tic"

.field private static final MMJUN_MODELTYPE_WEBURLDIRECTION:Ljava/lang/String; = "weburldirection"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/metamoji/un/image/direction/UnImageMaskingDirectionData;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method private getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 56
    invoke-virtual {p0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getDirectionAsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {v0, p1}, Lcom/metamoji/df/model/IModel;->getPropertyAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getDirectionAsMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public static isTargetDirection(Ljava/lang/Object;)Z
    .locals 2

    .line 47
    const-string/jumbo v0, "weburldirection"

    invoke-static {p0, v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 48
    invoke-static {p0, v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static newDirectionDataWithModelManager(Lcom/metamoji/df/model/IModelManager;)Lcom/metamoji/un/web/direction/UnWebURLDirectionData;
    .locals 1

    .line 38
    const-string/jumbo v0, "weburldirection"

    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModelManager;->newModel(Ljava/lang/String;)Lcom/metamoji/df/model/IModel;

    move-result-object p0

    const/4 v0, 0x2

    .line 39
    invoke-interface {p0, v0}, Lcom/metamoji/df/model/IModel;->setVersion(I)V

    .line 40
    new-instance v0, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;

    invoke-direct {v0, p0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private setString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 66
    invoke-virtual {p0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getDirectionAsModel()Lcom/metamoji/df/model/IModel;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/metamoji/df/model/IModel;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->mAvailable:Z

    return-void
.end method


# virtual methods
.method public getRequestURL()Ljava/lang/String;
    .locals 1

    .line 71
    const-string/jumbo v0, "reu"

    invoke-direct {p0, v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 79
    const-string/jumbo v0, "tic"

    invoke-direct {p0, v0}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setRequestURL(Ljava/lang/String;)V
    .locals 1

    .line 75
    const-string/jumbo v0, "reu"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 1

    .line 83
    const-string/jumbo v0, "tic"

    invoke-direct {p0, v0, p1}, Lcom/metamoji/un/web/direction/UnWebURLDirectionData;->setString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
