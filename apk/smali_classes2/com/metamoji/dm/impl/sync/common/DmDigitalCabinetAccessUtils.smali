.class public Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;
.super Ljava/lang/Object;
.source "DmDigitalCabinetAccessUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;
    }
.end annotation


# static fields
.field private static final SERVER_DOWNLOAD_CONTENTS_TEMP_FILE_EXTENTOIN:Ljava/lang/String; = "tmp"

.field private static final SERVER_DOWNLOAD_CONTENTS_TEMP_FILE_PREFIX:Ljava/lang/String; = "server.contents"

.field private static final TEMPORARY_SERVER_ID_PREFIX:Ljava/lang/String; = "tempdata-"

.field private static final URL_PATH_SEPARATOR:Ljava/lang/String; = "/"


# instance fields
.field private _applicationAuthKey:Ljava/lang/String;

.field private _lockTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _password:Ljava/lang/String;

.field private _serverUrl:Ljava/lang/String;

.field private _userHomeUrl:Ljava/lang/String;

.field private _userId:Ljava/lang/String;

.field private _userLockToken:Ljava/lang/String;

.field private request:Lcom/metamoji/network/NwWebDAVRequest;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_lockTable:Ljava/util/HashMap;

    .line 76
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_lockTable:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->request:Lcom/metamoji/network/NwWebDAVRequest;

    return-void
.end method


