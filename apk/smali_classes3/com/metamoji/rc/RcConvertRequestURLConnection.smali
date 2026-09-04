.class public Lcom/metamoji/rc/RcConvertRequestURLConnection;
.super Lcom/metamoji/rc/RcRemoteConverterURLConnection;
.source "RcConvertRequestURLConnection.java"


# instance fields
.field private _file:Ljava/io/File;

.field private _fromMime:Ljava/lang/String;

.field private _fromSuffix:Ljava/lang/String;

.field private _jobId1:Ljava/lang/String;

.field private _jobId2:Ljava/lang/String;

.field private _toMime:Ljava/lang/String;

.field private _toSuffix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/metamoji/rc/RcRemoteConverterURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method public getFile()Ljava/io/File;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_file:Ljava/io/File;

    return-object v0
.end method

.method public getFromMime()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromMime:Ljava/lang/String;

    return-object v0
.end method

.method public getFromSuffix()Ljava/lang/String;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public getJobId1()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_jobId1:Ljava/lang/String;

    return-object v0
.end method

.method public getJobId2()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_jobId2:Ljava/lang/String;

    return-object v0
.end method

.method public getToMime()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_toMime:Ljava/lang/String;

    return-object v0
.end method

.method public getToSuffix()Ljava/lang/String;
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_toSuffix:Ljava/lang/String;

    return-object v0
.end method

.method public sendRequest()Z
    .locals 5

    .line 84
    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_jobId1:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_jobId2:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromMime:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromSuffix:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_toMime:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_toSuffix:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_file:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_0

    .line 91
    :cond_0
    sget-object v0, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->CONVERT_REQUEST_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->baseURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 93
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 95
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->CONVERT_REQUEST_PARAM_JOB_ID_1:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_jobId1:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->CONVERT_REQUEST_PARAM_JOB_ID_2:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_jobId2:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->CONVERT_REQUEST_PARAM_FROM_MIME:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromMime:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->CONVERT_REQUEST_PARAM_FROM_SUFFIX:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromSuffix:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->CONVERT_REQUEST_PARAM_TO_MIME:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_toMime:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->CONVERT_REQUEST_PARAM_TO_SUFFIX:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_toSuffix:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    sget-object v2, Lcom/metamoji/rc/RcRemoteConverterServiceConstants;->CONVERT_REQUEST_PARAM_FILE_ENTITY:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_file:Ljava/io/File;

    iget-object v4, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromMime:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->addContent(Lokhttp3/MultipartBody$Builder;Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/rc/RcConvertRequestURLConnection;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setFile(Ljava/io/File;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_file:Ljava/io/File;

    return-void
.end method

.method public setFromMime(Ljava/lang/String;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromMime:Ljava/lang/String;

    return-void
.end method

.method public setFromSuffix(Ljava/lang/String;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_fromSuffix:Ljava/lang/String;

    return-void
.end method

.method public setJobId1(Ljava/lang/String;)V
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_jobId1:Ljava/lang/String;

    return-void
.end method

.method public setJobId2(Ljava/lang/String;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_jobId2:Ljava/lang/String;

    return-void
.end method

.method public setToMime(Ljava/lang/String;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_toMime:Ljava/lang/String;

    return-void
.end method

.method public setToSuffix(Ljava/lang/String;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/metamoji/rc/RcConvertRequestURLConnection;->_toSuffix:Ljava/lang/String;

    return-void
.end method
