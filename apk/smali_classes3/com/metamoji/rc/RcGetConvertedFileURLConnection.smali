.class public Lcom/metamoji/rc/RcGetConvertedFileURLConnection;
.super Lcom/metamoji/rc/RcRemoteConverterURLConnection;
.source "RcGetConvertedFileURLConnection.java"


# instance fields
.field private _jobId1:Ljava/lang/String;

.field private _jobId2:Ljava/lang/String;

.field private _toMime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/metamoji/rc/RcRemoteConverterURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public downloadFileOrResponseJsonFromRequest()Ljava/lang/Object;
    .locals 9

    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadMode:Z

    .line 76
    invoke-virtual {p0}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->sendRequest()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 82
    :cond_0
    iget v0, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_statusCode:I

    .line 87
    iget v2, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_statusCode:I

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_toMime:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_mimeType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 89
    iget-object v0, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    return-object v0

    .line 94
    :cond_1
    :try_start_0
    invoke-static {v0}, Lcom/metamoji/ns/service/NsCollaboServiceUtil;->isSuccessStatusCode(I)Z

    move-result v2

    .line 95
    const-string v3, "application/json"

    iget-object v4, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_mimeType:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    .line 98
    :try_start_1
    iget-object v4, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    if-eqz v4, :cond_2

    .line 99
    iget-object v4, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 101
    :cond_2
    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v5}, Lcom/metamoji/df/model/ByteData;->getByteArray()[B

    move-result-object v5

    iget-object v6, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_responseData:Lcom/metamoji/df/model/ByteData;

    invoke-virtual {v6}, Lcom/metamoji/df/model/ByteData;->getLength()I

    move-result v6

    const-string v7, "UTF-8"

    invoke-direct {v4, v5, v3, v6, v7}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 103
    :goto_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {v5}, Lcom/metamoji/cm/CmJson;->createMapFromJson(Lorg/json/JSONObject;)Ljava/util/Map;

    move-result-object v5
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 105
    :try_start_2
    const-string v6, "[MMJNsCollaboServiceUtil]Response JSON=\n%s"

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v6, v4}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v1

    move-object v4, v3

    goto :goto_1

    :catch_0
    move-object v5, v1

    .line 108
    :catch_1
    :try_start_3
    const-string v2, "0"

    .line 109
    const-string v4, "invalid response json."
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v8, v3

    move-object v3, v2

    move v2, v8

    goto :goto_1

    :cond_3
    move-object v3, v1

    move-object v4, v3

    move-object v5, v4

    .line 113
    :goto_1
    iget-object v6, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    if-eqz v6, :cond_4

    .line 114
    iget-object v6, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 115
    iput-object v1, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    :cond_4
    if-eqz v2, :cond_5

    if-eqz v5, :cond_5

    return-object v5

    :cond_5
    if-eqz v5, :cond_6

    .line 124
    const-string v1, "errorCode"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 125
    const-string v1, "errorMessage"

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 127
    :cond_6
    new-instance v1, Lcom/metamoji/ns/service/NsCollaboServiceException;

    invoke-direct {v1, v0, v3, v4}, Lcom/metamoji/ns/service/NsCollaboServiceException;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v0

    .line 113
    iget-object v2, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    if-eqz v2, :cond_7

    .line 114
    iget-object v2, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 115
    iput-object v1, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->m_downloadFile:Ljava/io/File;

    .line 117
    :cond_7
    throw v0
.end method

.method public getJobId1()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_jobId1:Ljava/lang/String;

    return-object v0
.end method

.method public getJobId2()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_jobId2:Ljava/lang/String;

    return-object v0
.end method

.method public getToMime()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_toMime:Ljava/lang/String;

    return-object v0
.end method

.method public sendRequest()Z
    .locals 4

    .line 57
    iget-object v0, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_jobId1:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_jobId2:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 61
    :cond_0
    sget-object v0, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->GET_CONVERTED_FILE_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 65
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->GET_CONVERTED_FILE_PARAM_JOB_ID_1:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_jobId1:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->GET_CONVERTED_FILE_PARAM_JOB_ID_2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_jobId2:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setJobId1(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_jobId1:Ljava/lang/String;

    return-void
.end method

.method public setJobId2(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_jobId2:Ljava/lang/String;

    return-void
.end method

.method public setToMime(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/rc/RcGetConvertedFileURLConnection;->_toMime:Ljava/lang/String;

    return-void
.end method
