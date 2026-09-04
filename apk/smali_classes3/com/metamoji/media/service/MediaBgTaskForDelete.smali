.class public Lcom/metamoji/media/service/MediaBgTaskForDelete;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForDelete.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;

.field private _isMediaId:Z

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
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    const/4 p1, 0x0

    .line 37
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_result:Z

    .line 38
    iput-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;

    return-void
.end method


# virtual methods
.method public getIsMediaId()Z
    .locals 1

    .line 31
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_isMediaId:Z

    return v0
.end method

.method public getTargetIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_targetIds:Ljava/util/List;

    return-object v0
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 0

    .line 121
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    .line 124
    iget-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;

    if-eqz p1, :cond_0

    .line 125
    iget-boolean p2, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_result:Z

    invoke-interface {p1, p2}, Lcom/metamoji/media/service/MediaBgTaskForDelete$IMediaBgTaskForDeleteCompleteAction;->action(Z)V

    :cond_0
    return-void
.end method

.method public setIsMediaId(Z)V
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_isMediaId:Z

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

    .line 28
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_targetIds:Ljava/util/List;

    return-void
.end method

.method protected taskExec()V
    .locals 9

    .line 47
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_targetIds:Ljava/util/List;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 52
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_displayWaitView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 53
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForDelete;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 54
    sget v2, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_DELETING_OFFLINE_EDIT:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 55
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForDelete;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 64
    :cond_2
    new-instance v2, Lcom/metamoji/media/service/MediaDelete;

    invoke-direct {v2, p0}, Lcom/metamoji/media/service/MediaDelete;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 65
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_targetIds:Ljava/util/List;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaDelete;->setTargetIds(Ljava/util/List;)V

    .line 66
    iget-boolean v3, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_isMediaId:Z

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaDelete;->setIsMediaId(Z)V

    .line 67
    invoke-virtual {v2, v0}, Lcom/metamoji/media/service/MediaDelete;->setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    .line 71
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaDelete;->responseStringFromRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    .line 79
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForDelete;->cancel()Z

    return-void

    .line 87
    :cond_3
    const-string v2, "[MMJMediaBgTaskForDelete] response\n%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    const-string v2, "\r\n|\r|\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 92
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_6

    aget-object v7, v2, v5

    if-eqz v6, :cond_4

    const/16 v2, 0x2c

    .line 95
    invoke-virtual {v7, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 96
    invoke-virtual {v7, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    goto :goto_1

    .line 101
    :cond_4
    const-string v8, "finish"

    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    move v6, v1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v2, -0x1

    :goto_1
    if-eqz v2, :cond_7

    const/16 v3, 0x383

    if-eq v2, v3, :cond_7

    .line 108
    const-string v1, "Delete media failed\n(%s)"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 112
    :cond_7
    iput-boolean v1, p0, Lcom/metamoji/media/service/MediaBgTaskForDelete;->_result:Z

    return-void

    :catch_0
    move-exception v0

    .line 73
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForDelete;->cancel()Z

    .line 74
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void
.end method
