.class public Lcom/metamoji/media/service/MediaBgTaskForGetList;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForGetList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForGetList$IMediaBgTaskForGetListCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetList$IMediaBgTaskForGetListCompleteAction;

.field private _mediaList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForGetList$IMediaBgTaskForGetListCompleteAction;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    .line 33
    iput-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForGetList;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetList$IMediaBgTaskForGetListCompleteAction;

    const/4 p1, 0x1

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetList;->_displayWaitView:Z

    return-void
.end method


# virtual methods
.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    .line 109
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 112
    iget-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForGetList;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForGetList$IMediaBgTaskForGetListCompleteAction;

    iget-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForGetList;->_mediaList:Ljava/util/List;

    invoke-interface {p1, p2}, Lcom/metamoji/media/service/MediaBgTaskForGetList$IMediaBgTaskForGetListCompleteAction;->action(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method protected taskExec()V
    .locals 5

    .line 43
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForGetList;->_displayWaitView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 44
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetList;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 45
    sget v2, Lcom/metamoji/noteanytime/R$string;->Now_Downloading:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetList;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 55
    :cond_1
    new-instance v2, Lcom/metamoji/media/service/MediaGetList;

    invoke-direct {v2, p0}, Lcom/metamoji/media/service/MediaGetList;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    move v3, v1

    .line 61
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaGetList;->responseJsonFromRequest()Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetList;->cancel()Z

    return-void

    .line 87
    :cond_2
    const-string/jumbo v1, "statusCode"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->toInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_3

    .line 91
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForGetList;->cancel()Z

    .line 92
    sget v1, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download_Failed:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "statusMessage"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\n%s"

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 99
    :cond_3
    const-string v1, "mediaList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 100
    iput-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForGetList;->_mediaList:Ljava/util/List;

    return-void

    :catch_0
    move-exception v4

    if-ne v3, v1, :cond_4

    .line 64
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaGetList;->isForbidden()Z

    move-result v3

    if-ne v3, v1, :cond_4

    .line 66
    invoke-static {v0}, Lcom/metamoji/media/service/MediaBgTaskForGetList;->login(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)Z

    move-result v3

    if-ne v3, v1, :cond_4

    const/4 v3, 0x0

    goto :goto_0

    .line 70
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Store_Msg_Download_Failed:I

    invoke-static {v4, v0}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    const/16 v0, 0x194

    .line 73
    iget v1, v2, Lcom/metamoji/media/service/MediaGetList;->m_statusCode:I

    if-ne v0, v1, :cond_5

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForGetList;->_mediaList:Ljava/util/List;

    :cond_5
    :goto_1
    return-void
.end method
