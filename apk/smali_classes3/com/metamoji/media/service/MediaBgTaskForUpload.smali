.class public Lcom/metamoji/media/service/MediaBgTaskForUpload;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForUpload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForUpload$IMediaBgTaskForUploadCompleteAction;
    }
.end annotation


# instance fields
.field _completeAction:Lcom/metamoji/media/service/MediaBgTaskForUpload$IMediaBgTaskForUploadCompleteAction;

.field private _date:Ljava/util/Date;

.field private _driveId:Ljava/lang/String;

.field private _isMediaId:Z

.field private _nickname:Ljava/lang/String;

.field private _roomId:Ljava/lang/String;

.field private _shareFile:Ljava/lang/String;

.field _statusCode:I

.field private _targetId:Ljava/lang/String;

.field private _ticket:Ljava/lang/String;

.field private _title:Ljava/lang/String;

.field _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForUpload$IMediaBgTaskForUploadCompleteAction;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    .line 67
    iput-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForUpload$IMediaBgTaskForUploadCompleteAction;

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_statusCode:I

    const/4 p1, 0x0

    .line 69
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_displayWaitView:Z

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getIsMediaId()Z
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_isMediaId:Z

    return v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareFile()Ljava/lang/String;
    .locals 1

    .line 29
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_shareFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_targetId:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 33
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_title:Ljava/lang/String;

    return-object v0
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 1

    .line 190
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    .line 192
    iget-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForUpload$IMediaBgTaskForUploadCompleteAction;

    iget p2, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_statusCode:I

    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_ticket:Ljava/lang/String;

    invoke-interface {p1, p2, v0}, Lcom/metamoji/media/service/MediaBgTaskForUpload$IMediaBgTaskForUploadCompleteAction;->action(ILjava/lang/String;)V

    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_date:Ljava/util/Date;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_driveId:Ljava/lang/String;

    return-void
.end method

.method public setIsMediaId(Z)V
    .locals 0

    .line 62
    iput-boolean p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_isMediaId:Z

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_nickname:Ljava/lang/String;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_roomId:Ljava/lang/String;

    return-void
.end method

.method public setShareFile(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_shareFile:Ljava/lang/String;

    return-void
.end method

.method public setTargetId(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_targetId:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_ticket:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_title:Ljava/lang/String;

    return-void
.end method

.method protected taskExec()V
    .locals 8

    .line 77
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_shareFile:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 82
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_displayWaitView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 84
    sget v2, Lcom/metamoji/noteanytime/R$string;->PostGallery_Requesting:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 85
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 88
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->getCabinetUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 94
    :cond_2
    new-instance v2, Lcom/metamoji/media/service/MediaTentativeRegist;

    invoke-direct {v2, p0}, Lcom/metamoji/media/service/MediaTentativeRegist;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 95
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_shareFile:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaTentativeRegist;->setShareFile(Ljava/lang/String;)V

    .line 96
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaTentativeRegist;->setTitle(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_roomId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaTentativeRegist;->setRoomId(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_driveId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaTentativeRegist;->setDriveId(Ljava/lang/String;)V

    .line 99
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_nickname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaTentativeRegist;->setNickname(Ljava/lang/String;)V

    .line 100
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_date:Ljava/util/Date;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaTentativeRegist;->setDate(Ljava/util/Date;)V

    .line 101
    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_targetId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaTentativeRegist;->setTargetId(Ljava/lang/String;)V

    .line 102
    iget-boolean v3, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_isMediaId:Z

    invoke-virtual {v2, v3}, Lcom/metamoji/media/service/MediaTentativeRegist;->setIsMediaId(Z)V

    .line 103
    invoke-virtual {v2, v0}, Lcom/metamoji/media/service/MediaTentativeRegist;->setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    .line 107
    :try_start_0
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaTentativeRegist;->responseStringFromRequest()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v2, :cond_3

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->cancel()Z

    return-void

    .line 123
    :cond_3
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "[MMJMediaBgTaskForUploadMedia] response\n%s"

    invoke-static {v4, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v3, 0x2c

    .line 126
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    const/4 v6, 0x0

    .line 127
    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_statusCode:I

    .line 131
    const-string v7, "%s\n(%s)"

    if-eqz v5, :cond_4

    .line 132
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->cancel()Z

    .line 133
    sget v0, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    .line 138
    :cond_4
    new-instance v2, Lcom/metamoji/media/service/MediaUpload;

    invoke-direct {v2, p0}, Lcom/metamoji/media/service/MediaUpload;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 139
    iget-object v5, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_shareFile:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/metamoji/media/service/MediaUpload;->setShareFile(Ljava/lang/String;)V

    .line 140
    iget-object v5, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_targetId:Ljava/lang/String;

    invoke-virtual {v2, v5}, Lcom/metamoji/media/service/MediaUpload;->setTargetId(Ljava/lang/String;)V

    .line 141
    iget-boolean v5, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_isMediaId:Z

    invoke-virtual {v2, v5}, Lcom/metamoji/media/service/MediaUpload;->setIsMediaId(Z)V

    .line 142
    invoke-virtual {v2, v0}, Lcom/metamoji/media/service/MediaUpload;->setUserInfo(Lcom/metamoji/cs/dc/user/CsDCUserInfo;)V

    .line 145
    :try_start_1
    invoke-virtual {v2}, Lcom/metamoji/media/service/MediaUpload;->responseStringFromRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v0, :cond_5

    .line 153
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->cancel()Z

    return-void

    .line 164
    :cond_5
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    const-string v2, "\r\n|\r|\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 168
    array-length v4, v2

    const/4 v5, 0x2

    if-lt v4, v5, :cond_7

    array-length v4, v2

    sub-int/2addr v4, v5

    aget-object v4, v2, v4

    const-string v5, "finish"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    .line 172
    :cond_6
    array-length v4, v2

    sub-int/2addr v4, v1

    aget-object v1, v2, v4

    .line 174
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 175
    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 176
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/metamoji/media/service/MediaBgTaskForUpload;->_statusCode:I

    if-eqz v1, :cond_7

    .line 180
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    .line 147
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->cancel()Z

    .line 148
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    :catch_1
    move-exception v0

    .line 109
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForUpload;->cancel()Z

    .line 110
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method
