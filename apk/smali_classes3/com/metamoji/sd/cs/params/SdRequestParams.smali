.class public abstract Lcom/metamoji/sd/cs/params/SdRequestParams;
.super Ljava/lang/Object;
.source "SdRequestParams.java"


# instance fields
.field private m_canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/metamoji/sd/cs/params/SdRequestParams;->m_canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;

    return-object v0
.end method

.method public setRequestCanceller(Lcom/metamoji/sd/cs/SdRequestCanceller;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcom/metamoji/sd/cs/params/SdRequestParams;->m_canceller:Lcom/metamoji/sd/cs/SdRequestCanceller;

    return-void
.end method

.method public stringify()Ljava/lang/String;
    .locals 1

    .line 27
    invoke-virtual {p0}, Lcom/metamoji/sd/cs/params/SdRequestParams;->toMap()Ljava/util/HashMap;

    move-result-object v0

    .line 29
    :try_start_0
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract toMap()Ljava/util/HashMap;
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
