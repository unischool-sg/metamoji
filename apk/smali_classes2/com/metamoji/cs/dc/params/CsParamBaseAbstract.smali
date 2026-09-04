.class public abstract Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.super Ljava/lang/Object;
.source "CsParamBaseAbstract.java"


# instance fields
.field private m_deviceName:Ljava/lang/String;

.field private m_locale:Ljava/lang/String;

.field private m_productName:Ljava/lang/String;

.field private m_productVersion:Ljava/lang/String;

.field protected m_timezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->getInstance()Lcom/metamoji/cs/CsCloudServiceContext;

    move-result-object v0

    .line 51
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getDeviceName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_deviceName:Ljava/lang/String;

    .line 52
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_productName:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_productVersion:Ljava/lang/String;

    .line 54
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getLocale()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_locale:Ljava/lang/String;

    .line 55
    invoke-virtual {v0}, Lcom/metamoji/cs/CsCloudServiceContext;->getTimeZone()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_timezone:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected abstract getBeanToMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method public stringify()Ljava/lang/String;
    .locals 3

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->getBeanToMap()Ljava/util/HashMap;

    move-result-object v0

    .line 33
    const-string v1, "deviceName"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_deviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    const-string v1, "productName"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_productName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v1, "productVersion"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_productVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    const-string v1, "locale"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_locale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    const-string v1, "timezone"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;->m_timezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :try_start_0
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 42
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
