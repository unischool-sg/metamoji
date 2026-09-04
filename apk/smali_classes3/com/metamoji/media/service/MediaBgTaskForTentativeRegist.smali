.class public Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;
.super Lcom/metamoji/media/service/MediaBgTask;
.source "MediaBgTaskForTentativeRegist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist$IMediaBgTaskForTentativeRegistCompleteAction;
    }
.end annotation


# instance fields
.field private _completeAction:Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist$IMediaBgTaskForTentativeRegistCompleteAction;

.field private _date:Ljava/util/Date;

.field private _driveId:Ljava/lang/String;

.field private _nickname:Ljava/lang/String;

.field private _recordId:Ljava/lang/String;

.field private _roomId:Ljava/lang/String;

.field private _shareFile:Ljava/lang/String;

.field _statusCode:I

.field private _ticket:Ljava/lang/String;

.field private _title:Ljava/lang/String;

.field private _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist$IMediaBgTaskForTentativeRegistCompleteAction;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaBgTask;-><init>(Lcom/metamoji/media/service/MediaBgTask$IMediaAction;)V

    .line 61
    iput-object p2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist$IMediaBgTaskForTentativeRegistCompleteAction;

    const/4 p1, -0x1

    .line 62
    iput p1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_statusCode:I

    return-void
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_date:Ljava/util/Date;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_nickname:Ljava/lang/String;

    return-object v0
.end method

.method public getRoomId()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_roomId:Ljava/lang/String;

    return-object v0
.end method

.method public getShareFile()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_shareFile:Ljava/lang/String;

    return-object v0
.end method

.method public getTicket()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_ticket:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_title:Ljava/lang/String;

    return-object v0
.end method

.method protected onCompleted(ZLjava/lang/Throwable;)V
    .locals 6

    .line 143
    invoke-super {p0, p1, p2}, Lcom/metamoji/media/service/MediaBgTask;->onCompleted(ZLjava/lang/Throwable;)V

    if-eqz p1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_completeAction:Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist$IMediaBgTaskForTentativeRegistCompleteAction;

    iget v1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_statusCode:I

    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_ticket:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_shareFile:Ljava/lang/String;

    iget-object v4, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_recordId:Ljava/lang/String;

    iget-object v5, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_url:Ljava/lang/String;

    invoke-interface/range {v0 .. v5}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist$IMediaBgTaskForTentativeRegistCompleteAction;->action(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setDate(Ljava/util/Date;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_date:Ljava/util/Date;

    return-void
.end method

.method public setDriveId(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_driveId:Ljava/lang/String;

    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_nickname:Ljava/lang/String;

    return-void
.end method

.method public setRoomId(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_roomId:Ljava/lang/String;

    return-void
.end method

.method public setShareFile(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_shareFile:Ljava/lang/String;

    return-void
.end method

.method public setTicket(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_ticket:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 36
    iput-object p1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_title:Ljava/lang/String;

    return-void
.end method

.method protected taskExec()V
    .locals 5

    .line 71
    iget-object v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_shareFile:Ljava/lang/String;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 76
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_displayWaitView:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 77
    invoke-virtual {p0}, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->getWaitView()Lcom/metamoji/ns/ui/NsCollaboWaitView;

    move-result-object v0

    .line 78
    sget v2, Lcom/metamoji/noteanytime/R$string;->PostGallery_Requesting:I

    invoke-virtual {v0, v2}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->setMessage(I)V

    .line 79
    invoke-virtual {v0, v1}, Lcom/metamoji/ns/ui/NsCollaboWaitView;->cancelable(Z)V

    .line 82
    :cond_1
    new-instance v0, Lcom/metamoji/media/service/MediaTentativeRegist;

    invoke-direct {v0, p0}, Lcom/metamoji/media/service/MediaTentativeRegist;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    .line 83
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_shareFile:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaTentativeRegist;->setShareFile(Ljava/lang/String;)V

    .line 84
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_title:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaTentativeRegist;->setTitle(Ljava/lang/String;)V

    .line 85
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_roomId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaTentativeRegist;->setRoomId(Ljava/lang/String;)V

    .line 86
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_driveId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaTentativeRegist;->setDriveId(Ljava/lang/String;)V

    .line 87
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_nickname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaTentativeRegist;->setNickname(Ljava/lang/String;)V

    .line 88
    iget-object v2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_date:Ljava/util/Date;

    invoke-virtual {v0, v2}, Lcom/metamoji/media/service/MediaTentativeRegist;->setDate(Ljava/util/Date;)V

    .line 92
    :try_start_0
    invoke-virtual {v0}, Lcom/metamoji/media/service/MediaTentativeRegist;->responseStringFromRequest()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    const-string v2, "[MMJMediaBgTaskForTentativeRegistMedia] response\n%s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 112
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%s\n(%s)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    return-void

    :cond_3
    const/16 v2, 0x2c

    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    const/4 v3, 0x0

    .line 118
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_statusCode:I

    .line 121
    const-string v2, "\r\n|\r|\n"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 125
    array-length v4, v0

    if-lt v4, v2, :cond_4

    .line 126
    aget-object v1, v0, v1

    goto :goto_0

    :cond_4
    move-object v1, v3

    .line 128
    :goto_0
    iput-object v1, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_recordId:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 131
    array-length v1, v0

    const/4 v4, 0x3

    if-lt v1, v4, :cond_5

    .line 132
    aget-object v3, v0, v2

    .line 134
    :cond_5
    iput-object v3, p0, Lcom/metamoji/media/service/MediaBgTaskForTentativeRegist;->_url:Ljava/lang/String;

    return-void

    :catch_0
    move-exception v0

    .line 95
    sget v1, Lcom/metamoji/noteanytime/R$string;->PostGallery_Msg_Failed:I

    invoke-static {v0, v1}, Lcom/metamoji/media/service/MediaServiceUtil;->messageWithException(Ljava/lang/Exception;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method
