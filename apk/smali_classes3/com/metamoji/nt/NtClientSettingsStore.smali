.class public Lcom/metamoji/nt/NtClientSettingsStore;
.super Ljava/lang/Object;
.source "NtClientSettingsStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtClientSettingsStore$IClientSettingsCallBack;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final KEY_CLIENT_SETTINGS:Ljava/lang/String; = "AND_ST_CR_V1"

.field private static final KEY_CLIENT_SETTINGS_MAZEC:Ljava/lang/String; = "AND_MZ_CR_V1"

.field private static final KEY_CLIENT_SETTINGS_SYSTEMSETTINGS:Ljava/lang/String; = "AND_SS_CR_V1"

.field private static final KEY_CLIENT_SETTINGS_USERDEFAULTS:Ljava/lang/String; = "AND_UD_CR_V1"

.field private static final KEY_DOCUMENT_MANAGER_VERSION:Ljava/lang/String; = "COM_DMV_V1"

.field private static final _FILENAME_MAZEC_USER_DATA:Ljava/lang/String; = "mazecUserData"

.field private static final _FILENAME_SYSTEM_SETTINGS:Ljava/lang/String; = "systemSettings"

.field private static final _FILENAME_USER_DEFAULTS:Ljava/lang/String; = "userDefaults"

.field private static final _SETTINGS_FILE_EXT:Ljava/lang/String; = "dat"

.field private static final _SETTINGS_FILE_PREFIX:Ljava/lang/String; = "settings"

.field private static final executeGetClientFileWithParams:Ljava/lang/String; = "executeGetClientFileWithParams"

.field private static final executeGetClientSettingsWithParams:Ljava/lang/String; = "executeGetClientSettingsWithParams"

.field private static final executeSetClientFileWithParams:Ljava/lang/String; = "executeSetClientFileWithParams"

