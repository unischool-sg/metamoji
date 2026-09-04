.class Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;
.super Ljava/lang/Object;
.source "DmDigitalCabinetSyncIntentService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->downloadUpdate(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
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

.field final synthetic val$bean:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

.field final synthetic val$resourceId:Ljava/lang/String;

.field final synthetic val$utils:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
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
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 492
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->this$0:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;

    iput-object p2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iput-object p3, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$clientId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$bean:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;

    iput-object p5, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$utils:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    iput-object p6, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$resourceId:Ljava/lang/String;

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

    .line 492
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->call()Ljava/lang/Void;

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

    .line 495
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$clientId:Ljava/lang/String;

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$bean:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;

    iget-object v2, v2, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->deadProps:Ljava/util/Map;

    invoke-interface {v0, v1, v2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->putSyncInfoMetaData(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$utils:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$resourceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerIdForResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 502
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$clientId:Ljava/lang/String;

    invoke-interface {v1, v0, v2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->setServerId(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 507
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$p:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;->val$clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->saveTemporaryToStorage(Ljava/lang/String;)Z

    const/4 v0, 0x0

    return-object v0

    .line 504
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-direct {v0}, Lcom/metamoji/cm/CmException;-><init>()V

    throw v0

    .line 497
    :cond_1
    new-instance v0, Lcom/metamoji/cm/CmException;

    invoke-direct {v0}, Lcom/metamoji/cm/CmException;-><init>()V

    throw v0
.end method
