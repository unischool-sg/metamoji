.class Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;
.super Ljava/lang/Object;
.source "DmDCSyncManager.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->startSyncWithType(ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

.field final synthetic val$driveId:Ljava/lang/String;

.field final synthetic val$syncMode:I

.field final synthetic val$syncOptionParams:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;ILjava/lang/String;Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 206
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    iput p2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->val$syncMode:I

    iput-object p3, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->val$driveId:Ljava/lang/String;

    iput-object p4, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->val$syncOptionParams:Lcom/metamoji/dm/impl/sync/DmDCSyncManager$DmSyncOptionParams;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Boolean;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isProcessing()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 212
    :cond_0
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    iget v2, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->val$syncMode:I

    invoke-static {v0, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$fputrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)V

    .line 214
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    invoke-static {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$fgetrunningode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;)I

    move-result v0

    .line 216
    sput-boolean v1, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->_errorOccurred:Z

    .line 217
    invoke-static {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$sfput_stopSync(Z)V

    .line 220
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 221
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/metamoji/nt/cabinet/sync/SyncEventService;

    invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 222
    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    invoke-static {}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->getInstance()Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/dm/fw/sync/DmIntentServiceRunManager;->init()V

    .line 227
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->this$0:Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    sget v2, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->SYNC_MODE_FLG_ISAUTOMATIC:I

    invoke-static {v1, v2}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->-$$Nest$misTargetSyncMode(Lcom/metamoji/dm/impl/sync/DmDCSyncManager;I)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 228
    invoke-static {}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->getInstance()Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;

    move-result-object v1

    const-string v3, "backgroundProcessesBeforeStart"

    invoke-virtual {v1, v3}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireControllerFactory;->createController(Ljava/lang/String;)Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;

    move-result-object v1

    const/4 v4, 0x0

    .line 229
    invoke-virtual {v1, v3, v4, v2}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->initEventFireIntentService(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 230
    invoke-virtual {v1}, Lcom/metamoji/dm/impl/sync/common/DmSyncEventFireIntentServiceController;->startServices()V

    .line 233
    :cond_1
    new-instance v1, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;

    new-instance v3, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;

    invoke-direct {v3, p0, v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1$1;-><init>(Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;I)V

    invoke-direct {v1, v3}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;-><init>(Ljava/util/concurrent/Callable;)V

    .line 358
    invoke-virtual {v1}, Lcom/metamoji/dm/DmAsyncTaskLoaderHelper;->forceLoad()V

    .line 359
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager$1;->call()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
