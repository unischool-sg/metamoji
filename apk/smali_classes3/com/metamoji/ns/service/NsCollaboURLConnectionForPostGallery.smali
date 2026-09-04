.class public Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;
.super Lcom/metamoji/ns/service/NsCollaboURLConnection;
.source "NsCollaboURLConnectionForPostGallery.java"


# instance fields
.field public roomId:Ljava/lang/String;

.field public shareFile:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public thumbnailData:[B

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/metamoji/ns/service/NsCollaboURLConnection;-><init>(Lcom/metamoji/ns/task/NsCollaboBgTaskBase;)V

    return-void
.end method


# virtual methods
.method protected baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 41
    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo$BuildOptions;->DIGITAL_CABINET_URL_BASE()Ljava/lang/String;

    move-result-object v0

    .line 44
    sget-boolean v1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-eqz v1, :cond_1

    .line 45
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v0

    .line 46
    const-string v1, "DevEditItServer"

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtUserDefaults;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 49
    :cond_0
    invoke-static {}, Lcom/metamoji/cs/CsCloudServiceContext;->dcServerURL()Ljava/lang/String;

    move-result-object v0

    .line 53
    :cond_1
    const-string v1, "/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 54
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 56
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public sendRequest()Z
    .locals 5

    .line 65
    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->roomId:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->shareFile:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->thumbnailData:[B

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 70
    :cond_0
    const-string v0, "gallery/PostForShareAnytime"

    invoke-virtual {p0, v0}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    new-instance v1, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v1}, Lokhttp3/MultipartBody$Builder;-><init>()V

    sget-object v2, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v1, v2}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    move-result-object v1

    .line 75
    const-string v2, "cmd"

    const-string v3, "post"

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 78
    const-string/jumbo v2, "roomId"

    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->roomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 81
    const-string v2, "productName"

    const-string v3, "Android-Share-G-ClassRoom"

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 84
    const-string v2, "productVersion"

    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 87
    const-string v2, "encryptedHash"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 90
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->title:Ljava/lang/String;

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    const-string/jumbo v4, "title"

    invoke-virtual {v1, v4, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 93
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->text:Ljava/lang/String;

    if-eqz v2, :cond_2

    move-object v3, v2

    :cond_2
    const-string/jumbo v2, "text"

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 96
    const-string/jumbo v2, "timezone"

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/MultipartBody$Builder;

    .line 99
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->shareFile:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 100
    const-string v3, "application/vnd.metamoji.btshare"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Ljava/io/File;Lokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 101
    const-string v4, "document"

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v4, v2, v3}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 104
    iget-object v2, p0, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->thumbnailData:[B

    const-string v3, "image/jpeg"

    invoke-static {v3}, Lokhttp3/MediaType;->get(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create([BLokhttp3/MediaType;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 105
    const-string v3, "image"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 107
    invoke-virtual {v1}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/metamoji/ns/service/NsCollaboURLConnectionForPostGallery;->postRequest(Ljava/lang/String;Lokhttp3/RequestBody;)Z

    move-result v0

    return v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return v0
.end method
