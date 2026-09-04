.class public Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;
.super Lcom/metamoji/sd/cs/params/SdRequestParams;
.source "SdGetMaintenanceInfoParams.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lcom/metamoji/sd/cs/params/SdRequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method protected toMap()Ljava/util/HashMap;
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