.field private static final executeSetClientSettingsWithParams:Ljava/lang/String; = "executeSetClientSettingsWithParams"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _restoreClientSettingsFromServer()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 2

    .line 112
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetClientFileParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetClientFileParam;-><init>()V

    .line 113
    const-string v1, "AND_ST_CR_V1"

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetClientFileParam;->key:Ljava/lang/String;

    .line 114
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;

    if-eqz v0, :cond_1

    .line 115
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;->errorCode:I

    if-nez v1, :cond_1

    .line 116
    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 117
    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;->url:Ljava/lang/String;

    .line 118
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-static {v0}, Lcom/metamoji/nt/NtClientSettingsStore;->restoreSettings(Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    return-object v0

    .line 122
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->_restoreClientSettingsFromServerOld()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static _restoreClientSettingsFromServerOld()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 4

    .line 272
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;-><init>()V

    .line 273
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;->key:Ljava/util/List;

    .line 276
    iget-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;->key:Ljava/util/List;

    const-string v2, "AND_UD_CR_V1"

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    iget-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;->key:Ljava/util/List;

    const-string v3, "AND_SS_CR_V1"

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;

    if-eqz v0, :cond_2

    .line 280
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->errorCode:I

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->keyValue:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 282
    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->keyValue:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 283
    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->keyValue:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 284
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 286
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtUserDefaults;->RestoreFromJsonString(Ljava/lang/String;)V

    .line 288
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->clearTextUnitSettingsCache()V

    .line 289
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->clearTextLineExtractorSettingsCache()V

    .line 290
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/nt/NtMRUDocList;->reload()V

    .line 294
    :cond_0
    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->keyValue:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 295
    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->keyValue:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 296
    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 297
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/nt/NtSystemSettings;->restoreWithStateFileBase64EncodedString(Ljava/lang/String;)V

    .line 300
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtClientSettingsStore$2;

    invoke-direct {v2}, Lcom/metamoji/nt/NtClientSettingsStore$2;-><init>()V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 309
    :cond_1
    new-instance v1, Lcom/metamoji/cs/dc/params/CsGetClientFileParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsGetClientFileParam;-><init>()V

    .line 310
    const-string v2, "AND_MZ_CR_V1"

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsGetClientFileParam;->key:Ljava/lang/String;

    .line 311
    invoke-static {v1}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v1

    check-cast v1, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;

    if-eqz v1, :cond_2

    .line 312
    iget v2, v1, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;->errorCode:I

    if-nez v2, :cond_2

    .line 313
    iget-object v2, v1, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;->url:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 314
    iget-object v1, v1, Lcom/metamoji/cs/dc/response/CsGetClientFileResponse;->url:Ljava/lang/String;

    .line 315
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 316
    invoke-static {}, Lcom/metamoji/nt/NtMazecManager;->getInstance()Lcom/metamoji/nt/NtMazecManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtMazecManager;->restoreUserData(Ljava/io/File;)V

    .line 318
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_2
    return-object v0
.end method

.method private static doRestore()Z
    .locals 1

    .line 369
    invoke-static {}, Lcom/metamoji/nt/mv/MvDebug;->isRestoreSetting()Z

    move-result v0

    return v0
.end method

.method private static getSettingsFile()Ljava/io/File;
    .locals 6

    .line 236
    :try_start_0
    const-string/jumbo v0, "settings"

    const-string v1, "dat"

    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v2

    invoke-static {v0, v1, v2}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 238
    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    :try_start_1
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v2

    .line 242
    invoke-virtual {v2}, Lcom/metamoji/nt/NtUserDefaults;->StoreToJsonString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    .line 243
    const-string v4, "UTF-8"

    if-eqz v2, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 244
    const-string/jumbo v5, "userDefaults"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v5, v2, v3}, Lcom/metamoji/sd/SdUtils;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 247
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtSystemSettings;->storeStateFileBase64EncodeString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 248
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 249
    const-string/jumbo v5, "systemSettings"

    invoke-virtual {v2, v4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-static {v1, v5, v2, v3}, Lcom/metamoji/sd/SdUtils;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;[BI)V

    .line 252
    :cond_1
    invoke-static {}, Lcom/metamoji/nt/NtMazecManager;->getInstance()Lcom/metamoji/nt/NtMazecManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/metamoji/nt/NtMazecManager;->backupUserData()Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 254
    const-string v3, "mazecUserData"

    const/4 v4, 0x1

    invoke-static {v1, v3, v2, v4}, Lcom/metamoji/sd/SdUtils;->writeFileInZip(Ljava/util/zip/ZipOutputStream;Ljava/lang/String;Ljava/io/File;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    :cond_2
    :try_start_3
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    .line 259
    throw v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static readString(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    .line 198
    :try_start_0
    new-instance v1, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {p0, p1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object p0

    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v1, p0, v2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    .line 199
    invoke-static {v1}, Lcom/metamoji/sd/SdUtils;->readStreamAsString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    .line 200
    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 203
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    .line 204
    invoke-virtual {p1}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    cmp-long p1, v2, v4

    if-eqz p1, :cond_0

    return-object v0

    :cond_0
    return-object p0

    :catch_0
    move-exception p0

    .line 210
    const-string p1, "NtClientSettingsStore#readString"

    invoke-static {p0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v0
.end method

.method public static resetClientSettings()V
    .locals 2

    .line 67
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtUserDefaults;->ResetUserDefaults()V

    .line 70
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtSystemSettings;->resetAllSettings()V

    .line 73
    invoke-static {}, Lcom/metamoji/nt/NtMazecManager;->getInstance()Lcom/metamoji/nt/NtMazecManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecManager;->reloadSettings()V

    .line 74
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->clearTextUnitSettingsCache()V

    .line 75
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->clearTextLineExtractorSettingsCache()V

    .line 76
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMRUDocList;->reload()V

    .line 79
    invoke-static {}, Lcom/metamoji/ns/NsCollaboDeviceInfo;->clearDeviceInfo()V

    .line 82
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtClientSettingsStore$1;

    invoke-direct {v1}, Lcom/metamoji/nt/NtClientSettingsStore$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 90
    invoke-static {}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->init()V

    .line 93
    invoke-static {}, Lcom/metamoji/nt/NtMazecManager;->getInstance()Lcom/metamoji/nt/NtMazecManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtMazecManager;->clearUserData()V

    return-void
.end method

.method public static restoreClientSettingsFromServer()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 2

    .line 100
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->restoreDocumentManagerVersionFromServer()V

    .line 101
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->doRestore()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->_restoreClientSettingsFromServer()Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    return-object v0

    .line 105
    :cond_0
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;-><init>()V

    const/4 v1, 0x0

    .line 106
    iput v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->errorCode:I

    return-object v0
.end method

.method public static restoreDocumentManagerVersionFromServer()V
    .locals 4

    .line 331
    new-instance v0, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;-><init>()V

    const/4 v1, 0x1

    .line 333
    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "COM_DMV_V1"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/metamoji/cs/dc/params/CsGetClientSettingsParam;->key:Ljava/util/List;

    .line 335
    invoke-static {v0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;

    if-eqz v0, :cond_0

    .line 336
    iget v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->errorCode:I

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->keyValue:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 338
    iget-object v1, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->keyValue:Ljava/util/Map;

    invoke-interface {v1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 339
    iget-object v0, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->keyValue:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 340
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 341
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/metamoji/dvm/DvmDocumentManagerInitializer;->setDocumentManagerVersion(I)V

    :cond_0
    return-void
.end method

.method private static restoreSettings(Ljava/lang/String;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
    .locals 10

    .line 131
    const-string v0, "mazecUserData"

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v2, 0x0

    .line 135
    :try_start_0
    new-instance v3, Ljava/util/zip/ZipFile;

    invoke-direct {v3, v1}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 137
    :try_start_1
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v2

    .line 139
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 140
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/zip/ZipEntry;

    .line 141
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 142
    const-string/jumbo v6, "systemSettings"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 144
    invoke-static {v3, v4}, Lcom/metamoji/nt/NtClientSettingsStore;->readString(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 145
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 146
    invoke-static {}, Lcom/metamoji/nt/NtSystemSettings;->getInstance()Lcom/metamoji/nt/NtSystemSettings;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/nt/NtSystemSettings;->restoreWithStateFileBase64EncodedString(Ljava/lang/String;)V

    goto :goto_0

    .line 148
    :cond_1
    const-string/jumbo v6, "userDefaults"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 150
    invoke-static {v3, v4}, Lcom/metamoji/nt/NtClientSettingsStore;->readString(Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 151
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 152
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/metamoji/nt/NtUserDefaults;->RestoreFromJsonString(Ljava/lang/String;)V

    .line 154
    invoke-static {}, Lcom/metamoji/un/text/UnTextUnit;->clearTextUnitSettingsCache()V

    .line 155
    invoke-static {}, Lcom/metamoji/tle/TextLineExtractorManager;->clearTextLineExtractorSettingsCache()V

    .line 156
    invoke-static {}, Lcom/metamoji/nt/NtMRUDocList;->getInstance()Lcom/metamoji/nt/NtMRUDocList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/metamoji/nt/NtMRUDocList;->reload()V

    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 160
    const-string v5, "dat"

    invoke-static {}, Lcom/metamoji/sd/SdUtils;->getTempDir()Ljava/io/File;

    move-result-object v6

    invoke-static {v0, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v5

    .line 161
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 162
    new-instance v7, Ljava/util/zip/CheckedInputStream;

    invoke-virtual {v3, v4}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    new-instance v8, Ljava/util/zip/CRC32;

    invoke-direct {v8}, Ljava/util/zip/CRC32;-><init>()V

    invoke-direct {v7, v4, v8}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    const/16 v4, 0x2000

    .line 164
    new-array v4, v4, [B

    .line 166
    :goto_1
    invoke-virtual {v7, v4}, Ljava/util/zip/CheckedInputStream;->read([B)I

    move-result v8

    const/4 v9, -0x1

    if-eq v8, v9, :cond_3

    .line 167
    invoke-virtual {v6, v4, p0, v8}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_1

    .line 169
    :cond_3
    invoke-virtual {v7}, Ljava/util/zip/CheckedInputStream;->close()V

    .line 170
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 171
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 172
    invoke-static {}, Lcom/metamoji/nt/NtMazecManager;->getInstance()Lcom/metamoji/nt/NtMazecManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Lcom/metamoji/nt/NtMazecManager;->restoreUserData(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 183
    :cond_4
    :try_start_2
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_3

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_4

    :catch_0
    move-exception v0

    move-object v2, v3

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_4

    :catch_1
    move-exception v0

    .line 179
    :goto_2
    :try_start_3
    const-string v3, "NtClientSettingsStore#restoreSettings"

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v2, :cond_5

    .line 183
    :try_start_4
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 188
    :catch_2
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 190
    new-instance v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;

    invoke-direct {v0}, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;-><init>()V

    .line 191
    iput p0, v0, Lcom/metamoji/cs/dc/response/CsGetClientSettingsResponse;->errorCode:I

    return-object v0

    :goto_4
    if-eqz v2, :cond_6

    .line 183
    :try_start_5
    invoke-virtual {v2}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 186
    :catch_3
    :cond_6
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception p0

    .line 188
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 189
    throw p0
.end method

.method public static storeClientSettingsToServer()V
    .locals 3

    .line 220
    invoke-static {}, Lcom/metamoji/nt/NtClientSettingsStore;->getSettingsFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    new-instance v1, Lcom/metamoji/cs/dc/params/CsSetClientFileParam;

    invoke-direct {v1}, Lcom/metamoji/cs/dc/params/CsSetClientFileParam;-><init>()V

    .line 223
    const-string v2, "AND_ST_CR_V1"

    iput-object v2, v1, Lcom/metamoji/cs/dc/params/CsSetClientFileParam;->key:Ljava/lang/String;

    .line 224
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/metamoji/cs/dc/params/CsSetClientFileParam;->url:Ljava/lang/String;

    .line 225
    invoke-static {v1}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object v0

    check-cast v0, Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;

    if-eqz v0, :cond_0

    .line 226
    iget v0, v0, Lcom/metamoji/cs/dc/response/CsSetClientFileResponse;->errorCode:I

    if-eqz v0, :cond_1

    .line 228
    :cond_0
    const-string v0, "NtClientSettingsStore#storeClientSettingsToServer failed."

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static storeDocumentManagerVersionToServer(I)V
    .locals 2

    .line 353
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 356
    const-string v1, "COM_DMV_V1"

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    new-instance p0, Lcom/metamoji/cs/dc/params/CsSetClientSettingsParam;

    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsSetClientSettingsParam;-><init>()V

    .line 358
    iput-object v0, p0, Lcom/metamoji/cs/dc/params/CsSetClientSettingsParam;->keyValue:Ljava/util/Map;

    .line 360
    invoke-static {p0}, Lcom/metamoji/cs/dc/CsCloudService;->executeWithAutoLoginFor(Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;)Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;

    move-result-object p0

    check-cast p0, Lcom/metamoji/cs/dc/response/CsSetClientSettingsResponse;

    if-eqz p0, :cond_1

    .line 361
    iget p0, p0, Lcom/metamoji/cs/dc/response/CsSetClientSettingsResponse;->errorCode:I

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 363
    :cond_1
    :goto_0
    const-string p0, "Ignorable: storeDocumentManagerVersionToServer error"

    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;)V

    return-void
.end method
