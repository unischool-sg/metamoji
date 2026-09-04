.class public Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForSetMediaTitle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;

.field private _completedRecordIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _isMediaId:Z

.field private _statusCode:I

.field private _titles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    .line 40
    iput-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;

    .line 41
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_titles:Ljava/util/Map;

    .line 42
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_completedRecordIds:Ljava/util/List;

    const/4 p1, -0x1

    .line 43
    iput p1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_statusCode:I

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_titles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 137
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    .line 139
    iget-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;

    if-eqz p1, :cond_0

    .line 140
    iget p2, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_statusCode:I

    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_completedRecordIds:Ljava/util/List;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle$IMediaBgTaskForSetMediaTitleCompleteAction;->action(ILjava/util/List;)V

    :cond_0
    return-void
.end method

.method public setIsMediaId(Z)V
    .locals 0

    .line 35
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_isMediaId:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_2

    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_2

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 55
    :cond_1
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_titles:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    return-void
.end method

.method protected taskExec()V
    .locals 10

    .line 64
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_displayWaitView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 66
    sget v2, Lcom/metamoji/noteanytime/R$string;->PostGallery_Requesting:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 67
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 71
    :cond_0
    new-instance v0, Lcom/metamoji/media/service/MediaSetMediaTitle;

    invoke-direct {v0, p0}, Lcom/metamoji/media/service/MediaSetMediaTitle;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 72
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_titles:Ljava/util/Map;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaSetMediaTitle;->setTitles(Ljava/util/Map;)V

    .line 73
    iget-boolean v2, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_isMediaId:Z

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaSetMediaTitle;->setIsMediaId(Z)V

    .line 74
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_userInfo:Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaSetMediaTitle;->setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    .line 78
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/media/service/MediaSetMediaTitle;->responseStringFromRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    .line 86
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->cancel()Z

    return-void

    .line 97
    :cond_1
    const-string v2, "[MMJMediaBgTaskForSetMediaTitleMedia] response\n%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 99
    const-string v2, "\r\n|\r|\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 102
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_4

    aget-object v7, v2, v5

    const/16 v8, 0x2c

    if-eqz v6, :cond_2

    .line 105
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 106
    invoke-virtual {v7, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 107
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_statusCode:I

    goto :goto_2

    .line 111
    :cond_2
    const-string v9, "finish"

    invoke-virtual {v7, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    move v6, v1

    goto :goto_1

    .line 120
    :cond_3
    invoke-virtual {v7, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    .line 121
    invoke-virtual {v7, v4, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 122
    iget-object v8, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_completedRecordIds:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 126
    :cond_4
    :goto_2
    iget v1, p0, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->_statusCode:I

    if-eqz v1, :cond_5

    .line 127
    const-string v1, "Set media title failed\n(%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    return-void

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForSetMediaTitle;->cancel()Z

    .line 81
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void
.end method
