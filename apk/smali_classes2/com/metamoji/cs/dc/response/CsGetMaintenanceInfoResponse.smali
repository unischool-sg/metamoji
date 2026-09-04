.class public Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "CsGetMaintenanceInfoResponse.java"


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->isUnderMaintenance:Z

    .line 7
    iput-object p2, p0, Lcom/metamoji/cs/dc/response/CsGetMaintenanceInfoResponse;->maintMessage:Ljava/lang/String;

    return-void
.end method
