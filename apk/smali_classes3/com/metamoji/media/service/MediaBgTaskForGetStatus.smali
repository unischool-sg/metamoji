.class public Lcom/metamoji/media/service/MediaBgTaskForGetStatus;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForGetStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForGetStatus$IMediaBgTaskForGetStatusCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetStatus$IMediaBgTaskForGetStatusCompleteAction;

.field private _isMediaId:Z

.field private _mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private _result:Z

.field private _targetIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetStatus$IMediaBgTaskForGetStatusCompleteAction;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    .line 38
    iput-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetStatus$IMediaBgTaskForGetStatusCompleteAction;

    const/4 p1, 0x0

    .line 39
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_result:Z

    .line 40
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_displayWaitView:Z

    return-void
.end method


# virtual methods
.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 120
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    .line 122
    iget-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetStatus$IMediaBgTaskForGetStatusCompleteAction;

    if-eqz p1, :cond_0

    .line 123
    iget-boolean p2, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_result:Z

    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_mediaList:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus$IMediaBgTaskForGetStatusCompleteAction;->action(ZLjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setIsMediaId(Z)V
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_isMediaId:Z

    return-void
.end method

.method public setTargetIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 32
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_targetIds:Ljava/util/List;

    return-void
.end method

.method protected taskExec()V
    .locals 5

    .line 49
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_displayWaitView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 51
    sget v2, Lcom/metamoji/noteanytime/R$string;->PostGallery_Requesting:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 55
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 63
    :cond_1
    new-instance v2, Lcom/metamoji/media/service/MediaGetStatus;

    invoke-direct {v2, p0}, Lcom/metamoji/media/service/MediaGetStatus;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 64
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_targetIds:Ljava/util/List;

    iput-object v3, v2, Lcom/metamoji/media/service/MediaGetStatus;->targetIds:Ljava/util/List;

    .line 65
    iget-boolean v3, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_isMediaId:Z

    iput-boolean v3, v2, Lcom/metamoji/media/service/MediaGetStatus;->isMediaId:Z

    .line 66
    iput-object v0, v2, Lcom/metamoji/media/service/MediaGetStatus;->userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    .line 68
    invoke-static {v0}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move v3, v1

    .line 72
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaGetStatus;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->cancel()Z

    return-void

    .line 93
    :cond_2
    const-string/jumbo v2, "statusCode"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-eqz v2, :cond_3

    .line 97
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->cancel()Z

    .line 98
    const-string/jumbo v1, "statusMessage"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Get media status failed\u00a5n %s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 109
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "[MediaBgTaskForGetStatus] response\n%s"

    invoke-static {v3, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const-string v2, "mediaList"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_mediaList:Ljava/util/List;

    .line 111
    iput-boolean v1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->_result:Z

    return-void

    :catch_0
    move-exception v4

    if-ne v3, v1, :cond_4

    .line 75
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaGetStatus;->isForbidden()Z

    move-result v3

    if-ne v3, v1, :cond_4

    .line 77
    invoke-static {v0}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v3

    if-ne v3, v1, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    .line 81
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetStatus;->cancel()Z

    .line 82
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download_Failed:I

    invoke-static {v4, v0}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method
