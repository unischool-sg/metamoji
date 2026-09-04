.class Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;
.super Ljava/lang/Object;
.source "DmDigitalCabinetSyncIntentService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->uploadNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$lastSyncedRevision:Ljava/lang/String;

.field final synthetic val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

.field final synthetic val$serverId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 623
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->this$0:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;

    iput-object p2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iput-object p3, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$serverId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$clientId:Ljava/lang/String;

    iput-object p5, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$lastSyncedRevision:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 623
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 627
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$serverId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$clientId:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->setServerId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 632
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$clientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;->val$lastSyncedRevision:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->setLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 634
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-direct {v0}, Lcom/metamoji/cm/CmException;-><init>()V

    throw v0

    .line 629
    :cond_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-direct {v0}, Lcom/metamoji/cm/CmException;-><init>()V

    throw v0
.end method
