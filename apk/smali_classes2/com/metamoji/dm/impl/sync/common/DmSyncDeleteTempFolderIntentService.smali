.class public Lcom/metamoji/dm/impl/sync/common/DmSyncDeleteTempFolderIntentService;
.super Lcom/metamoji/dm/fw/sync/DmIntentService;
.source "DmSyncDeleteTempFolderIntentService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentService;-><init>()V

    return-void
.end method


# virtual methods
.method public afterProcess(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 0

    .line 40
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method public beforeProcess(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 0

    .line 19
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method public processOne(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 25
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->getDmCacheDir()Ljava/io/File;

    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    if-eqz p1, :cond_0

    .line 29
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 30
    const-string v0, "DmSyncDeleteTempFolderIntentService : Error : deletePath = %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 33
    :cond_0
    const-string v0, "DmSyncDeleteTempFolderIntentService : Success : deletePath = %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 35
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method
