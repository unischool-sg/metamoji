.class public Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;
.super Lcom/metamoji/sd/cs/params/SdRequestParams;
.source "SdTurnOffEditFlagParams.java"


# static fields
.field public static final CONTENTS_REVISION_ID_NOT_SET:Ljava/lang/String; = "0"

.field public static final DOCUMENT_ID_NOT_SET:Ljava/lang/String; = "0"


# instance fields
.field public contentsRevision:Ljava/lang/String;

.field public documentId:Ljava/lang/String;

.field public isAll:Z

.field public locationId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Lcom/metamoji/sd/cs/params/SdRequestParams;-><init>()V

    .line 17
    const-string v0, "0"

    iput-object v0, p0, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->documentId:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->contentsRevision:Ljava/lang/String;

    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->isAll:Z

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

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 26
    const-string v1, "locationId"

    iget-object v2, p0, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->locationId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "contentsRevision"

    iget-object v2, p0, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->contentsRevision:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-boolean v1, p0, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->isAll:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "true"

    goto :goto_0

    :cond_0
    const-string v1, "false"

    :goto_0
    const-string v2, "isAll"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
