.class public Lcom/metamoji/media/service/MediaGetStatus;
.super Lcom/metamoji/media/service/MediaURLConnection;
.source "MediaGetStatus.java"


# instance fields
.field public isMediaId:Z

.field public targetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaURLConnection;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    return-void
.end method

.method static addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3d

    .line 86
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 88
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


# virtual methods
.method public bridge synthetic isForbidden()Z
    .locals 1

    .line 14
    invoke-super {p0}, Lcom/metamoji/media/service/MediaURLConnection;->isForbidden()Z

    move-result v0

    return v0
.end method

.method public sendRequest()Z
    .locals 7

    .line 29
    const-string v0, "gallery/GetMediaStatus"

    invoke-static {v0}, Lcom/metamoji/media/MediaUtil;->baseURLForEditIt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3f

    .line 33
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 36
    iget-object v0, p0, Lcom/metamoji/media/service/MediaGetStatus;->userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->userId:Ljava/lang/String;

    const-string/jumbo v2, "userId"

    invoke-static {v1, v2, v0}, Lcom/metamoji/media/service/MediaGetStatus;->addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x26

    .line 38
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 52
    const-string v2, "productName"

    const-string v3, "Android-Share-G-ClassRoom"

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaGetStatus;->addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 57
    const-string v2, "productVersion"

    invoke-static {}, Lcom/metamoji/noteanytime/ModelInfo;->getProductVersion()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaGetStatus;->addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 62
    const-string/jumbo v2, "timeZone"

    invoke-static {}, Lcom/metamoji/lb/LbInAppPurchaseUtils;->systemTimeZone()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/metamoji/media/service/MediaGetStatus;->addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    iget-boolean v2, p0, Lcom/metamoji/media/service/MediaGetStatus;->isMediaId:Z

    if-eqz v2, :cond_0

    .line 67
    const-string v2, "clientMediaId"

    goto :goto_0

    .line 66
    :cond_0
    const-string v2, "recordId"

    .line 70
    :goto_0
    iget-object v3, p0, Lcom/metamoji/media/service/MediaGetStatus;->targetIds:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 71
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 72
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    invoke-static {v1, v6, v5}, Lcom/metamoji/media/service/MediaGetStatus;->addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 78
    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 79
    iget-object v0, p0, Lcom/metamoji/media/service/MediaGetStatus;->userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    iget-object v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->companyId:Ljava/lang/String;

    const-string v2, "companyID"

    invoke-static {v1, v2, v0}, Lcom/metamoji/media/service/MediaGetStatus;->addCgiParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/metamoji/media/service/MediaGetStatus;->getRequest(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
