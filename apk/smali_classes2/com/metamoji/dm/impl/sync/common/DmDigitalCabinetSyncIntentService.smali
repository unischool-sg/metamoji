.class public abstract Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;
.super Lcom/metamoji/dm/fw/sync/DmIntentService;
.source "DmDigitalCabinetSyncIntentService.java"


# static fields
.field protected static _isRecovery:Z = false


# instance fields
.field private _accessUtils:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

.field private _intent:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/metamoji/dm/fw/sync/DmIntentService;-><init>()V

    .line 48
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    invoke-direct {v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_accessUtils:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    return-void
.end method

.method public static isRecovery()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_isRecovery:Z

    return v0
.end method

.method public static setRecovery(Z)V
    .locals 0

    .line 41
    sput-boolean p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_isRecovery:Z

    return-void
.end method


# virtual methods
.method public abstract afterProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end method

.method public final afterProcess(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 0

    .line 252
    iget-object p1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_accessUtils:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    invoke-virtual {p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->clear()V

    .line 253
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method public abstract beforeProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end method

.method public final beforeProcess(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    .line 161
    iget-object p1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_accessUtils:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    const-string v0, "mmjdm.sync.fw.extparam.key.userInfoBean"

    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getDmSyncUserInfoBean(Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->init(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V

    .line 162
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method protected downloadNew(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 7

    .line 365
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v2

    .line 366
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v5

    const/4 v0, 0x1

    .line 367
    invoke-virtual {v5, p2, v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->downloadFromServer(Ljava/lang/String;Z)Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 368
    iget-object v0, v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    :try_start_0
    iget-object v0, v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    invoke-interface {v2, p1, v0}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->writeContentsFilePathToTemporary(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 409
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 414
    :cond_1
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$3;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$3;-><init>(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;Ljava/lang/String;)V

    .line 434
    invoke-interface {v2, v0}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 410
    :cond_2
    :goto_0
    :try_start_1
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 436
    :catch_0
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 369
    :cond_3
    :goto_1
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method protected downloadUpdate(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 7

    .line 443
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v2

    .line 444
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v5

    const/4 v0, 0x1

    .line 445
    invoke-virtual {v5, p2, v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->downloadFromServer(Ljava/lang/String;Z)Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 446
    iget-object v0, v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    if-eqz v0, :cond_3

    iget-object v0, v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 486
    :cond_0
    :try_start_0
    iget-object v0, v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    invoke-interface {v2, p1, v0}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->writeContentsFilePathToTemporary(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 487
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 492
    :cond_1
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;

    move-object v1, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$4;-><init>(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;Ljava/lang/String;)V

    .line 513
    invoke-interface {v2, v0}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 488
    :cond_2
    :goto_0
    :try_start_1
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 515
    :catch_0
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 447
    :cond_3
    :goto_1
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method protected generateResourceIdOnServer(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 271
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object p1

    .line 272
    invoke-virtual {p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->generateResourceIdOnServer()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_accessUtils:Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    return-object v0
.end method

.method protected getBooleanExtra(Ljava/lang/String;Z)Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method

.method protected abstract getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;
.end method

.method protected getDmSyncUserInfoBean(Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    instance-of v0, v0, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 119
    new-instance p1, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;

    invoke-direct {p1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;-><init>()V

    :cond_1
    return-object p1
.end method

.method protected getDoubleExtra(Ljava/lang/String;D)D
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2, p3}, Landroid/content/Intent;->getDoubleExtra(Ljava/lang/String;D)D

    move-result-wide p1

    return-wide p1
.end method

.method protected getEntityId()Ljava/lang/String;
    .locals 1

    .line 791
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getServiceKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getHashMapExtra(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "**>;"
        }
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    return-object p1
.end method

.method protected getIntExtra(Ljava/lang/String;I)I
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    return p1
.end method

.method protected getIntent()Landroid/content/Intent;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    return-object v0
.end method

.method protected getResourceIdFromClientId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 349
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getResourceIdFromServerId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    return-object p1
.end method

.method protected getStringExtra(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->_intent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected lockClientId(Ljava/lang/String;)Z
    .locals 1

    .line 800
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmLocalIdManager;->lockId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public abstract processOne()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
.end method

.method public final processOne(Landroid/content/Intent;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 4

    .line 177
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->beforeProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object p1

    if-nez p1, :cond_0

    .line 178
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 179
    :cond_0
    sget-object v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$7;->$SwitchMap$com$metamoji$dm$fw$sync$DmIntentService$StatusCode:[I

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    .line 201
    :try_start_1
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->processOne()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object p1

    if-nez p1, :cond_1

    .line 202
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 203
    :cond_1
    sget-object v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$7;->$SwitchMap$com$metamoji$dm$fw$sync$DmIntentService$StatusCode:[I

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->ordinal()I

    move-result v3

    aget v0, v0, v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eq v0, v1, :cond_3

    if-eq v0, v2, :cond_3

    .line 225
    :try_start_2
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->afterProcess()Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    move-result-object p1

    if-nez p1, :cond_2

    .line 226
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    .line 227
    :cond_2
    sget-object v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$7;->$SwitchMap$com$metamoji$dm$fw$sync$DmIntentService$StatusCode:[I

    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->ordinal()I

    move-result v1

    aget v0, v0, v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 242
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 243
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    :cond_3
    return-object p1

    :catchall_1
    move-exception p1

    .line 217
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 218
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    :cond_4
    return-object p1

    :catchall_2
    move-exception p1

    .line 193
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 194
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FatalStopError:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method protected reserveLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 2

    .line 320
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v0

    .line 321
    new-instance v1, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$2;

    invoke-direct {v1, p0, v0, p1, p2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$2;-><init>(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 333
    :try_start_0
    invoke-interface {v0, v1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 338
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 335
    :catch_0
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method protected reserveServerIdAndDefaultLastSyncedRevision(Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 8

    .line 281
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v0

    .line 283
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->generateResourceIdOnServer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 284
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerIdForResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 285
    invoke-virtual {v0, p1, v7}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->generateLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 286
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v4

    .line 287
    new-instance v2, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$1;

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v2 .. v7}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$1;-><init>(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    :try_start_0
    invoke-interface {v4, v2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 310
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 307
    :catch_0
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method protected unlockClientId(Ljava/lang/String;)V
    .locals 1

    .line 810
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmLocalIdManager;->unlockId(Ljava/lang/String;)V

    return-void
.end method

.method protected uploadDelete(Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 0

    .line 770
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    .line 771
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object p1

    if-nez p2, :cond_0

    .line 773
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 777
    :cond_0
    invoke-virtual {p1, p2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->deleteFromServer(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 778
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 781
    :cond_1
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method protected uploadNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 6

    .line 530
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v2

    .line 531
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v0

    if-nez p2, :cond_0

    .line 533
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 591
    :cond_0
    :try_start_0
    invoke-interface {v2, p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getContentsFilePathFromStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 592
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 596
    :cond_1
    invoke-virtual {v0, p2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->getServerIdForResourceId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 598
    invoke-interface {v2, p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getSyncInfoMetaData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 599
    const-string v5, "lastSyncedRevision"

    invoke-virtual {v4, v5, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v5, "serverId"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    new-instance v5, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;

    invoke-direct {v5}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;-><init>()V

    .line 603
    iput-object v4, v5, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->deadProps:Ljava/util/Map;

    .line 604
    iput-object v1, v5, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    .line 606
    invoke-virtual {v0, v5}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->uploadToServer(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 613
    invoke-virtual {v0, v1, p2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->moveServerResource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 616
    const-string p1, "server commit failed.from:%s to: %s"

    filled-new-array {v1, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 617
    invoke-virtual {v0, v1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->deleteFromServer(Ljava/lang/String;)Z

    .line 618
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 623
    :cond_2
    new-instance v0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;

    move-object v1, p0

    move-object v4, p1

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$5;-><init>(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    invoke-interface {v2, v0}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 609
    :cond_3
    :try_start_1
    const-string p1, "temporary recourceId generate failed."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 610
    new-instance p1, Lcom/metamoji/cm/CmException;

    invoke-direct {p1}, Lcom/metamoji/cm/CmException;-><init>()V

    throw p1

    .line 593
    :cond_4
    :goto_0
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 644
    :catch_0
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method

.method protected uploadUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    .locals 5

    .line 662
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getContentsProxy()Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;

    move-result-object v0

    .line 663
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;->getAccessUtils()Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;

    move-result-object v1

    if-nez p2, :cond_0

    .line 665
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 709
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getContentsFilePathFromStorage(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 710
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    .line 714
    :cond_1
    invoke-interface {v0, p1}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->getSyncInfoMetaData(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v3

    .line 715
    const-string v4, "lastSyncedRevision"

    invoke-virtual {v3, v4, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 717
    new-instance v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;

    invoke-direct {v4}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;-><init>()V

    .line 718
    iput-object v3, v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->deadProps:Ljava/util/Map;

    .line 719
    iput-object v2, v4, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    .line 721
    invoke-virtual {v1, v4}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->uploadToServer(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 728
    invoke-virtual {v1, v2, p2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->moveServerResource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 731
    const-string p1, "server commit failed.from:%s to: %s"

    filled-new-array {v2, p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 732
    invoke-virtual {v1, v2}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->deleteFromServer(Ljava/lang/String;)Z

    .line 733
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 738
    :cond_2
    new-instance p2, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$6;

    invoke-direct {p2, p0, v0, p1, p3}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService$6;-><init>(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetSyncIntentService;Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    invoke-interface {v0, p2}, Lcom/metamoji/dm/impl/sync/common/IDmSyncClientContentsCproxy;->executeTrans(Ljava/util/concurrent/Callable;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->Success:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1

    .line 724
    :cond_3
    :try_start_1
    const-string p1, "temporary recourceId generate failed."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    .line 725
    new-instance p1, Lcom/metamoji/cm/CmException;

    invoke-direct {p1}, Lcom/metamoji/cm/CmException;-><init>()V

    throw p1

    .line 711
    :cond_4
    :goto_0
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    .line 754
    :catch_0
    sget-object p1, Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;->FailSkipNext:Lcom/metamoji/dm/fw/sync/DmIntentService$StatusCode;

    return-object p1
.end method
