.class public Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;
.super Lcom/metamoji/sd/cs/response/SdResponseResult;
.source "SdGetMaintenanceInfoResult.java"


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/sd/cs/response/SdResponseResult;-><init>()V

    .line 6
    iput-boolean p1, p0, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;->isUnderMaintenance:Z

    .line 7
    iput-object p2, p0, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;->maintMessage:Ljava/lang/String;

    return-void
.end method
