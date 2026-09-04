.class public Lcom/metamoji/cs/dc/params/CsWithdrawParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsWithdrawParam.java"


# instance fields
.field public password:Ljava/lang/String;


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

    .line 11
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 12
    const-string v1, "password"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsWithdrawParam;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
