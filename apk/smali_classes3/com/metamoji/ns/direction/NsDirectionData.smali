.class public Lcom/metamoji/ns/direction/NsDirectionData;
.super Ljava/lang/Object;
.source "NsDirectionData.java"


# static fields
.field public static final MMJNS_DIRECTION_DATA_KEY_TYPE:Ljava/lang/String; = "!type"

.field public static final MMJNS_DIRECTION_DATA_KEY_VERSION:Ljava/lang/String; = "!version"


# instance fields
.field protected m_direction:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object p1, p0, Lcom/metamoji/ns/direction/NsDirectionData;->m_direction:Ljava/lang/Object;

    return-void
.end method

.method public static isDictionaryDirection(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 39
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 40
    check-cast p0, Ljava/util/Map;

    const-string v0, "!type"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 41
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isModelDirection(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 24
    instance-of v0, p0, Lcom/metamoji/df/model/IModel;

    if-eqz v0, :cond_0

    .line 25
    check-cast p0, Lcom/metamoji/df/model/IModel;

    invoke-interface {p0}, Lcom/metamoji/df/model/IModel;->getModelType()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 59
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionData;->m_direction:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 60
    instance-of v1, v0, Lcom/metamoji/df/model/IModel;

    if-eqz v1, :cond_0

    .line 61
    check-cast v0, Lcom/metamoji/df/model/IModel;

    invoke-interface {v0}, Lcom/metamoji/df/model/IModel;->destroy()V

    :cond_0
    const/4 v0, 0x0

    .line 63
    iput-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionData;->m_direction:Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public detachDirection()Ljava/lang/Object;
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionData;->m_direction:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 72
    iput-object v1, p0, Lcom/metamoji/ns/direction/NsDirectionData;->m_direction:Ljava/lang/Object;

    return-object v0
.end method

.method public getDirection()Ljava/lang/Object;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/ns/direction/NsDirectionData;->m_direction:Ljava/lang/Object;

    return-object v0
.end method