# virtual methods
.method public checkHomeCollectionExists()Z
    .locals 5

    const/4 v0, 0x0

    .line 692
    :try_start_0
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isValidHomeDir(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return v0

    .line 696
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v1

    .line 698
    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/metamoji/network/NwWebDAVRequest;->head(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVHeaderResult;

    move-result-object v1

    .line 700
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    return v4

    .line 703
    :cond_1
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x194

    if-eq v1, v2, :cond_2

    return v0

    :cond_2
    return v4

    :catch_0
    move-exception v1

    .line 710
    invoke-static {v1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return v0
.end method

.method protected clear()V
    .locals 1

    .line 99
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userId:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_password:Ljava/lang/String;

    .line 101
    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_serverUrl:Ljava/lang/String;

    .line 102
    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    .line 103
    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_applicationAuthKey:Ljava/lang/String;

    .line 104
    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userLockToken:Ljava/lang/String;

    .line 105
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_lockTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public deleteFromServer(Ljava/lang/String;)Z
    .locals 9

    .line 417
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    .line 422
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v0

    .line 423
    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/metamoji/network/NwWebDAVRequest;->head(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVHeaderResult;

    move-result-object v2

    .line 424
    invoke-interface {v2}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v3

    const/4 v4, 0x0

    const-string v5, "DELETE message failed : status code=%s, response=%s"

    const/16 v6, 0xcc

    const/16 v7, 0xc8

    if-eq v3, v7, :cond_0

    .line 425
    invoke-interface {v2}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 426
    invoke-interface {v2}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v3

    const/16 v8, 0xcf

    if-eq v3, v8, :cond_0

    .line 428
    invoke-interface {v2}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 429
    invoke-interface {v2}, Lcom/metamoji/network/NwWebDAVResult;->getErrorString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 427
    invoke-static {v5, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    .line 435
    :cond_0
    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest;->delete(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVResult;

    move-result-object p1

    .line 438
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v0

    if-eq v0, v6, :cond_1

    if-eq v0, v7, :cond_1

    .line 442
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 443
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVResult;->getErrorString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 441
    invoke-static {v5, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_1
    return v1

    .line 418
    :cond_2
    const-string p1, "network is not permitted state. "

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 419
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v2, "SY0001"

    invoke-direct {v0, v2, p1, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public downloadFromServer(Ljava/lang/String;Z)Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;
    .locals 6

    .line 237
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 242
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v0

    .line 243
    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest;->get(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVFileResult;

    move-result-object v1

    .line 246
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVFileResult;->getResponseStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    const/4 v4, 0x0

    if-eq v2, v3, :cond_0

    .line 248
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVFileResult;->getResponseStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 249
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVFileResult;->getErrorString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 247
    const-string p2, "GET message failed for new-download : status code=%s, response=%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 253
    :cond_0
    const-string v2, "server.contents"

    const-string v3, "tmp"

    invoke-static {v2, v3}, Lcom/metamoji/dm/fw/DmUtils;->createTempFileWithPrefix(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 257
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVFileResult;->getResponseFile()Ljava/io/File;

    move-result-object v3

    .line 262
    invoke-virtual {v3, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 265
    invoke-static {v3, v2}, Lcom/metamoji/cm/CmUtils;->copyFileByBuffer(Ljava/io/File;Ljava/io/File;)Z

    .line 271
    :cond_1
    new-instance v3, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;

    invoke-direct {v3}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;-><init>()V

    .line 272
    iput-object v2, v3, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    if-eqz p2, :cond_3

    .line 281
    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest;->propfind(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    .line 283
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->validateMultiStatus(Lcom/metamoji/network/NwWebDAVPropResult;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 285
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVFileResult;->getResponseStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 286
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVFileResult;->getErrorString()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    .line 284
    const-string p2, "PROPFIND message failed for new-download : status code=%s, response=%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v4

    .line 291
    :cond_2
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->getDeadProperties()Ljava/util/Map;

    move-result-object p1

    .line 292
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 293
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_3

    .line 295
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, v3, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->deadProps:Ljava/util/Map;

    :cond_3
    return-object v3

    .line 238
    :cond_4
    const-string p1, "network is not permitted state. "

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 239
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "SY0001"

    const/4 v1, 0x1

    invoke-direct {p2, v0, p1, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2
.end method

.method public generateLastSyncedRevision(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 581
    invoke-static {}, Lcom/metamoji/dm/fw/DmUtils;->nowDateAsNumber()D

    move-result-wide p1

    .line 583
    const-string v0, "#.000"

    invoke-static {v0}, Lcom/metamoji/dm/fw/DmUtils;->getDecimalFormatForSync(Ljava/lang/String;)Ljava/text/DecimalFormat;

    move-result-object v0

    .line 584
    invoke-virtual {v0, p1, p2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generateResourceIdOnServer()Ljava/lang/String;
    .locals 4

    .line 595
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->generateRandomId()Ljava/lang/String;

    move-result-object v0

    .line 605
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 607
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v1

    .line 611
    invoke-virtual {v1, v0}, Lcom/metamoji/network/NwWebDAVRequest;->head(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVHeaderResult;

    move-result-object v1

    .line 613
    invoke-interface {v1}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_0

    return-object v0

    .line 596
    :cond_1
    const-string v0, "network is not permitted state. "

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 597
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "SY0001"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public generateTemporaryResourceId()Ljava/lang/String;
    .locals 4

    .line 207
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v0

    .line 216
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "tempdata-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userLockToken:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 217
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->generateRandomId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 218
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 219
    invoke-virtual {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest;->head(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVHeaderResult;

    move-result-object v2

    .line 221
    invoke-interface {v2}, Lcom/metamoji/network/NwWebDAVHeaderResult;->getResponseStatusCode()I

    move-result v2

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    return-object v1

    .line 208
    :cond_1
    const-string v0, "network is not permitted state. "

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 209
    new-instance v1, Lcom/metamoji/cm/CmException;

    const-string v2, "SY0001"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v0, v3}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v1
.end method

.method public getApplicationAuthKey()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_applicationAuthKey:Ljava/lang/String;

    return-object v0
.end method

.method public getDeadPropertiesFromServer(Ljava/lang/String;)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 517
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 522
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v0

    .line 529
    invoke-static {p1}, Lcom/metamoji/dm/fw/DmUtils;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/metamoji/network/NwWebDAVRequest;->propfind(Ljava/lang/String;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    .line 530
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->validateMultiStatus(Lcom/metamoji/network/NwWebDAVPropResult;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 531
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->getResponseStatusCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->getErrorString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "PROPFIND message failed : status code=%s, response=%s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    .line 535
    :cond_0
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->getDeadProperties()Ljava/util/Map;

    move-result-object p1

    .line 536
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 537
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 538
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1

    :cond_1
    return-object v1

    .line 518
    :cond_2
    const-string p1, "network is not permitted state. "

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 519
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "SY0001"

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public getPassword()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_password:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceIdFromServerId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 562
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_serverUrl:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "serverUrl:%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 563
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "userHomeUrl:%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 564
    const-string v0, "serverId:%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_serverUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServerIdForResourceId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_serverUrl:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "serverUrl:%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "userHomeUrl:%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 552
    const-string v0, "resourceId:%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 553
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_serverUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getServerResourceDeadProperties(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 628
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 634
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v0

    .line 636
    sget-object v2, Lcom/metamoji/network/NwWebDAVRequest$Depth;->AllDescendants:Lcom/metamoji/network/NwWebDAVRequest$Depth;

    invoke-virtual {v0, p1, v2}, Lcom/metamoji/network/NwWebDAVRequest;->propfind(Ljava/lang/String;Lcom/metamoji/network/NwWebDAVRequest$Depth;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    .line 637
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->getResponseStatusCode()I

    move-result v0

    .line 639
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const/16 v3, 0xcf

    if-ne v0, v3, :cond_5

    .line 641
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->getDeadProperties()Ljava/util/Map;

    move-result-object p1

    .line 642
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 643
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 644
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 645
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 646
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 647
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 649
    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_0

    .line 653
    :cond_1
    invoke-virtual {p0, v3}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->isTemporaryServerId(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 655
    invoke-virtual {p0, v3, v1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->isTemporaryServerId(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 656
    const-string v0, "%s is temporary Id delete."

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v5

    invoke-static {v0, v5}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 659
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x1

    .line 661
    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 662
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->deleteFromServer(Ljava/lang/String;)Z

    goto :goto_0

    .line 670
    :cond_3
    const-string v3, "serverId"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_4

    goto :goto_0

    .line 674
    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_serverUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 675
    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_5
    return-object v2

    .line 629
    :cond_6
    const-string p1, "network is not permitted state. "

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 630
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v2, "SY0001"

    invoke-direct {v0, v2, p1, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public getServerUrl()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_serverUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserHomeUrl()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserLockToken()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userLockToken:Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;)V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->request:Lcom/metamoji/network/NwWebDAVRequest;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/metamoji/network/NwWebDAVRequest;

    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_lockTable:Ljava/util/HashMap;

    invoke-direct {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->request:Lcom/metamoji/network/NwWebDAVRequest;

    .line 87
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userId:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_password:Ljava/lang/String;

    .line 89
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getServerUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_serverUrl:Ljava/lang/String;

    .line 90
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserHomeUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userHomeUrl:Ljava/lang/String;

    .line 91
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getApplicationAuthKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_applicationAuthKey:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lcom/metamoji/dm/fw/sync/DmSyncUserInfoBean;->getUserLockToken()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userLockToken:Ljava/lang/String;

    return-void
.end method

.method public isTemporaryServerId(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 460
    :cond_0
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 462
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_1
    if-nez p1, :cond_2

    return v0

    .line 468
    :cond_2
    const-string v0, "tempdata-"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public isTemporaryServerId(Ljava/lang/String;Z)Z
    .locals 2

    .line 472
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->isTemporaryServerId(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 474
    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p2

    if-lez p2, :cond_0

    add-int/2addr p2, v0

    .line 476
    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 483
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "tempdata-"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userLockToken:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 485
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_2
    return v0

    :cond_3
    return v1
.end method

.method public lockClientId(Ljava/lang/String;)Z
    .locals 1

    .line 497
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmLocalIdManager;->lockId(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public moveServerResource(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 383
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 388
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v0

    .line 392
    invoke-static {p2}, Lcom/metamoji/dm/fw/DmUtils;->getUrlEncodedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2, v1}, Lcom/metamoji/network/NwWebDAVRequest;->moveToDestinationURL(Ljava/lang/String;Ljava/lang/String;Z)Lcom/metamoji/network/NwWebDAVResult;

    move-result-object p1

    .line 395
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result p2

    const/16 v0, 0xc9

    if-eq p2, v0, :cond_0

    const/16 v0, 0xcc

    if-eq p2, v0, :cond_0

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_0

    .line 400
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVResult;->getErrorString()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "MOVE message failed : status code=%s, response=%s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1

    :cond_0
    return v1

    .line 384
    :cond_1
    const-string p1, "network is not permitted state. "

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 385
    new-instance p2, Lcom/metamoji/cm/CmException;

    const-string v0, "SY0001"

    invoke-direct {p2, v0, p1, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p2
.end method

.method public prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;
    .locals 2

    .line 161
    iget-object v0, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->request:Lcom/metamoji/network/NwWebDAVRequest;

    .line 162
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest;->setUsername(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_password:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest;->setPassword(Ljava/lang/String;)V

    .line 164
    iget-object v1, p0, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->_applicationAuthKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/network/NwWebDAVRequest;->setAppAuthKey(Ljava/lang/String;)V

    return-object v0
.end method

.method public unlockClientId(Ljava/lang/String;)V
    .locals 1

    .line 506
    invoke-static {}, Lcom/metamoji/cm/CmLocalIdManager;->getInstance()Lcom/metamoji/cm/CmLocalIdManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/metamoji/cm/CmLocalIdManager;->unlockId(Ljava/lang/String;)V

    return-void
.end method

.method public uploadToServer(Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;)Ljava/lang/String;
    .locals 6

    .line 310
    invoke-static {}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->getInstance()Lcom/metamoji/dm/impl/sync/DmDCSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/dm/impl/sync/DmDCSyncManager;->isPermittedNetwork()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 315
    iget-object v0, p1, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->contentsFile:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 318
    const-string p1, "contents file path is null !!!..."

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    return-object v1

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->generateTemporaryResourceId()Ljava/lang/String;

    move-result-object v2

    .line 334
    invoke-virtual {p0}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->prepareRequest()Lcom/metamoji/network/NwWebDAVRequest;

    move-result-object v3

    .line 335
    invoke-virtual {v3, v2, v0}, Lcom/metamoji/network/NwWebDAVRequest;->put(Ljava/lang/String;Ljava/io/File;)Lcom/metamoji/network/NwWebDAVResult;

    move-result-object v0

    .line 339
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_2

    .line 340
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v4

    const/16 v5, 0xc9

    if-eq v4, v5, :cond_2

    .line 341
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result v4

    const/16 v5, 0xcc

    if-eq v4, v5, :cond_2

    .line 343
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 344
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getErrorString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    .line 342
    const-string v2, "PUT message failed : status code=%s, response=%s"

    invoke-static {v2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 345
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result p1

    const/16 v2, 0x192

    if-ne p1, v2, :cond_1

    goto :goto_0

    .line 347
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    :goto_0
    return-object v1

    .line 355
    :cond_2
    iget-object p1, p1, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils$ContentsBean;->deadProps:Ljava/util/Map;

    if-eqz p1, :cond_3

    .line 360
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v2, p1, v4}, Lcom/metamoji/network/NwWebDAVRequest;->proppatch(Ljava/lang/String;Ljava/util/Map;Ljava/util/List;)Lcom/metamoji/network/NwWebDAVPropResult;

    move-result-object p1

    .line 361
    invoke-virtual {p0, p1}, Lcom/metamoji/dm/impl/sync/common/DmDigitalCabinetAccessUtils;->validateMultiStatus(Lcom/metamoji/network/NwWebDAVPropResult;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 363
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getResponseStatusCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    .line 364
    invoke-interface {v0}, Lcom/metamoji/network/NwWebDAVResult;->getErrorString()Ljava/lang/String;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    .line 362
    const-string v0, "PROPPATCH message failed : status code=%s, response=%s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1

    :cond_3
    return-object v2

    .line 311
    :cond_4
    const-string p1, "network is not permitted state. "

    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->warn(Ljava/lang/String;)V

    .line 312
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "SY0001"

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v0
.end method

.method public validateMultiStatus(Lcom/metamoji/network/NwWebDAVPropResult;)Z
    .locals 0

    .line 175
    invoke-interface {p1}, Lcom/metamoji/network/NwWebDAVPropResult;->isValidMultiResponse()Z

    move-result p1

    return p1
.end method
