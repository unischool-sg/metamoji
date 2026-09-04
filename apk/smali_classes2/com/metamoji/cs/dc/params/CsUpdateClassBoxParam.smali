.class public Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsUpdateClassBoxParam.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;
    }
.end annotation


# instance fields
.field public driveId:Ljava/lang/String;

.field public joinEnabled:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;-><init>()V

    .line 18
    sget-object v0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->NO_VALUE:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    iput-object v0, p0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;->joinEnabled:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

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

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    const-string v1, "driveId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;->driveId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    sget-object v1, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->NO_VALUE:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;->joinEnabled:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    if-eq v1, v2, :cond_1

    .line 27
    sget-object v1, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;->ENABLED:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;->joinEnabled:Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam$ClassBoxJoinStatus;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "joinEnabled"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    :cond_1
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsUpdateClassBoxParam;->name:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 30
    const-string v2, "name"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object v0
.end method
