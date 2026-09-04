.class public Lcom/metamoji/cs/dc/params/CsSimulationPurchaseParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsSimulationPurchaseParam.java"


# instance fields
.field private m_paramDic:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cs/NameValuePair;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cs/NameValuePair;",
            ">;)V"
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/metamoji/cs/dc/params/CsSimulationPurchaseParam;->m_paramDic:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected getBeanToMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getParamDic()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/cs/NameValuePair;",
            ">;"
        }
    .end annotation

    .line 18
    iget-object v0, p0, Lcom/metamoji/cs/dc/params/CsSimulationPurchaseParam;->m_paramDic:Ljava/util/ArrayList;

    return-object v0
.end method
