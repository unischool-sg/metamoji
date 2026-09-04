.class public Lcom/metamoji/media/service/MediaGetMediaFile;
.super Lcom/metamoji/media/service/MediaURLConnection;
.source "MediaGetMediaFile.java"


# instance fields
.field public isMediaId:Z

.field public targetId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaURLConnection;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    return-void
.end method

.method static addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 37
    :try_start_0
    const-string p1, "UTF-8"

    invoke-static {p2, p1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static urlForGetMediaFileForMediaId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 45
    const-string v0, "gallery/GetMediaFile/"

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    .line 49
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, "clientMediaId"

    invoke-static {v1, v0, p0}, Lcom/metamoji/media/service/MediaGetMediaFile;->addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static urlForGetMediaFileForRecordId(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 58
    const-string v0, "gallery/GetMediaFile/"

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    .line 62
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 64
    const-string v0, "recordId"

    invoke-static {v1, v0, p0}, Lcom/metamoji/media/service/MediaGetMediaFile;->addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bridge synthetic isForbidden()Z
    .locals 1

    .line 8
    invoke-super {p0}, Lcom/metamoji/media/service/MediaURLConnection;->isForbidden()Z

    move-result v0

    return v0
.end method

.method public sendRequest()Z
    .locals 2

    .line 23
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaGetMediaFile;->isMediaId:Z

    .line 27
    iget-object v1, p0, Lcom/metamoji/media/service/MediaGetMediaFile;->targetId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 24
    invoke-static {v1}, Lcom/metamoji/media/service/MediaGetMediaFile;->urlForGetMediaFileForMediaId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v1}, Lcom/metamoji/media/service/MediaGetMediaFile;->urlForGetMediaFileForRecordId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 30
    :goto_0
    invoke-virtual {p0, v0}, Lcom/metamoji/media/service/MediaGetMediaFile;->getRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
