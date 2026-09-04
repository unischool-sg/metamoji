.class Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;
.super Ljava/lang/Object;
.source "DmNotEditContentsUploadIntentService.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;->processOne()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;

.field final synthetic val$clientId:Ljava/lang/String;

.field final synthetic val$proxy:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;


# direct methods
.method constructor <init>(Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
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

    .line 136
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;->this$0:Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService;

    iput-object p2, p0, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;->val$proxy:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iput-object p3, p0, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;->val$clientId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;->val$proxy:Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;->val$clientId:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->removeClientResource(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0

    .line 143
    :cond_0
    sget-object v0, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmNotEditContentsUploadIntentService$1;->call()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object v0

    return-object v0
.end method
