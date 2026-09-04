.class public Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsGetServerUrlParam.java"


# static fields
.field public static final PARAM_AUTH_AAD:Ljava/lang/String; = "AAD"

.field public static final PARAM_AUTH_OIDC:Ljava/lang/String; = "OIDC"


# instance fields
.field public auth:Ljava/lang/String;

.field public coLoginId:Ljava/lang/String;

.field public encMailaddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBeanToMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->coLoginId:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 18
    const-string v2, "coLoginId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->encMailaddress:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 21
    const-string v2, "encMailaddress"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    const-string v1, "os"

    const-string v2, "and"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsGetServerUrlParam;->auth:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 25
    const-string v2, "auth"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
