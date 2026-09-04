.class public Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsGetMaintenanceInfoParam.java"


# instance fields
.field m_forDCUser:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;-><init>()V

    .line 11
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;->m_forDCUser:Z

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

.method public isForDCUser()Z
    .locals 1

    .line 16
    iget-boolean v0, p0, Lcom/metamoji/cs/dc/params/CsGetMaintenanceInfoParam;->m_forDCUser:Z

    return v0
.end method
