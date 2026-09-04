.class public Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;
.super Ljava/lang/Object;
.source "SdShareViewDocumentProxy.java"


# static fields
.field private static final MMJ_SD_DOCPROXY_THUMBNAIL_CACHES_DIR:Ljava/lang/String; = ".sd_shareview_thumbs"

.field private static _instance:Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

.field static _lockObject:Ljava/lang/Object;


# instance fields
.field private m_homeUri:Ljava/lang/String;

.field private m_maintUri:Ljava/lang/String;

.field private m_privateDriveId:Ljava/lang/String;

.field private m_userId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->_lockObject:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_userId:Ljava/lang/String;

    .line 33
    iput-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_privateDriveId:Ljava/lang/String;

    .line 34
    iput-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_maintUri:Ljava/lang/String;

    .line 35
    iput-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_homeUri:Ljava/lang/String;

    .line 39
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 41
    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iput-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_userId:Ljava/lang/String;

    return-void
.end method

.method private static callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V
    .locals 0

    if-nez p0, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/sd/SdFailureBlock;->setArgument(Ljava/lang/Object;)V

    .line 261
    :try_start_0
    invoke-virtual {p0}, Lcom/metamoji/sd/SdFailureBlock;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 263
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "[SdShareViewDocumentProxy] :: ERROR failureCall: %s"

    invoke-static {p1, p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/sd/SdSuccessBlock;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 242
    :cond_0
    invoke-virtual {p1, p2}, Lcom/metamoji/sd/SdSuccessBlock;->setArgument(Ljava/lang/Object;)V

    .line 245
    :try_start_0
    invoke-virtual {p1}, Lcom/metamoji/sd/SdSuccessBlock;->call()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 247
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[SdDriveDocumentManager] :: ERROR callSuccess: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static destroy()V
    .locals 1

    .line 63
    invoke-static {}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->removeCachesDir()V

    const/4 v0, 0x0

    .line 64
    sput-object v0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->_instance:Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

    return-void
.end method

.method private getDvmErrorCode(Lcom/metamoji/sd/cs/response/SdResponseResult;)Lcom/metamoji/dvm/DvmErrCode;
    .locals 1

    .line 194
    iget p1, p1, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorCode:I

    const/16 v0, -0x64

    if-eq p1, v0, :cond_5

    const/16 v0, 0x2af9

    if-eq p1, v0, :cond_4

    const/16 v0, 0x2b06

    if-eq p1, v0, :cond_3

    const/16 v0, 0x2b0b

    if-eq p1, v0, :cond_2

    const/16 v0, 0x2afc

    if-eq p1, v0, :cond_1

    const/16 v0, 0x2afd

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 229
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 217
    :pswitch_0
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->DriveAlreadyDeletedError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 214
    :pswitch_1
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->LicenseExpiryDateError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 208
    :pswitch_2
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->TrafficQuotaExceedError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 211
    :pswitch_3
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->OperationDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 220
    :pswitch_4
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->DriveAccessDeniedError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 196
    :cond_0
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->FileNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 205
    :cond_1
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotFoundError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 223
    :cond_2
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->DocumentNotExistsError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 226
    :cond_3
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->DocumentProtectedError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 199
    :cond_4
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->NotLoginError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    .line 202
    :cond_5
    sget-object p1, Lcom/metamoji/dvm/DvmErrCode;->NetworkError:Lcom/metamoji/dvm/DvmErrCode;

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2aff
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance()Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;
    .locals 2

    .line 51
    sget-object v0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->_lockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 52
    :try_start_0
    sget-object v1, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->_instance:Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

    if-nez v1, :cond_0

    .line 53
    new-instance v1, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

    invoke-direct {v1}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;-><init>()V

    sput-object v1, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->_instance:Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

    .line 55
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    sget-object v0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->_instance:Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;

    return-object v0

    :catchall_0
    move-exception v1

    .line 55
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private newCloudServiceContextFromDriveId(Ljava/lang/String;)Lcom/metamoji/sd/cs/SdCloudServiceContext;
    .locals 4

    .line 165
    new-instance v0, Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v0, p1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;-><init>(Ljava/lang/String;)V

    .line 166
    sget-object v1, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->_lockObject:Ljava/lang/Object;

    monitor-enter v1

    .line 167
    :try_start_0
    iget-object v2, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_homeUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_maintUri:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_privateDriveId:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 168
    :cond_0
    new-instance v2, Lcom/metamoji/cs/dc/params/CsGetPrivateDriveHomeParam;

    invoke-direct {v2}, Lcom/metamoji/cs/dc/params/CsGetPrivateDriveHomeParam;-><init>()V

    .line 169
    invoke-static {v2}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v2

    check-cast v2, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;

    if-eqz v2, :cond_1

    .line 170
    iget v3, v2, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->errorCode:I

    if-nez v3, :cond_1

    .line 171
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->homeDir:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_homeUri:Ljava/lang/String;

    .line 172
    iget-object v3, v2, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->maintenanceText:Ljava/lang/String;

    iput-object v3, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_maintUri:Ljava/lang/String;

    .line 173
    iget-object v2, v2, Lcom/metamoji/cs/dc/response/CsGetPrivateDriveHomeResponse;->driveId:Ljava/lang/String;

    iput-object v2, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_privateDriveId:Ljava/lang/String;

    goto :goto_0

    .line 175
    :cond_1
    const-string v2, "failed CsGetPrivateDriveHome"

    invoke-static {v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    .line 178
    :cond_2
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 179
    iget-object v1, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setUserId(Ljava/lang/String;)V

    if-nez p1, :cond_3

    .line 180
    iget-object p1, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_privateDriveId:Ljava/lang/String;

    :cond_3
    invoke-virtual {v0, p1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setDriveId(Ljava/lang/String;)V

    .line 181
    iget-object p1, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_homeUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setHomeDir(Ljava/lang/String;)V

    .line 182
    iget-object p1, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_maintUri:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->setMaintenanceText(Ljava/lang/String;)V

    return-object v0

    :catchall_0
    move-exception p1

    .line 178
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public static removeCachesDir()V
    .locals 2

    .line 94
    invoke-static {}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->thumbnailCacheDir()Ljava/lang/String;

    move-result-object v0

    .line 95
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->deleteDirOrFile(Ljava/io/File;)Z

    :cond_0
    return-void
.end method

.method private static thumbnailCacheDir()Ljava/lang/String;
    .locals 3

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getTemporaryDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, ".sd_shareview_thumbs"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 73
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 76
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static thumbnailFileFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 84
    invoke-static {}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->thumbnailCacheDir()Ljava/lang/String;

    move-result-object v0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, p2

    :goto_0
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p2, "_"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 86
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public downloadDocumentThumbnail(Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/sd/SdSuccessBlock;Lcom/metamoji/sd/SdFailureBlock;)V
    .locals 5

    .line 124
    invoke-direct {p0, p1}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->newCloudServiceContextFromDriveId(Ljava/lang/String;)Lcom/metamoji/sd/cs/SdCloudServiceContext;

    move-result-object v0

    .line 125
    new-instance v1, Lcom/metamoji/sd/cs/SdCloudService;

    invoke-direct {v1, v0}, Lcom/metamoji/sd/cs/SdCloudService;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    .line 127
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 128
    new-instance v2, Lcom/metamoji/cm/mutable/Mutable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/metamoji/cm/mutable/Mutable;-><init>(Ljava/lang/Object;)V

    .line 130
    new-instance v4, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;

    invoke-direct {v4}, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;-><init>()V

    .line 131
    iput-object p2, v4, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->documentId:Ljava/lang/String;

    .line 132
    iput-object v3, v4, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->revision:Ljava/lang/String;

    .line 133
    invoke-virtual {v1, v4}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/cs/response/SdFileResult;

    if-eqz v1, :cond_2

    .line 136
    iget v3, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v3, :cond_1

    .line 137
    iget-object v3, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_userId:Ljava/lang/String;

    invoke-static {p1, p2, v3}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->thumbnailFileFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 139
    iget-object p2, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 140
    const-string/jumbo p2, "thumbnailPath"

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    iget-object p1, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 144
    :cond_0
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->ServerError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v2, p1}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 147
    :cond_1
    new-instance p1, Lcom/metamoji/sd/SdError;

    invoke-direct {p0, v1}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->getDvmErrorCode(Lcom/metamoji/sd/cs/response/SdResponseResult;)Lcom/metamoji/dvm/DvmErrCode;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v2, p1}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 150
    :cond_2
    new-instance p1, Lcom/metamoji/sd/SdError;

    sget-object p2, Lcom/metamoji/dvm/DvmErrCode;->UnknownError:Lcom/metamoji/dvm/DvmErrCode;

    invoke-direct {p1, p2}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;)V

    invoke-virtual {v2, p1}, Lcom/metamoji/cm/mutable/Mutable;->setValue(Ljava/lang/Object;)V

    .line 153
    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 154
    invoke-virtual {v2}, Lcom/metamoji/cm/mutable/Mutable;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/sd/SdError;

    invoke-static {p4, p1}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->callFailure(Lcom/metamoji/sd/SdFailureBlock;Lcom/metamoji/sd/SdError;)V

    return-void

    .line 156
    :cond_3
    invoke-direct {p0, p3, v0}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->callSuccess(Lcom/metamoji/sd/SdSuccessBlock;Ljava/util/Map;)V

    return-void
.end method

.method public getDocumentIconImagePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->m_userId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 110
    invoke-static {p1, p2, v0}, Lcom/metamoji/sd/shareview/SdShareViewDocumentProxy;->thumbnailFileFrom(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 111
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
