.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService$1;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;->processOne()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;

.field final synthetic val$um:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 131
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;

    iput-object p2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService$1;->val$um:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callBack(Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService$1;->val$um:Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;

    sget-object v0, Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;->WithoutLoginDialog:Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/metamoji/cs/dc/CsDigitalCabinetUserManager;->getDirectMessage(Lcom/metamoji/cs/dc/CsCloudServiceExecutorAsyncTaskLoader$ExecuteType;Lcom/metamoji/cs/dc/ICsCloudServiceExecutorCallBack;)V

    .line 136
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$fputrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)V

    .line 137
    iget-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;

    invoke-static {p1, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;->-$$Nest$fputwaitForEnd(Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmAfterProcessesIntentService;Z)V

    .line 139
    invoke-static {}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    move-result-object p1

    const-string v0, "backgroundProcessesEnd"

    invoke-virtual {p1, v0}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->createController(Ljava/lang/String;)Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;

    move-result-object p1

    const/4 v2, 0x1

    .line 140
    invoke-virtual {p1, v0, v1, v2}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->initEventFireIntentService(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 141
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->startServices()V

    return-void
.end method
