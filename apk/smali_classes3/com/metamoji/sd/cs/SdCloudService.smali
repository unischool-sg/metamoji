.class public Lcom/metamoji/sd/cs/SdCloudService;
.super Ljava/lang/Object;
.source "SdCloudService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/sd/cs/SdCloudService$paramClass;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    return-void
.end method

.method private _executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;
    .locals 1

    .line 664
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->valueOf(Ljava/lang/String;)Lcom/metamoji/sd/cs/SdCloudService$paramClass;

    move-result-object v0

    .line 665
    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdCloudService$paramClass;->ordinal()I

    move-result v0

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 695
    :pswitch_0
    check-cast p1, Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetDocumentSearchDataWithParams(Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;)Lcom/metamoji/sd/cs/response/SdFileResult;

    move-result-object p1

    return-object p1

    .line 693
    :pswitch_1
    check-cast p1, Lcom/metamoji/sd/cs/params/SdGetDriveLastUpdateRevisionParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetDriveLastUpdateRevisionWithParams(Lcom/metamoji/sd/cs/params/SdGetDriveLastUpdateRevisionParams;)Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;

    move-result-object p1

    return-object p1

    .line 691
    :pswitch_2
    check-cast p1, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetDocumentThumbnailWithParams(Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;)Lcom/metamoji/sd/cs/response/SdFileResult;

    move-result-object p1

    return-object p1

    .line 689
    :pswitch_3
    check-cast p1, Lcom/metamoji/sd/cs/params/SdGetDriveDataParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetDriveDataWithParams(Lcom/metamoji/sd/cs/params/SdGetDriveDataParams;)Lcom/metamoji/sd/cs/response/SdFileResult;

    move-result-object p1

    return-object p1

    .line 687
    :pswitch_4
    check-cast p1, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetDocumentDataWithParams(Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;)Lcom/metamoji/sd/cs/response/SdFileResult;

    move-result-object p1

    return-object p1

    .line 685
    :pswitch_5
    check-cast p1, Lcom/metamoji/sd/cs/params/SdPutDriveDataParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executePutDriveDataWithParams(Lcom/metamoji/sd/cs/params/SdPutDriveDataParams;)Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;

    move-result-object p1

    return-object p1

    .line 683
    :pswitch_6
    check-cast p1, Lcom/metamoji/sd/cs/params/SdSyncStartParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeSyncStartWithParams(Lcom/metamoji/sd/cs/params/SdSyncStartParams;)Lcom/metamoji/sd/cs/response/SdSyncStartResult;

    move-result-object p1

    return-object p1

    .line 681
    :pswitch_7
    check-cast p1, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetDocumentMetaWithParams(Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;)Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;

    move-result-object p1

    return-object p1

    .line 679
    :pswitch_8
    check-cast p1, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executePutDocumentDataWithParams(Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;)Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;

    move-result-object p1

    return-object p1

    .line 677
    :pswitch_9
    check-cast p1, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeDeleteDocumentDataWithParams(Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;)Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;

    move-result-object p1

    return-object p1

    .line 675
    :pswitch_a
    check-cast p1, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetMaintenanceInfoWithParams(Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;)Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;

    move-result-object p1

    return-object p1

    .line 673
    :pswitch_b
    check-cast p1, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeTurnOffEditFlagWithParams(Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;)Lcom/metamoji/sd/cs/response/SdTurnOffEditFlagResult;

    move-result-object p1

    return-object p1

    .line 671
    :pswitch_c
    check-cast p1, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeTurnOnEditFlagWithParams(Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;)Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;

    move-result-object p1

    return-object p1

    .line 667
    :cond_0
    check-cast p1, Lcom/metamoji/sd/cs/params/SdGetDrivePropertiesParams;

    invoke-virtual {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->executeGetDrivePropertiesWithParams(Lcom/metamoji/sd/cs/params/SdGetDrivePropertiesParams;)Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private debugDescription(Ljava/util/Map;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 711
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/metamoji/cm/CmJson;->createJsonFromMap(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p1

    .line 712
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 714
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public executeDeleteDocumentDataWithParams(Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;)Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 333
    :cond_0
    new-instance v1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    .line 334
    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;->documentId:Ljava/lang/String;

    iget-object v4, p1, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;->check:Ljava/lang/String;

    if-nez v4, :cond_1

    const-string v4, ""

    goto :goto_0

    :cond_1
    iget-object v4, p1, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;->check:Ljava/lang/String;

    :goto_0
    iget-object p1, p1, Lcom/metamoji/sd/cs/params/SdDeleteDocumentDataParams;->update:Ljava/util/Date;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    filled-new-array {v2, v3, v4, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "/rest/drives/%s/documents/%s/data?check=%s&update=%s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 335
    const-string v2, "DELETE"

    .line 337
    invoke-virtual {v1, p1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 338
    new-instance v0, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;-><init>()V

    .line 339
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 341
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->errorCode:I

    if-nez v1, :cond_2

    .line 342
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "documentId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->documentId:Ljava/lang/String;

    .line 343
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "driveId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdDeleteDocumentDataResult;->driveId:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public executeGetDocumentDataWithParams(Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;)Lcom/metamoji/sd/cs/response/SdFileResult;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 197
    :cond_0
    new-instance v1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v2, 0x1

    .line 200
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setConnectionKeepAlive(Z)V

    .line 201
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setNoCache(Z)V

    .line 203
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;->setHttpClient(Lcom/metamoji/sd/cs/SdHttpClient;)V

    .line 207
    :cond_1
    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;->documentId:Ljava/lang/String;

    iget-object v4, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;->revision:Ljava/lang/String;

    if-eqz v4, :cond_2

    iget-object p1, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentDataParams;->revision:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p1, ""

    :goto_0
    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "/rest/drives/%s/documents/%s/data?revision=%s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 212
    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getUserId()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 213
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "&caching=1"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 217
    :cond_3
    const-string v2, "GET"

    invoke-virtual {v1, p1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 218
    new-instance v0, Lcom/metamoji/sd/cs/response/SdFileResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdFileResult;-><init>()V

    .line 219
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 221
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v1, :cond_4

    .line 222
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "responseBodyFile"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    .line 223
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "responseMimeType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->mimeType:Ljava/lang/String;

    :cond_4
    return-object v0
.end method

.method public executeGetDocumentMetaWithParams(Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;)Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 239
    :cond_0
    new-instance v1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v2, 0x1

    .line 240
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setNoCache(Z)V

    .line 242
    iget-boolean v2, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->contentsRevisionOnly:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    .line 243
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setTimeout(I)V

    .line 246
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 247
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;->setHttpClient(Lcom/metamoji/sd/cs/SdHttpClient;)V

    .line 250
    :cond_2
    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentMetaParams;->documentId:Ljava/lang/String;

    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "/rest/drives/%s/documents/%s/meta"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 251
    const-string v2, "GET"

    .line 253
    invoke-virtual {v1, p1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 254
    new-instance v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;-><init>()V

    .line 255
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 257
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->errorCode:I

    if-nez v1, :cond_3

    .line 258
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "documentId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->documentId:Ljava/lang/String;

    .line 259
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "driveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->driveId:Ljava/lang/String;

    .line 260
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "meta"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdGetDocumentMetaResult;->meta:Ljava/util/Map;

    :cond_3
    return-object v0
.end method

.method public executeGetDocumentSearchDataWithParams(Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;)Lcom/metamoji/sd/cs/response/SdFileResult;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 470
    :cond_0
    new-instance v1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v2, 0x1

    .line 471
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setNoCache(Z)V

    const/4 v2, 0x5

    .line 472
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setTimeout(I)V

    .line 474
    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;->documentId:Ljava/lang/String;

    iget-object v4, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;->revision:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object p1, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentSearchDataParams;->revision:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "/rest/drives/%s/documents/%s/searchdata?revision=%s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 475
    const-string v2, "GET"

    .line 477
    invoke-virtual {v1, p1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 478
    new-instance v0, Lcom/metamoji/sd/cs/response/SdFileResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdFileResult;-><init>()V

    .line 479
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 481
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v1, :cond_2

    .line 482
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "responseBodyFile"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    .line 483
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "responseMimeType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->mimeType:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public executeGetDocumentThumbnailWithParams(Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;)Lcom/metamoji/sd/cs/response/SdFileResult;
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 169
    :cond_0
    new-instance v1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v2, 0x5

    .line 171
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setTimeout(I)V

    .line 173
    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->documentId:Ljava/lang/String;

    iget-object v4, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->revision:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object p1, p1, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->revision:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    filled-new-array {v2, v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "/rest/drives/%s/documents/%s/thumbnail?revision=%s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 174
    const-string v2, "GET"

    .line 176
    invoke-virtual {v1, p1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 177
    new-instance v0, Lcom/metamoji/sd/cs/response/SdFileResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdFileResult;-><init>()V

    .line 178
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 180
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v1, :cond_2

    .line 181
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "responseBodyFile"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    .line 182
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "responseMimeType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->mimeType:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public executeGetDriveDataWithParams(Lcom/metamoji/sd/cs/params/SdGetDriveDataParams;)Lcom/metamoji/sd/cs/response/SdFileResult;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 358
    :cond_0
    new-instance v1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v2, 0x1

    .line 360
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setConnectionKeepAlive(Z)V

    .line 361
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->setNoCache(Z)V

    .line 362
    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v2}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/metamoji/sd/cs/params/SdGetDriveDataParams;->lastSyncRevision:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string p1, ""

    goto :goto_0

    :cond_1
    iget-object p1, p1, Lcom/metamoji/sd/cs/params/SdGetDriveDataParams;->lastSyncRevision:Ljava/lang/String;

    :goto_0
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v2, "/rest/drives/%s/data?lastsyncrev=%s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 363
    const-string v2, "GET"

    .line 365
    invoke-virtual {v1, p1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 366
    new-instance v0, Lcom/metamoji/sd/cs/response/SdFileResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdFileResult;-><init>()V

    .line 367
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 369
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v1, :cond_2

    .line 370
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "responseBodyFile"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    .line 371
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "responseMimeType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdFileResult;->mimeType:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public executeGetDriveLastUpdateRevisionWithParams(Lcom/metamoji/sd/cs/params/SdGetDriveLastUpdateRevisionParams;)Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 498
    :cond_0
    new-instance p1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {p1, v1}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v1, 0x1

    .line 499
    invoke-virtual {p1, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->setNoCache(Z)V

    const/4 v1, 0x5

    .line 500
    invoke-virtual {p1, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->setTimeout(I)V

    .line 502
    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/rest/drives/%s/lastupdaterevision"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 503
    const-string v2, "GET"

    .line 505
    invoke-virtual {p1, v1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 506
    new-instance v0, Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;-><init>()V

    .line 507
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 509
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;->errorCode:I

    if-nez v1, :cond_1

    .line 510
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "driveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;->driveId:Ljava/lang/String;

    .line 511
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "lastUpdateRevision"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdGetDriveLastUpdateRevisionResult;->lastUpdateRevision:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public executeGetDrivePropertiesWithParams(Lcom/metamoji/sd/cs/params/SdGetDrivePropertiesParams;)Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 444
    :cond_0
    new-instance p1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {p1, v1}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v1, 0x1

    .line 445
    invoke-virtual {p1, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->setNoCache(Z)V

    .line 446
    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/rest/drives/%s/properties"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 447
    const-string v2, "GET"

    .line 449
    invoke-virtual {p1, v1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 450
    new-instance v0, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;-><init>()V

    .line 451
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 453
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;->errorCode:I

    if-nez v1, :cond_1

    .line 454
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "driveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;->driveId:Ljava/lang/String;

    .line 455
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "amountUsed"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdGetDrivePropertiesResult;->amountUsed:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public executeGetMaintenanceInfoWithParams(Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;)Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;
    .locals 7

    .line 521
    const-string v0, "responseBody"

    new-instance v1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v2, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    if-eqz p1, :cond_0

    .line 523
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 524
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdGetMaintenanceInfoParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/metamoji/sd/cs/SdRequestCanceller;->setHttpClient(Lcom/metamoji/sd/cs/SdHttpClient;)V

    .line 527
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdHttpClient;->getMaintenanceText()Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_7

    .line 533
    :try_start_0
    iget v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    if-lez v3, :cond_7

    iget-boolean v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    if-nez v3, :cond_7

    .line 534
    iget v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    const/16 v4, 0xc8

    const/4 v5, 0x0

    if-lt v3, v4, :cond_5

    const/16 v4, 0x12c

    if-ge v3, v4, :cond_5

    .line 539
    iget-object v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 540
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_4

    .line 544
    const-string v0, "\r\n|\r|\n"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 545
    aget-object v0, p1, v5

    const-string v3, "maintenance"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/nt/NtLocale;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 548
    array-length v3, p1

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    .line 550
    aget-object v5, p1, v4

    .line 551
    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 552
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    invoke-virtual {v5, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 553
    const-string v0, "maintenance text:%s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    move-object p1, v1

    :goto_2
    if-nez p1, :cond_8

    .line 560
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$string;->Server_Msg_UnderMaintenance:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    :cond_4
    :goto_3
    move-object p1, v1

    move v2, v5

    goto :goto_4

    :cond_5
    const/16 p1, 0x194

    if-ne v3, p1, :cond_6

    goto :goto_3

    .line 570
    :cond_6
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_4

    .line 574
    :cond_7
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/metamoji/noteanytime/R$string;->Cabinet_User_Msg_Network_Error:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 577
    :cond_8
    :goto_4
    new-instance v0, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;

    invoke-direct {v0, v2, p1}, Lcom/metamoji/sd/cs/response/SdGetMaintenanceInfoResult;-><init>(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    .line 579
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "[SdCloudService] :: ERROR executeGetMaintenanceInfoWithParams: %s"

    invoke-static {v0, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v1
.end method

.method public executeLoginWithParams(Lcom/metamoji/sd/cs/params/SdLoginParams;)Lcom/metamoji/sd/cs/response/SdLoginResult;
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 107
    :cond_0
    new-instance v0, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v1, 0x1

    .line 110
    invoke-virtual {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->setDiscardCookie(Z)V

    .line 112
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdLoginParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 113
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdLoginParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/metamoji/sd/cs/SdRequestCanceller;->setHttpClient(Lcom/metamoji/sd/cs/SdHttpClient;)V

    .line 118
    :cond_1
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    const-string v2, "requestBody"

    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdLoginParams;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    const-string p1, "/rest/users/login"

    const-string v2, "POST"

    invoke-virtual {v0, p1, v2, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 122
    new-instance v0, Lcom/metamoji/sd/cs/response/SdLoginResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdLoginResult;-><init>()V

    .line 123
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 125
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdLoginResult;->errorCode:I

    if-nez v1, :cond_2

    .line 126
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string/jumbo v1, "userId"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdLoginResult;->userId:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method public executePutDocumentDataWithParams(Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;)Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 275
    :cond_0
    new-instance v0, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    .line 276
    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->documentId:Ljava/lang/String;

    iget-object v3, p1, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->check:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->check:Ljava/lang/String;

    :goto_0
    iget-boolean v4, p1, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->fromV2:Z

    if-eqz v4, :cond_2

    const-string/jumbo v4, "true"

    goto :goto_1

    :cond_2
    const-string v4, "false"

    :goto_1
    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/rest/drives/%s/documents/%s/data?check=%s&fromv2=%s&cnechk=1"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 278
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 279
    const-string v3, "contentType"

    const-string v4, "application/zip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    const-string v3, "requestBodyFile"

    iget-object p1, p1, Lcom/metamoji/sd/cs/params/SdPutDocumentDataParams;->dataFile:Ljava/io/File;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    const-string p1, "PUT"

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 283
    new-instance v0, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;-><init>()V

    .line 284
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 286
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->errorCode:I

    if-nez v1, :cond_4

    .line 287
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "documentId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->documentId:Ljava/lang/String;

    .line 288
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "driveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->driveId:Ljava/lang/String;

    .line 289
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string/jumbo v2, "revision"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->revision:Ljava/lang/String;

    .line 290
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "registeredFromV2"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3

    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    :goto_2
    iput-boolean p1, v0, Lcom/metamoji/sd/cs/response/SdPutDocumentDataResult;->registeredFromV2:Z

    :cond_4
    return-object v0
.end method

.method public executePutDriveDataWithParams(Lcom/metamoji/sd/cs/params/SdPutDriveDataParams;)Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;
    .locals 5

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 305
    :cond_0
    new-instance v0, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    .line 306
    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/rest/drives/%s/data"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 308
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 309
    const-string v3, "contentType"

    const-string v4, "application/zip"

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    const-string v3, "requestBodyFile"

    iget-object p1, p1, Lcom/metamoji/sd/cs/params/SdPutDriveDataParams;->dataFile:Ljava/io/File;

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    const-string p1, "PUT"

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 313
    new-instance v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;-><init>()V

    .line 314
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 316
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;->errorCode:I

    if-nez v1, :cond_1

    .line 317
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "driveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;->driveId:Ljava/lang/String;

    .line 318
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string/jumbo v1, "revision"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdPutDriveDataResult;->revision:Ljava/lang/String;

    :cond_1
    return-object v0
.end method

.method public executeSyncStartWithParams(Lcom/metamoji/sd/cs/params/SdSyncStartParams;)Lcom/metamoji/sd/cs/response/SdSyncStartResult;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 141
    :cond_0
    new-instance p1, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {p1, v1}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v1, 0x1

    .line 142
    invoke-virtual {p1, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->setNoCache(Z)V

    const/16 v1, 0xa

    .line 144
    invoke-virtual {p1, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->setTimeout(I)V

    .line 145
    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/rest/drives/%s/syncstart"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 146
    const-string v2, "GET"

    .line 148
    invoke-virtual {p1, v1, v2, v0}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 149
    new-instance v0, Lcom/metamoji/sd/cs/response/SdSyncStartResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdSyncStartResult;-><init>()V

    .line 150
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 152
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->errorCode:I

    if-nez v1, :cond_1

    .line 153
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "driveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->driveId:Ljava/lang/String;

    .line 154
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "entryType"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iput-object p1, v0, Lcom/metamoji/sd/cs/response/SdSyncStartResult;->entryType:Ljava/lang/Integer;

    :cond_1
    return-object v0
.end method

.method public executeTurnOffEditFlagWithParams(Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;)Lcom/metamoji/sd/cs/response/SdTurnOffEditFlagResult;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 417
    :cond_0
    new-instance v0, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v1, 0x5

    .line 418
    invoke-virtual {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->setTimeout(I)V

    .line 420
    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->documentId:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/rest/drives/%s/documents/%s/editflag/turnoff"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 422
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 423
    const-string v3, "requestBody"

    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdTurnOffEditFlagParams;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string p1, "POST"

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 426
    new-instance v0, Lcom/metamoji/sd/cs/response/SdTurnOffEditFlagResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdTurnOffEditFlagResult;-><init>()V

    .line 427
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 429
    iget p1, v0, Lcom/metamoji/sd/cs/response/SdTurnOffEditFlagResult;->errorCode:I

    return-object v0
.end method

.method public executeTurnOnEditFlagWithParams(Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;)Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 386
    :cond_0
    new-instance v0, Lcom/metamoji/sd/cs/SdHttpClient;

    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-direct {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;-><init>(Lcom/metamoji/sd/cs/SdCloudServiceContext;)V

    const/4 v1, 0x5

    .line 387
    invoke-virtual {v0, v1}, Lcom/metamoji/sd/cs/SdHttpClient;->setTimeout(I)V

    .line 389
    iget-object v1, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    invoke-virtual {v1}, Lcom/metamoji/sd/cs/SdCloudServiceContext;->getDriveId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p1, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->documentId:Ljava/lang/String;

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "/rest/drives/%s/documents/%s/editflag/turnon"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 391
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 392
    const-string v3, "requestBody"

    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdTurnOnEditFlagParams;->stringify()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 394
    const-string p1, "POST"

    invoke-virtual {v0, v1, p1, v2}, Lcom/metamoji/sd/cs/SdHttpClient;->sendRequestWithCommand(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lcom/metamoji/sd/cs/HttpClientResponse;

    move-result-object p1

    .line 395
    new-instance v0, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;

    invoke-direct {v0}, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;-><init>()V

    .line 396
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/sd/cs/SdCloudService;->setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V

    .line 398
    iget v1, v0, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;->errorCode:I

    if-nez v1, :cond_1

    .line 399
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string/jumbo v2, "userId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;->userId:Ljava/lang/String;

    .line 400
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "locationId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;->locationId:Ljava/lang/String;

    .line 401
    iget-object v1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v2, "editFlag"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v0, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;->editFlag:Z

    .line 402
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "hasEditFlag"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lcom/metamoji/sd/cs/response/SdTurnOnEditFlagResult;->hasEditFlag:Z

    :cond_1
    return-object v0
.end method

.method public executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;
    .locals 7

    const/4 v0, 0x0

    .line 591
    :try_start_0
    invoke-direct {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->_executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_d

    .line 593
    :try_start_1
    iget v2, v1, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorCode:I

    const/16 v3, 0x2af9

    if-ne v2, v3, :cond_d

    .line 596
    invoke-static {}, Lcom/metamoji/cs/dc/CsCloudService;->getDisconnectLockObject()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 597
    :try_start_2
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v3

    .line 598
    invoke-virtual {v3}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 600
    iget v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    goto/16 :goto_4

    .line 606
    :cond_0
    iget-boolean v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->autologin:Z

    if-eqz v4, :cond_1

    .line 607
    iget-object v0, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->password:Ljava/lang/String;

    .line 608
    iget-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->qwd:Ljava/lang/String;

    goto :goto_0

    :cond_1
    move-object v4, v0

    .line 611
    :goto_0
    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_3
    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    .line 612
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    :cond_4
    if-eqz v4, :cond_b

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    goto :goto_3

    .line 618
    :cond_5
    new-instance v5, Lcom/metamoji/sd/cs/params/SdLoginParams;

    invoke-direct {v5}, Lcom/metamoji/sd/cs/params/SdLoginParams;-><init>()V

    .line 619
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    iput-object v6, v5, Lcom/metamoji/sd/cs/params/SdLoginParams;->userId:Ljava/lang/String;

    .line 620
    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    if-eqz v6, :cond_7

    iget-object v6, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_6

    goto :goto_1

    :cond_6
    iget-object v0, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedPassword:Ljava/lang/String;

    :cond_7
    :goto_1
    iput-object v0, v5, Lcom/metamoji/sd/cs/params/SdLoginParams;->password:Ljava/lang/String;

    .line 621
    iget-object v0, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    if-eqz v0, :cond_9

    iget-object v0, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_8

    goto :goto_2

    :cond_8
    iget-object v4, v3, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->loginedQwd:Ljava/lang/String;

    :cond_9
    :goto_2
    iput-object v4, v5, Lcom/metamoji/sd/cs/params/SdLoginParams;->qwd:Ljava/lang/String;

    .line 622
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdRequestParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 623
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/params/SdRequestParams;->getRequestCanceller()Lcom/metamoji/sd/cs/SdRequestCanceller;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/metamoji/sd/cs/params/SdLoginParams;->setRequestCanceller(Lcom/metamoji/sd/cs/SdRequestCanceller;)V

    .line 626
    :cond_a
    invoke-virtual {p0, v5}, Lcom/metamoji/sd/cs/SdCloudService;->executeLoginWithParams(Lcom/metamoji/sd/cs/params/SdLoginParams;)Lcom/metamoji/sd/cs/response/SdLoginResult;

    move-result-object v0

    .line 627
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_d

    .line 629
    :try_start_3
    iget v0, v0, Lcom/metamoji/sd/cs/response/SdLoginResult;->errorCode:I

    if-nez v0, :cond_d

    .line 630
    invoke-direct {p0, p1}, Lcom/metamoji/sd/cs/SdCloudService;->_executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object p1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    return-object p1

    .line 615
    :cond_b
    :goto_3
    :try_start_4
    monitor-exit v2

    return-object v1

    .line 601
    :cond_c
    :goto_4
    monitor-exit v2

    return-object v1

    :catchall_0
    move-exception p1

    .line 627
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception p1

    move-object v0, v1

    goto :goto_5

    :cond_d
    return-object v1

    :catch_1
    move-exception p1

    .line 637
    :goto_5
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public getContext()Lcom/metamoji/sd/cs/SdCloudServiceContext;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdCloudService;->m_context:Lcom/metamoji/sd/cs/SdCloudServiceContext;

    return-object v0
.end method

.method protected setupErrorFromResponse(Lcom/metamoji/sd/cs/HttpClientResponse;Lcom/metamoji/sd/cs/response/SdResponseResult;)V
    .locals 5

    .line 67
    const-string v0, "errorCode"

    const-string v1, "data"

    const/16 v2, -0x64

    if-eqz p1, :cond_5

    iget v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    if-nez v3, :cond_0

    goto :goto_1

    .line 74
    :cond_0
    iget v3, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->httpStatusCode:I

    .line 75
    iput v3, p2, Lcom/metamoji/sd/cs/response/SdResponseResult;->httpStatusCode:I

    const/16 v4, 0x1f4

    if-lt v3, v4, :cond_2

    const/16 v2, 0x2710

    .line 77
    iput v2, p2, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorCode:I

    .line 80
    :try_start_0
    iget-object v2, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    if-eqz v2, :cond_3

    iget-object v2, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 82
    iget-object v2, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 83
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 84
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p2, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorCode:I

    .line 86
    :cond_1
    iget-object v0, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p2, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorName:Ljava/lang/String;

    .line 87
    iget-object p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->bodyJsonMap:Ljava/util/Map;

    const-string v0, "message"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p2, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorMessage:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "[SdCloudService] :: ERROR setupErrorFromResponse: %s"

    invoke-static {p2, p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_2
    const/16 p1, 0xc8

    if-lt v3, p1, :cond_4

    const/16 p1, 0x12c

    if-lt v3, p1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    .line 93
    :cond_4
    :goto_0
    iput v2, p2, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorCode:I

    return-void

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    .line 68
    iget-boolean p1, p1, Lcom/metamoji/sd/cs/HttpClientResponse;->isCancel:Z

    if-eqz p1, :cond_6

    const/16 p1, -0x66

    .line 69
    iput p1, p2, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorCode:I

    return-void

    .line 71
    :cond_6
    iput v2, p2, Lcom/metamoji/sd/cs/response/SdResponseResult;->errorCode:I

    return-void
.end method
