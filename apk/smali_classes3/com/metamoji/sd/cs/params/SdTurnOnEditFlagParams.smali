.class public Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;
.super Lcom/metamoji/sd/cs/params/SdRequestParams;
.source "SdTurnOnEditFlagParams.java"


# instance fields
.field public contentsRevision:Ljava/lang/String;

.field public documentId:Ljava/lang/String;

.field public force:Z

.field public locationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/sd/cs/params/SdRequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method protected toMap()Ljava/util/HashMap;
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

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    const-string v1, "locationId"

    iget-object v2, p0, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->locationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v1, "contentsRevision"

    iget-object v2, p0, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->contentsRevision:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-boolean v1, p0, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->force:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "force"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
